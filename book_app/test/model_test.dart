@TestOn('vm')

import 'package:test/test.dart';
import 'package:book_app/model/view/login_model.dart';
import 'package:book_app/model/view/book_list_model.dart';
import 'package:book_app/model/view/book_rent_model.dart';

void main() {
  group('로그인 모델 테스트', () {
    test('아이디/패스워드 미입력', () async {
      final model = LoginModel();
      model.onPressedLogin();

      expect(model.userInfo, isNull);
    });

    test('로그인 실패', () async {
      final model = LoginModel();
      model
        ..userId = 'not_found'
        ..password = '1234';
      model.onPressedLogin();

      expect(model.userInfo, isNull);
    });

    test('로그인 성공', () async {
      final model = LoginModel();
      model
        ..userId = 'wschoi'
        ..password = '1111';
      model.onPressedLogin();

      expect(model.userInfo, isNotNull);
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
