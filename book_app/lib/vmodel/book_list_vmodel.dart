import 'dart:convert';
import 'package:http/http.dart' as http;
import '../model/book_model.dart';

enum BookListVModelStatus { idle, error, ok }

class BookListVModel {
  BookListVModel({this.client});

  http.Client? client;

  BookListVModelStatus status = BookListVModelStatus.idle;

  // Future<List<BookModel>> search(String keyword) async {
  //   final data = Future.sync(() async {
  //     List<BookModel> ret = [];

  //     try {
  //       final response = await client.post(
  //         Uri.parse('http://192.168.0.146:8080/search'),
  //         headers: {
  //           'Content-Type': 'application/json',
  //         },
  //         body: jsonEncode({
  //           'keyword': keyword,
  //         }),
  //       );

  //       final resp = jsonDecode(utf8.decode(response.bodyBytes)) as Map;

  //       if (resp['isSuccess'] as bool == true) {
  //         final mapList = resp['data'] as List;
  //         ret.addAll(mapList.map((map) {
  //           return BookModel(
  //             seq: map['seq'],
  //             assetNo: map['assetNo'],
  //             bookNm: map['bookNm'],
  //             publisher: map['publisher'],
  //             rentYn: map['rentYn'],
  //             rentUser: map['rentUser'],
  //           );
  //         }));
  //       }
  //     } finally {}

  //     return ret;
  //   });

  //   return data;
  // }
}
