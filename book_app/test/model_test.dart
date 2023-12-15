@TestOn('vm')

import 'package:test/test.dart';
import 'package:book_app/model/view/login_model.dart';
import 'package:book_app/model/view/book_list_model.dart';
import 'package:book_app/model/view/book_rent_model.dart';

void main() {
  group('로그인 모델 테스트', () {
    test('로그인 실패', () async {
      final viewModel = LoginModel();

      throw Exception('no impl');
    });

    test('로그인 성공', () async {
      final viewModel = LoginModel();

      throw Exception('no impl');
    });
  });

  group('도서 조회 모델 테스트', () {
    test('도서 전체 조회', () async {
      final viewModel = BookListModel();

      throw Exception('no impl');
    });

    test('도서 키워드 조회', () async {
      final viewModel = BookListModel();

      throw Exception('no impl');
    });

    test('도서 관리번호 조회', () async {
      final viewModel = BookListModel();

      throw Exception('no impl');
    });
  });

  group('도서 대출 모델 테스트', () {
    test('도서 대출', () async {
      final viewModel = BookRentModel();

      throw Exception('no impl');
    });

    test('도서 반납', () async {
      final viewModel = BookRentModel();

      throw Exception('no impl');
    });
  });
}
