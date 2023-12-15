import 'package:book_server/src/app/book_service.dart';
import 'package:dart_frog/dart_frog.dart';

Future<Response> onRequest(RequestContext context) async {
  final ret = <String, dynamic>{};
  ret['isSuccess'] = false;

  final request = context.request;
  if (request.method.value == 'POST' &&
      request.headers['Content-Type']!.startsWith('application/json')) {
    final body = await request.json();

    final userId = body['userId'] as String;
    final assetNo = body['assetNo'] as String;
    final reqCode = body['reqCode'] as String;

    final book = await BookService().detail(assetNo);
    if (book == null) return Response.json(body: ret);

    if (reqCode == 'rent') {
      // 이중 대출은 되지 않음
      if (book.rentYn == 'N') {
        book
          ..rentYn = 'Y'
          ..rentUser = userId;

        ret['isSuccess'] = await BookService().rent(book);
      }
    } else if (reqCode == 'return') {
      // 대출하지 않은 책은 반납 할 수 없음
      if (book.rentYn == 'Y' && book.rentUser == userId) {
        book
          ..rentYn = 'N'
          ..rentUser = '';

        ret['isSuccess'] = await BookService().rent(book);
      }
    }
  }

  return Response.json(body: ret);
}
