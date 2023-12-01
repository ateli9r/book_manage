import 'book.dart';

class BookService {
  Future<List<Book>> search(String keyword) async {
    return await Future.delayed(const Duration(seconds: 1)).then((resp) {
      return [];
    });
  }
}
