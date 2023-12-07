import 'package:book_server/src/app/user_service.dart';
import 'package:dart_frog/dart_frog.dart';
import 'package:crypto/crypto.dart' as crypto;
import 'dart:convert';

Future<Response> onRequest(RequestContext context) async {
  final ret = <String, dynamic>{};
  ret['isSuccess'] = false;

  final request = context.request;

  if (request.method.value == 'POST' &&
      request.headers['Content-Type']!.startsWith('application/json')) {
    final body = await request.json();

    final userId = body['userId'] as String;
    final password = body['password'] as String;

    final service = UserService();
    final result = service.encryptPassword(userId, password);
    print('result: $result');
  }

  return Response.json(body: ret);
}
