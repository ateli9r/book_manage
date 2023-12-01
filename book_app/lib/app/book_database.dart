import 'package:http/http.dart' as http;
import 'package:book_app/app/book.dart';

class BookDatabase {
  Future<List<Book>> search(String keyword) async {
    final data = Future.delayed(const Duration(seconds: 1)).then((resp) {
      List<Book> ret = [];
      return ret;
    });
    // return data;
    // print(data);
    return data;
  }
}
