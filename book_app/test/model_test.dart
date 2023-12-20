@TestOn('vm')

import 'dart:convert';
import 'dart:io';

import 'package:test/test.dart';
import 'package:mockito/mockito.dart';
import 'package:http/http.dart' as http;
import '../lib/view_model/login_model.dart';
import '../lib/view_model/book_list_model.dart';
import '../lib/view_model/book_rent_model.dart';

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

void main() {
  group('로그인 모델 테스트', () {
    http.Client client = LoginMockClient();
    test('아이디/패스워드 미입력', () async {
      final model = LoginModel(client: client);

      await Future.sync(() => {model.onPressedLogin()});

      expect(model.userInfo, isNull);
      expect(model.status, LoginModelStatus.error);
    });

    test('로그인 실패', () async {
      final model = LoginModel(client: client);
      model
        ..userId = 'not_found'
        ..password = '1234';

      await Future.sync(() => {model.onPressedLogin()});

      expect(model.userInfo, isNull);
      expect(model.status, LoginModelStatus.error);
    });

    test('로그인 성공', () async {
      final model = LoginModel(client: client);
      model
        ..userId = 'wschoi'
        ..password = '1111';

      await Future.sync(() => {model.onPressedLogin()});

      expect(model.userInfo, isNotNull);
      expect(model.status, LoginModelStatus.ok);
    });
  });

  group('도서 조회 모델 테스트', () {
    test('도서 전체 조회', () async {
      final model = BookListModel();

      throw Exception('no impl');
    });

    test('도서 키워드 조회', () async {
      final model = BookListModel();

      throw Exception('no impl');
    });

    test('도서 관리번호 조회', () async {
      final model = BookListModel();

      throw Exception('no impl');
    });
  });

  group('도서 대출 모델 테스트', () {
    test('도서 대출', () async {
      final model = BookRentModel();

      throw Exception('no impl');
    });

    test('도서 반납', () async {
      final model = BookRentModel();

      throw Exception('no impl');
    });
  });
}
