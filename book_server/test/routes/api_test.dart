import 'dart:convert';
import 'dart:io';

import 'package:book_server/src/app/book_domain.dart';
import 'package:test/test.dart';

import '../../routes/login.dart' as route_login;
import '../../routes/rent.dart' as route_rent;
import '../../routes/search.dart' as route_search;
import '../../routes/view.dart' as route_view;
import '_mock.dart';

void main() {
  group(
    '로그인 api',
    () => {
      test('존재하지 않은 아이디로는 로그인 할 수 없음', () async {
        final context = LoginMockRequestContext(
            userId: 'not_exists', password: 'not_exists');

        final response = await route_login.onRequest(context);
        expect(response.statusCode, equals(HttpStatus.ok));

        final respData = await response.json() as Map;
        expect(respData['isSuccess'], equals(false));
      }),
      test('적합한 아이디/패스워드를 입력하면 로그인 성공', () async {
        final context =
            LoginMockRequestContext(userId: 'wschoi', password: '1111');

        final response = await route_login.onRequest(context);
        expect(response.statusCode, equals(HttpStatus.ok));

        final respData = await response.json() as Map;
        expect(respData['isSuccess'], equals(true));
      }),
    },
  );

  group(
    '조회 api',
    () => {
      test('도서목록 전체 조회시 100건 이상의 데이터가 있음', () async {
        final context = SearchMockRequestContext(keyword: '');

        final response = await route_search.onRequest(context);
        expect(response.statusCode, equals(HttpStatus.ok));

        final respData = await response.json() as Map;
        expect(respData['isSuccess'], equals(true));
        expect(respData['data'], isNotNull);
        expect((respData['data'] as List).length, greaterThan(100));
      }),
      test('관리번호로 조회하면 1건만 조회되어야함', () async {
        final context = SearchMockRequestContext(keyword: '연구소-B-0150');

        final response = await route_search.onRequest(context);
        expect(response.statusCode, equals(HttpStatus.ok));

        final respData = await response.json() as Map;
        expect(respData['isSuccess'], equals(true));
        expect(respData['data'], isNotNull);
        expect((respData['data'] as List).length, equals(1));
      }),
      test('게시 불가 도서는 상세조회 되지 않음', () async {
        final context = ViewMockRequestContext(assetNo: '관리-B-0001');

        final response = await route_view.onRequest(context);
        expect(response.statusCode, equals(HttpStatus.ok));

        final respData = await response.json() as Map;
        expect(respData['isSuccess'], equals(false));
      }),
      test('게시 허가 도서는 상세조회 가능함', () async {
        final context = ViewMockRequestContext(assetNo: '관리-B-0005');

        final response = await route_view.onRequest(context);
        expect(response.statusCode, equals(HttpStatus.ok));

        final respData = await response.json() as Map;
        expect(respData['isSuccess'], equals(true));
        expect(respData['data'], isNotNull);
      }),
    },
  );

  group(
    '대출 api',
    () => {
      test('이중 대출은 되지 않음', () async {
        var testStep = 1;
        // 대출 요청
        if (testStep == 1) {
          final context = RentMockRequestContext(
            userId: 'htlee',
            assetNo: '관리-B-0005',
            reqCode: 'rent',
          );

          final response = await route_rent.onRequest(context);
          expect(response.statusCode, equals(HttpStatus.ok));

          final respData = await response.json() as Map;
          expect(respData['isSuccess'], equals(true));

          testStep++;
        }
        // 이중 대출 요청
        if (testStep == 2) {
          final context = RentMockRequestContext(
            userId: 'anothor_user',
            assetNo: '관리-B-0005',
            reqCode: 'rent',
          );

          final response = await route_rent.onRequest(context);
          expect(response.statusCode, equals(HttpStatus.ok));

          final respData = await response.json() as Map;
          expect(respData['isSuccess'], equals(false));

          testStep++;
        }
        // 반납 요청
        if (testStep == 3) {
          final context = RentMockRequestContext(
            userId: 'htlee',
            assetNo: '관리-B-0005',
            reqCode: 'return',
          );

          final response = await route_rent.onRequest(context);
          expect(response.statusCode, equals(HttpStatus.ok));

          final respData = await response.json() as Map;
          expect(respData['isSuccess'], equals(true));
        }
      }),
      test('대출하지 않은 책은 반납 할 수 없음', () async {
        var testStep = 1;
        // 대출 할 수 있는 책인지 검사
        if (testStep == 1) {
          final context = ViewMockRequestContext(assetNo: '관리-B-0005');

          final response = await route_view.onRequest(context);
          expect(response.statusCode, equals(HttpStatus.ok));

          final respData = await response.json() as Map;
          expect(respData['isSuccess'], equals(true));
          expect(respData['data'], isNotNull);

          final book = Book.fromJson(respData['data'] as Map<String, dynamic>);
          expect(book.rentUser, anyOf([isNull, isEmpty]));

          testStep++;
        }
        // 반납 요청
        if (testStep == 2) {
          final context = RentMockRequestContext(
            userId: 'htlee',
            assetNo: '관리-B-0005',
            reqCode: 'return',
          );

          final response = await route_rent.onRequest(context);
          expect(response.statusCode, equals(HttpStatus.ok));

          final respData = await response.json() as Map;
          expect(respData['isSuccess'], equals(false));

          testStep++;
        }
      }),
      test('게시 금지 도서는 대출 할 수 없음', () async {
        var testStep = 1;
        // 게시 금지 도서 검사
        if (testStep == 1) {
          final context = ViewMockRequestContext(assetNo: '관리-B-0001');

          final response = await route_view.onRequest(context);
          expect(response.statusCode, equals(HttpStatus.ok));

          final respData = await response.json() as Map;
          expect(respData['isSuccess'], equals(false));
          expect(respData['data'], isNull);

          testStep++;
        }
        // 대출 요청
        if (testStep == 2) {
          final context = RentMockRequestContext(
            userId: 'htlee',
            assetNo: '관리-B-0001',
            reqCode: 'rent',
          );

          final response = await route_rent.onRequest(context);
          expect(response.statusCode, equals(HttpStatus.ok));

          final respData = await response.json() as Map;
          expect(respData['isSuccess'], equals(false));
        }
      }),
      test('게시 허가 도서는 대출 가능함', () async {
        var testStep = 1;
        // 대출 가능 도서인지 검사
        if (testStep == 1) {
          final context = ViewMockRequestContext(assetNo: '관리-B-0005');

          final response = await route_view.onRequest(context);
          expect(response.statusCode, equals(HttpStatus.ok));

          final respData = await response.json() as Map;
          expect(respData['isSuccess'], equals(true));
          expect(respData['data'], isNotNull);

          final book = Book.fromJson(respData['data'] as Map<String, dynamic>);
          expect(book.rentUser, anyOf([isNull, isEmpty]));

          testStep++;
        }
        // 대출 요청
        if (testStep == 2) {
          final context = RentMockRequestContext(
            userId: 'htlee',
            assetNo: '관리-B-0005',
            reqCode: 'rent',
          );

          final response = await route_rent.onRequest(context);
          expect(response.statusCode, equals(HttpStatus.ok));

          final respData = await response.json() as Map;
          expect(respData['isSuccess'], equals(true));

          testStep++;
        }
        // 반납 요청
        if (testStep == 3) {
          final context = RentMockRequestContext(
            userId: 'htlee',
            assetNo: '관리-B-0005',
            reqCode: 'return',
          );

          final response = await route_rent.onRequest(context);
          expect(response.statusCode, equals(HttpStatus.ok));

          final respData = await response.json() as Map;
          expect(respData['isSuccess'], equals(true));
        }
      }),
    },
  );
}
