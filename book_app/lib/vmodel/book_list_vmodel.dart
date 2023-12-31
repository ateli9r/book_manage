import 'package:book_app/service/status_service.dart';
import 'package:flutter/material.dart';
import 'package:book_app/vmodel/base_vmodel.dart';
import '../service/data_service.dart';
import '../model/book_model.dart';
import '../view/book_detail_view.dart';
import '../view/scan_view.dart';
import 'book_rent_vmodel.dart';

class BookListVModel extends BaseVModel {
  BookListVModel({super.client});

  String keyword = "";
  final keywordText = TextEditingController();

  /// 키워드 설정
  void setKeyword(String text) {
    if (setState != null) {
      setState!(() {
        keyword = text;
      });
    } else {
      keyword = text;
    }
    keywordText.text = text;

    status = VModelStatus.idle;
  }

  /// 도서 목록 조회
  Future<List<BookModel>> getBookList() async {
    final db = DataService(client: client);
    final data = await db.search(keyword);
    return data;
  }

  /// 검색어 입력
  void onChangedKeyword(String value) {
    setKeyword(value);
  }

  /// QR스캔
  void onPressedFindByQrcode() {
    if (context != null) {
      Navigator.of(context!).push(
        MaterialPageRoute(
            builder: (context) => ScanPageWidget(setScanCode: setKeyword)),
      );
    }
    status = VModelStatus.push;
  }

  /// 초기화
  void onPressedClearKeyword() {
    setKeyword('');
  }

  /// 상세 조회 페이지로 이동
  void onTapItem(String assetNo) async {
    final service = DataService(client: client);
    final data = await service.search(assetNo);

    Navigator.of(context!).push(
      MaterialPageRoute(
        builder: (context) => BookDetailWidget(
          book: data[0],
          viewModel: BookRentVModel(
            targetAssetNo: data[0].assetNo,
            targetUserId: data[0].rentUser,
          ),
        ),
      ),
    );
  }
}
