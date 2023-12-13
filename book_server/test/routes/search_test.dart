import 'dart:convert';
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
        'POST',
        Uri(scheme: 'http', host: '192.168.0.146', port: 8080, path: '/search'),
        headers: {
          'Content-Type': 'application/json',
        },
        body: jsonEncode({'keyword': keyword}),
      );
}

void main() {
  test('검색 api', () async {
    final context = _SearchMockRequestContext(keyword: '');

    final response = await route.onRequest(context);
    expect(response.statusCode, equals(HttpStatus.ok));

    final respData = await response.json() as Map;
    expect(respData['isSuccess'], equals(true));
  });
}
