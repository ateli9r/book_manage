import 'dart:convert';
import 'dart:typed_data';

import 'package:book_server/src/app/book_database.dart';
import 'package:book_server/src/app/book_domain.dart';
import 'package:crypto/crypto.dart';

/// 도서 서비스
class BookService {
  /// 생성자
  factory BookService() {
    return _instance;
  }

  BookService._privateConstructor();
  static final BookService _instance = BookService._privateConstructor();

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
    final items = await BookDatabase().findMngrSignIn(userId, passwordHash);

    return items != null && items.length == 1;
  }

  /// 도서 목록 조회
  Future<List<Book>> search(String keyword) async {
    final ret = <Book>[];
    final items = await BookDatabase().findBookAsset(keyword);

    items?.forEach((item) {
      if (item.bookNm == null) return;

      var book = Book(
        seq: item.seq.toInt(),
        bookNm: item.bookNm!,
        assetNo: item.assetNo,
        publisher: item.publisher ?? '',
      );

      ret.add(book);
    });
    return ret;
  }

  /// 도서 상세 조회
  Future<Book?> detail(String assetNo) async {
    final items = await BookDatabase().findBookAsset(assetNo);
    if (items == null) return null;
    if (items.isEmpty) return null;

    final item = items[0];
    return Book(
      seq: item.seq.toInt(),
      bookNm: item.bookNm!,
      assetNo: item.assetNo,
      publisher: item.publisher ?? '',
      rentYn: item.rentYn,
      rentUser: item.rentUser,
    );
  }

  /// 도서 대출/반납
  Future<bool> rent(Book book) async {
    return BookDatabase().updateBookRent(book);
  }
}
