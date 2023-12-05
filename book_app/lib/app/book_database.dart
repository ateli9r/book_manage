import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:book_app/app/book.dart';

class BookDatabase {
  BookDatabase({required this.client});
  final http.Client client;

  Future<List<Book>> search(String keyword) async {
    final data = Future.sync(() async {
      List<Book> ret = [];

      try {
        final response = await client.post(
          Uri.parse('http://192.168.0.146:8080/search'),
          headers: {
            'Content-Type': 'application/json',
          },
          body: jsonEncode({
            'keyword': keyword,
          }),
        );

        final resp = jsonDecode(utf8.decode(response.bodyBytes)) as Map;

        if (resp['isSuccess'] as bool == true) {
          final mapList = resp['data'] as List;
          ret.addAll(mapList.map((map) {
            return Book(
              assetNo: map['assetNo'],
              bookNm: map['bookNm'],
              publisher: map['publisher'],
            );
          }));
        }
      } finally {}

      return ret;
    });

    return data;
  }
}
