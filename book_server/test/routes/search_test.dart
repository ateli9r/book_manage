import 'dart:io';
import 'package:dart_frog/dart_frog.dart';
import 'package:mocktail/mocktail.dart';
import 'package:test/test.dart';

import '../../routes/search.dart' as route;

class _SearchMockRequestContext extends Mock implements RequestContext {
  _SearchMockRequestContext({required this.keyword});

  final String keyword;

  @override
  Request get request => Request(
        'GET',
        Uri(scheme: 'http', host: 'localhost', port: 8080, path: '/search'),
        headers: {
          'Content-Type': 'application/json',
        },
        body: {
          'keyword': keyword,
        }.toString(),
      );
}

void main() {
  // test('#test1', () async {
  //   final context = _SearchMockRequestContext(keyword: '');

  //   final response = await route.onRequest(context);
  //   expect(response.statusCode, equals(HttpStatus.ok));

  //   final respData = await response.json() as Map;
  //   expect(respData['isSuccess'], equals(false));
  // });
  test('just success test', () {});
}
