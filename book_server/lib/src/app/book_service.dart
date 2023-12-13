import 'package:book_server/src/app/book_database.dart';
import 'package:book_server/src/app/book_domain.dart';
import 'package:book_server/src/generated/prisma/prisma_client.dart';
import 'package:orm/logger.dart';
import 'dart:convert';
import 'dart:typed_data';
import 'package:crypto/crypto.dart';

///
class BookService {
  ///
  factory BookService() {
    return _instance;
  }

  BookService._privateConstructor();
  static final BookService _instance = BookService._privateConstructor();

  // UserService._privateConstructor();
  // static final UserService _instance = UserService._privateConstructor();

  String encryptPassword(String userId, String password) {
    final bufferId = utf8.encode(userId);
    final bufferPw = utf8.encode(password);

    final data = Uint8List(bufferId.length + bufferPw.length)
      ..setAll(0, bufferId)
      ..setAll(bufferId.length, bufferPw);

    return base64.encode(sha256.convert(data).bytes);
  }

  Future<bool> signIn(String userId, String password) async {
    final passwordHash = encryptPassword(userId, password);

    final database = BookDatabase();
    final items = await database.findMngrSignIn(userId, passwordHash);

    return items != null && items.length == 1;
  }

  Future<List<Book>> search(String keyword) async {
    final ret = <Book>[];
    final database = BookDatabase();
    final items = await database.findBookAsset(keyword);

    items?.forEach((item) {
      if (item.bookNm == null) return;

      var book = Book(
        bookNm: item.bookNm!,
        assetNo: item.assetNo,
        publisher: item.publisher ?? '',
      );

      ret.add(book);
    });
    return ret;
  }
}
