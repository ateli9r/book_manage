@TestOn('vm')

import 'dart:convert';
import 'package:test/test.dart';
import 'package:mockito/mockito.dart';
import 'package:http/http.dart' as http;
import 'mock_http.dart';
import 'package:book_app/%08vmodel/login_vmodel.dart';
import 'package:book_app/%08vmodel/book_list_vmodel.dart';
import 'package:book_app/%08vmodel/book_rent_vmodel.dart';

void main() {
  group('로그인 모델 테스트', () {
    http.Client client = LoginMockClient();

    test('아이디/패스워드 미입력', () async {
      final model = LoginVModel(client: client);

      await Future.sync(() => {model.onPressedLogin()});

      expect(model.userInfo, isNull);
      expect(model.status, LoginModelStatus.error);
    });

    test('로그인 실패', () async {
      final model = LoginVModel(client: client);
      model
        ..userId = 'not_found'
        ..password = '1234';

      await Future.sync(() => {model.onPressedLogin()});

      expect(model.userInfo, isNull);
      expect(model.status, LoginModelStatus.error);
    });

    test('로그인 성공', () async {
      final model = LoginVModel(client: client);
      model
        ..userId = 'wschoi'
        ..password = '1111';

      await Future.sync(() => {model.onPressedLogin()});

      expect(model.userInfo, isNotNull);
      expect(model.status, LoginModelStatus.ok);
    });
  });

  group('도서 조회 모델 테스트', () {
    http.Client client = BookListMockClient();

    test('도서 전체 조회', () async {
      final model = BookListVModel(client: client);

      throw Exception('no impl');
    });

    test('도서 키워드 조회', () async {
      final model = BookListVModel(client: client);

      throw Exception('no impl');
    });

    test('도서 관리번호 조회', () async {
      final model = BookListVModel(client: client);

      throw Exception('no impl');
    });
  });

  group('도서 대출 모델 테스트', () {
    http.Client client = BookRentMockClient();

    test('도서 대출', () async {
      final model = BookRentVModel(client: client);

      throw Exception('no impl');
    });

    test('도서 반납', () async {
      final model = BookRentVModel(client: client);

      throw Exception('no impl');
    });
  });
}
