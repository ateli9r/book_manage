@TestOn('vm')

import 'package:book_app/vmodel/base_vmodel.dart';
import 'package:test/test.dart';
import 'package:http/http.dart' as http;
import '_mock.dart';
import 'package:book_app/vmodel/login_vmodel.dart';
import 'package:book_app/vmodel/book_list_vmodel.dart';
import 'package:book_app/vmodel/book_rent_vmodel.dart';

void main() {
  group('로그인 모델 테스트', () {
    http.Client client = LoginMockClient();

    test('아이디/패스워드 미입력', () async {
      final model = LoginVModel(client: client);

      await Future.sync(() => {model.onPressedLogin()});

      expect(model.status, VModelStatus.error);
    });

    test('로그인 실패', () async {
      final model = LoginVModel(client: client);
      model
        ..userId = 'not_found'
        ..password = '1234';

      await Future.sync(() => {model.onPressedLogin()});

      expect(model.status, VModelStatus.error);
    });

    test('로그인 성공', () async {
      final model = LoginVModel(client: client);
      model
        ..userId = 'wschoi'
        ..password = '1111';

      await Future.sync(() => {model.onPressedLogin()});

      expect(model.status, VModelStatus.finish);
    });
  });

  group('도서 조회 모델 테스트', () {
    http.Client client = BookListMockClient();

    test('QR스캔후 키워드 설정시 상태 변경', () async {
      final model = BookListVModel(client: client);
      model.onPressedFindByQrcode();
      expect(model.status, equals(VModelStatus.push));

      await Future.delayed(const Duration(seconds: 1))
          .then((_) => {model.setKeyword('scan_code')});

      expect(model.status, equals(VModelStatus.idle));
    });

    test('초기화 버튼을 누르면 keyword 초기화', () async {
      final model = BookListVModel(client: client);
      model.keyword = 'init_keyword';
      model.onPressedClearKeyword();
      expect(model.keyword.length, equals(0));
    });

    test('도서 전체 조회', () async {
      final model = BookListVModel(client: client);
      model.onChangedKeyword('');

      final data = await model.getBookList();
      expect(data.length, greaterThanOrEqualTo(5));
    });

    test('도서 키워드 조회', () async {
      final model = BookListVModel(client: client);
      model.onChangedKeyword('keyword');

      final data = await model.getBookList();
      expect(data.length, greaterThanOrEqualTo(3));
    });

    test('도서 관리번호 조회', () async {
      final model = BookListVModel(client: client);
      model.onChangedKeyword('asset_no');

      final data = await model.getBookList();
      expect(data.length, equals(1));
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
