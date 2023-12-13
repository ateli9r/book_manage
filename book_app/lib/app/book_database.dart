import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:book_app/app/book.dart';

class BookDatabase {
  BookDatabase({required this.client});
  final http.Client client;

  Future<Map?> login({required String userId, required String password}) async {
    final data = Future.sync(() async {
      Map<String, Object> ret = {};
      ret["isSuccess"] = false;

      try {
        final response = await client.post(
          Uri.parse('http://192.168.0.146:8080/login'),
          headers: {
            'Content-Type': 'application/json',
          },
          body: jsonEncode({'userId': userId, 'password': password}),
        );

        final respData = jsonDecode(utf8.decode(response.bodyBytes)) as Map;

        ret["isSuccess"] = respData['isSuccess'];
      } finally {}

      return ret;
    });

    return data;
  }

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
