import 'package:book_server/src/app/book_database.dart';
import 'package:book_server/src/app/book_domain.dart';
import 'package:book_server/src/generated/prisma/prisma_client.dart';
import 'package:orm/logger.dart';

///
class BookService {
  ///
  factory BookService() {
    return _instance;
  }

  BookService._privateConstructor();
  static final BookService _instance = BookService._privateConstructor();

  Future<List<Book>> search(String keyword) async {
    final ret = <Book>[];
    final database = BookDatabase();
    final items = await database.search(keyword);

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
