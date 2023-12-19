import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:book_app/model/domain/book_domain.dart';

class BookDatabase {
  BookDatabase({required this.client});
  final http.Client client;

  Future<Map?> login({required String userId, required String password}) async {
    Map<String, Object> ret = {};
    ret["isSuccess"] = false;

    final response = await client.post(
      Uri.parse('http://192.168.0.146:8080/login'),
      headers: {
        'Content-Type': 'application/json',
      },
      body: jsonEncode({'userId': userId, 'password': password}),
    );

    final respData = jsonDecode(utf8.decode(response.bodyBytes)) as Map;

    ret["isSuccess"] = respData['isSuccess'];

    return ret;
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
              seq: map['seq'],
              assetNo: map['assetNo'],
              bookNm: map['bookNm'],
              publisher: map['publisher'],
              rentYn: map['rentYn'],
              rentUser: map['rentUser'],
            );
          }));
        }
      } finally {}

      return ret;
    });

    return data;
  }
}
