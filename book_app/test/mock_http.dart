import 'dart:convert';
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
    return http.Response(jsonEncode(respBody), 200);
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
            "bookNm": "도서명#1",
            "assetNo": "관리번호#1",
            "publisher": "출판사#1",
          },
          {
            "seq": 2,
            "bookNm": "도서명#2",
            "assetNo": "관리번호#2",
            "publisher": "출판사#2",
          },
          {
            "seq": 3,
            "bookNm": "도서명#3",
            "assetNo": "관리번호#3",
            "publisher": "출판사#3",
          },
          {
            "seq": 4,
            "bookNm": "도서명#4",
            "assetNo": "관리번호#4",
            "publisher": "출판사#4",
          },
          {
            "seq": 5,
            "bookNm": "도서명#5",
            "assetNo": "관리번호#5",
            "publisher": "출판사#5",
          },
        ],
      };
    } else if (keyword == "키워드") {
      respBody = {
        "isSuccess": true,
        "data": [
          {
            "seq": 1,
            "bookNm": "키워드#1",
            "assetNo": "관리번호#1",
            "publisher": "출판사#1",
          },
          {
            "seq": 2,
            "bookNm": "키워드#2",
            "assetNo": "관리번호#2",
            "publisher": "출판사#2",
          },
          {
            "seq": 3,
            "bookNm": "키워드#3",
            "assetNo": "관리번호#3",
            "publisher": "출판사#3",
          },
        ],
      };
    } else if (keyword == "연구소-B-0249") {
      respBody = {
        "isSuccess": true,
        "data": [
          {
            "seq": 1,
            "bookNm": "관리번호 도서 검색",
            "assetNo": "연구소-B-0249",
            "publisher": "출판사",
          },
        ],
      };
    }

    return http.Response(jsonEncode(respBody), 200);
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

    return http.Response(jsonEncode(respBody), 200);
  }
}
