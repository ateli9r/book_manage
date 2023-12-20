import 'dart:convert';
import 'dart:typed_data';

import 'package:book_server/src/model/book_model.dart';
import 'package:book_server/src/service/data_controller.dart';
import 'package:crypto/crypto.dart';

/// 데이터 서비스
class DataService {
  /// 생성자
  factory DataService() {
    return _instance;
  }

  DataService._privateConstructor();
  static final DataService _instance = DataService._privateConstructor();

  /// 비밀번호 해시 생성
  String encryptPassword(String userId, String password) {
    final bufferId = utf8.encode(userId);
    final bufferPw = utf8.encode(password);

    final data = Uint8List(bufferId.length + bufferPw.length)
      ..setAll(0, bufferId)
      ..setAll(bufferId.length, bufferPw);

    return base64.encode(sha256.convert(data).bytes);
  }

  /// 로그인
  Future<bool> signIn(String userId, String password) async {
    final passwordHash = encryptPassword(userId, password);
    final items = await DataController().findMngrSignIn(userId, passwordHash);

    return items != null && items.length == 1;
  }

  /// 도서 목록 조회
  Future<List<BookModel>> search(String keyword) async {
    final ret = <BookModel>[];
    final items = await DataController().findBookAsset(keyword);

    items?.forEach((item) {
      if (item.bookNm == null) return;

      ret.add(
        BookModel(
          seq: item.seq.toInt(),
          bookNm: item.bookNm!,
          assetNo: item.assetNo,
          publisher: item.publisher ?? '',
          rentYn: item.rentYn,
          rentUser: item.rentUser,
        ),
      );
    });
    return ret;
  }

  /// 도서 상세 조회
  Future<BookModel?> detail(String assetNo) async {
    final items = await DataController().findBookAsset(assetNo);
    if (items == null) return null;
    if (items.isEmpty) return null;

    final item = items[0];
    return BookModel(
      seq: item.seq.toInt(),
      bookNm: item.bookNm!,
      assetNo: item.assetNo,
      publisher: item.publisher ?? '',
      rentYn: item.rentYn,
      rentUser: item.rentUser,
    );
  }

  /// 도서 대출/반납
  Future<bool> rent(BookModel book) async {
    return DataController().updateBookRent(book);
  }
}
