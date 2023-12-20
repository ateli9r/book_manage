import 'dart:convert';
import 'dart:io';
import 'package:mockito/mockito.dart';
import 'package:http/http.dart' as http;

class LoginMockClient extends Mock implements http.Client {
  @override
  Future<http.Response> post(Uri url,
      {Map<String, String>? headers, Object? body, Encoding? encoding}) async {
    final reqData = jsonDecode(body as String) as Map;

    Map? respBody;
    if (reqData["userId"] == "wschoi" && reqData["password"] == "1111") {
      respBody = {"isSuccess": true};
    } else {
      respBody = {"isSuccess": false};
    }
    return http.Response(jsonEncode(respBody), 200, headers: {
      HttpHeaders.contentTypeHeader: 'application/json; charset=utf-8'
    });
  }
}

class BookListMockClient extends Mock implements http.Client {
  @override
  Future<http.Response> post(Uri url,
      {Map<String, String>? headers, Object? body, Encoding? encoding}) async {
    final reqData = jsonDecode(body as String) as Map<String, dynamic>;

    final keyword = reqData["keyword"] as String;

    Map? respBody;

    if (keyword.isEmpty) {
      respBody = {
        "isSuccess": true,
        "data": [
          {
            "seq": 1,
            "bookNm": "book_name#1",
            "assetNo": "asset_no#1",
            "publisher": "publisher#1",
          },
          {
            "seq": 2,
            "bookNm": "book_name#2",
            "assetNo": "asset_no#2",
            "publisher": "publisher#2",
          },
          {
            "seq": 3,
            "bookNm": "book_name#3",
            "assetNo": "asset_no#3",
            "publisher": "publisher#3",
          },
          {
            "seq": 4,
            "bookNm": "book_name#4",
            "assetNo": "asset_no#4",
            "publisher": "publisher#4",
          },
          {
            "seq": 5,
            "bookNm": "book_name#5",
            "assetNo": "asset_no#5",
            "publisher": "publisher#5",
          },
        ],
      };
    } else if (keyword == "keyword") {
      respBody = {
        "isSuccess": true,
        "data": [
          {
            "seq": 1,
            "bookNm": "keyword#1",
            "assetNo": "asset_no#1",
            "publisher": "publisher#1",
          },
          {
            "seq": 2,
            "bookNm": "keyword#2",
            "assetNo": "asset_no#2",
            "publisher": "publisher#2",
          },
          {
            "seq": 3,
            "bookNm": "keyword#3",
            "assetNo": "asset_no#3",
            "publisher": "publisher#3",
          },
        ],
      };
    } else if (keyword == "asset_no") {
      respBody = {
        "isSuccess": true,
        "data": [
          {
            "seq": 1,
            "bookNm": "book_name",
            "assetNo": "asset_no",
            "publisher": "publisher",
          },
        ],
      };
    }

    return http.Response(jsonEncode(respBody), 200, headers: {
      HttpHeaders.contentTypeHeader: 'application/json; charset=utf-8'
    });
  }
}

class BookRentMockClient extends Mock implements http.Client {
  @override
  Future<http.Response> post(Uri url,
      {Map<String, String>? headers, Object? body, Encoding? encoding}) async {
    final reqData = jsonDecode(body as String) as Map;

    final userId = reqData["userId"] as String;
    final assetNo = reqData["assetNo"] as String;
    final reqCode = reqData["reqCode"] as String;

    Map? respBody;

    if (reqCode == "rent") {
      // 대출
      if (assetNo == "not_allowed_asset_no") {
        // 대출 불가 (이중대출, 대출불가 도서 등)
        respBody = {"isSuccess": false};
      } else {
        // 대출 가능
        respBody = {"isSuccess": true};
      }
    } else if (reqCode == "return") {
      // 반납
      if (userId == "rent_user" && assetNo == "rented_asset_no") {
        // 반납 가능 조건 (도서를 대출한 아이디)
        respBody = {"isSuccess": true};
      } else {
        // 반납 불가
        respBody = {"isSuccess": false};
      }
    }

    return http.Response(jsonEncode(respBody), 200, headers: {
      HttpHeaders.contentTypeHeader: 'application/json; charset=utf-8'
    });
  }
}
