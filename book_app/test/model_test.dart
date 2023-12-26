@TestOn('vm')

import 'package:book_app/model/user_model.dart';
import 'package:book_app/service/status_service.dart';
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

    if (StatusService.shared.getUserInfo == null) {
      StatusService.shared
          .setUserInfo(UserInfo(userId: 'wschoi', userNm: '', deptCd: ''));
    }

    test('미대출 도서는 버튼 라벨 = \'도서대출\'', () {
      final model = BookRentVModel(
        targetAssetNo: 'allowed_asset_no',
        targetUserId: null,
        client: client,
      );

      expect(model.rentLabel, equals('도서대출'));
    });

    test('대출 도서는 버튼 라벨 = \'도서반납\'', () {
      final model = BookRentVModel(
        targetAssetNo: 'allowed_asset_no',
        targetUserId: 'wschoi',
        client: client,
      );

      expect(model.rentLabel, equals('도서반납'));
    });

    test('다른 사용자 대출 도서는 대출불가', () {
      final model = BookRentVModel(
        targetAssetNo: 'allowed_asset_no',
        targetUserId: 'anothor_user',
        client: client,
      );

      expect(model.isAllowRent, equals(false));
    });

    test('도서 대출 가능', () async {
      final model = BookRentVModel(
        targetAssetNo: 'allowed_asset_no',
        targetUserId: null,
        client: client,
      );

      model.onPressedRent();
      expect(model.status, equals(VModelStatus.push));

      await model.requestRent('allowed_asset_no');

      expect(model.status, equals(VModelStatus.idle));
      expect(model.isSuccess, equals(true));
    });

    test('도서 대출 불가 (관리번호가 다름)', () async {
      final model = BookRentVModel(
        targetAssetNo: 'allowed_asset_no',
        targetUserId: 'wschoi',
        client: client,
      );

      model.onPressedRent();
      expect(model.status, equals(VModelStatus.push));

      await model.requestRent('not_allowed_asset_no');

      expect(model.status, equals(VModelStatus.idle));
      expect(model.isSuccess, equals(false));
    });

    test('도서 반납 가능', () async {
      final model = BookRentVModel(
        targetAssetNo: 'rented_asset_no',
        targetUserId: 'wschoi',
        client: client,
      );

      model.onPressedRent();
      expect(model.status, equals(VModelStatus.push));

      await model.requestRent('rented_asset_no');

      expect(model.status, equals(VModelStatus.idle));
      expect(model.isSuccess, equals(true));
    });

    test('도서 반납 불가 (관리번호가 다름)', () async {
      final model = BookRentVModel(
        targetAssetNo: 'rented_asset_no',
        targetUserId: 'wschoi',
        client: client,
      );

      model.onPressedRent();
      expect(model.status, equals(VModelStatus.push));

      await model.requestRent('not_rented_asset_no');

      expect(model.status, equals(VModelStatus.idle));
      expect(model.isSuccess, equals(false));
    });

    test('도서 반납 불가 (대출 사용자가 다름)', () async {
      final model = BookRentVModel(
        targetAssetNo: 'rented_asset_no',
        targetUserId: 'anothor_user',
        client: client,
      );

      model.onPressedRent();
      expect(model.status, equals(VModelStatus.push));

      await model.requestRent('not_rented_asset_no');

      expect(model.status, equals(VModelStatus.idle));
      expect(model.isSuccess, equals(false));
    });
  });
}
