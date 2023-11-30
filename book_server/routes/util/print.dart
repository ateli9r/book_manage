import 'dart:io';
import 'dart:typed_data';

import 'package:barcode_image/barcode_image.dart';
import 'package:book_server/src/app/book_domain.dart';
import 'package:book_server/src/app/book_service.dart';
import 'package:dart_frog/dart_frog.dart';
import 'package:image/image.dart';
import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as pw;

// https://pub.dev/packages/image
// https://pub.dev/packages/barcode_image
// https://pub.dev/packages/pdf

const basePath = 'public/print';
const fontPath = '/Library/Fonts/NanumGothicCoding.ttf';

final Uint8List fontData = File(fontPath).readAsBytesSync();
final fontTTF = pw.Font.ttf(fontData.buffer.asByteData());

void createQrCodeImage({
  required String fileName,
  required String text,
  int szImage = 150,
}) {
  final path = '$basePath/$fileName';
  final image = Image(width: szImage, height: szImage);

  fill(image, color: ColorRgb8(255, 255, 255));
  drawBarcode(image, Barcode.qrCode(), text);
  File(path).writeAsBytesSync(encodePng(image));
}

Future<pw.Page> buildPage(List<Book> listBook) async {
  const szImage = 80.0;
  const szBox = 150.0;
  const szFontAssetNo = 8.0;
  const szFontBookName = 11.0;
  const szFontPublisher = 10.0;

  final listRow = <pw.Widget>[];

  var row = pw.Row(children: []);
  listRow.add(row);

  for (var i = 0; i < listBook.length; i++) {
    final book = listBook[i];
    book
      ..bookNm = book.bookNm.replaceAll(RegExp(r'\&amp;'), '&')
      ..bookNm = book.bookNm.replaceAll(RegExp(r'\&#35;'), '#')
      ..publisher = book.publisher.replaceAll(RegExp(r'\&amp;'), '&');

    row.children.add(
      pw.Image(
        pw.MemoryImage(
          File('$basePath/${book.assetNo}.png').readAsBytesSync(),
        ),
        width: szImage,
        height: szImage,
      ),
    );

    row.children.add(
      pw.Padding(
        padding: const pw.EdgeInsets.only(left: 15, right: 15),
        child: pw.SizedBox(
          width: szBox,
          child: pw.Column(
            crossAxisAlignment: pw.CrossAxisAlignment.start,
            children: [
              pw.Padding(
                padding: const pw.EdgeInsets.only(bottom: 8),
                child: pw.Container(
                  alignment: pw.Alignment.center,
                  child: pw.Text(
                    book.assetNo,
                    style: pw.TextStyle(
                      font: fontTTF,
                      fontSize: 8,
                    ),
                  ),
                ),
              ),
              pw.Text(
                book.bookNm,
                style: pw.TextStyle(
                  font: fontTTF,
                  fontSize: szFontBookName,
                ),
              ),
              pw.Padding(
                padding: const pw.EdgeInsets.only(top: 10),
                child: pw.Container(
                  alignment: pw.Alignment.centerRight,
                  child: pw.Text(
                    book.publisher,
                    style: pw.TextStyle(
                      font: fontTTF,
                      fontSize: szFontPublisher,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );

    if (row.children.length == 4) {
      row = pw.Row(children: []);
      listRow.add(row);
    }
  }

  return pw.Page(
    pageFormat: PdfPageFormat.a4,
    margin: const pw.EdgeInsets.all(30),
    build: (pw.Context context) {
      return pw.ListView(
        children: [
          ...listRow.map(
            (row) => pw.Padding(
              padding: const pw.EdgeInsets.all(15),
              child: row,
            ),
          ),
        ],
      );
    },
  );
}

Future<String> buildPrint() async {
  List<Book> buffer = [];

  final pdf = pw.Document();
  final service = BookService();

  final items = (await service.search('')).where((item) {
    return item.assetNo.startsWith('연구소'); // 관리번호 '연구소'로 시작하는 도서만 필터
  }).toList();

  // 도서코드 14개씩 잘라서 문서 생성
  for (var i = 0; i < items.length; i++) {
    Book book = items[i];
    buffer.add(book);

    createQrCodeImage(
      fileName: '${book.assetNo}.png',
      text: book.assetNo,
    );

    if (buffer.length == 14) {
      pdf.addPage(await buildPage(buffer));
      buffer.clear();
    }
  }

  // 버퍼에 남은 코드가 있다면 다시 요청
  if (buffer.length > 0) {
    pdf.addPage(await buildPage(buffer));
  }

  // pdf 파일 저장
  const fileName = 'book_list.pdf';
  final output = File('$basePath/$fileName');
  await pdf.save().then(output.writeAsBytesSync);

  return '$basePath/$fileName';
}

Future<Response> onRequest(RequestContext context) async {
  final uri = (await buildPrint()).replaceAll(RegExp('public/'), '/');
  return Response.movedPermanently(location: uri);
}
