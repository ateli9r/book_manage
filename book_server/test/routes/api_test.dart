import 'dart:io';

import 'package:test/test.dart';

import '../../routes/login.dart' as route_login;
import '../../routes/search.dart' as route_search;
// import '../../routes/view.dart' as routeView;
// import '../../routes/rent.dart' as routeRent;
import '_mock.dart';

void main() {
  test('just success test', () {});

  test('로그인 api', () async {
    final context = LoginMockRequestContext(userId: 'wschoi', password: '1111');

    final response = await route_login.onRequest(context);
    expect(response.statusCode, equals(HttpStatus.ok));

    final respData = await response.json() as Map;
    expect(respData['isSuccess'], equals(true));
  });

  test('검색 api', () async {
    final context = SearchMockRequestContext(keyword: '');

    final response = await route_search.onRequest(context);
    expect(response.statusCode, equals(HttpStatus.ok));

    final respData = await response.json() as Map;
    expect(respData['isSuccess'], equals(true));
  });
}
