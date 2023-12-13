import 'dart:convert';
import 'dart:io';
import 'package:dart_frog/dart_frog.dart';
import 'package:mocktail/mocktail.dart';
import 'package:test/test.dart';

import '../../routes/login.dart' as route;

class _LoginMockRequestContext extends Mock implements RequestContext {
  _LoginMockRequestContext({required this.userId, required this.password});

  final String userId;
  final String password;

  @override
  Request get request => Request(
        'POST',
        Uri(scheme: 'http', host: '192.168.0.146', port: 8080, path: '/login'),
        headers: {
          'Content-Type': 'application/json',
        },
        body: jsonEncode({'userId': userId, 'password': password}),
      );
}

void main() {
  test('로그인 api', () async {
    final context =
        _LoginMockRequestContext(userId: 'wschoi', password: '1111');

    final response = await route.onRequest(context);
    expect(response.statusCode, equals(HttpStatus.ok));

    final respData = await response.json() as Map;
    expect(respData['isSuccess'], equals(true));
  });
}
