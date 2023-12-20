import 'book_database.dart';

import '../model/book_domain.dart';
import 'package:http/http.dart' as http;

class BookService {
  BookService({required this.client});
  final http.Client client;

  Future<Map?> login(String userId, String password) async {
    final database = BookDatabase(client: client);
    return await database.login(userId: userId, password: password);
  }

  Future<List<Book>> search(String keyword) async {
    final database = BookDatabase(client: client);
    return await database.search(keyword);
  }
}
