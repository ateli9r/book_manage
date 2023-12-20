import 'dart:convert';
import 'package:http/http.dart' as http;
import '../model/book_model.dart';

class DataService {
  DataService({this.client});
  http.Client? client;

  final apiHost = 'http://192.168.0.146:8080';
  final headers = {'Content-Type': 'application/json'};

  Future<Map?> login({required String userId, required String password}) async {
    Map<String, Object> ret = {};
    ret["isSuccess"] = false;

    client ??= http.Client();

    final response = await client!.post(
      Uri.parse('$apiHost/login'),
      headers: headers,
      body: jsonEncode({'userId': userId, 'password': password}),
    );

    final respData = jsonDecode(utf8.decode(response.bodyBytes)) as Map;

    ret["isSuccess"] = respData['isSuccess'];

    return ret;
  }

  Future<List<BookModel>> search(String keyword) async {
    final data = Future.sync(() async {
      List<BookModel> ret = [];

      client ??= http.Client();

      final response = await client!.post(
        Uri.parse('$apiHost/search'),
        headers: headers,
        body: jsonEncode({'keyword': keyword}),
      );

      final resp = jsonDecode(utf8.decode(response.bodyBytes)) as Map;

      if (resp['isSuccess'] as bool == true) {
        final mapList = resp['data'] as List;
        ret.addAll(mapList.map((map) {
          return BookModel(
            seq: map['seq'],
            assetNo: map['assetNo'],
            bookNm: map['bookNm'],
            publisher: map['publisher'],
            rentYn: map['rentYn'],
            rentUser: map['rentUser'],
          );
        }));
      }

      return ret;
    });

    return data;
  }
}
