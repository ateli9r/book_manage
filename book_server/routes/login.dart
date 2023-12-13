import 'package:book_server/src/app/book_service.dart';
import 'package:dart_frog/dart_frog.dart';

Future<Response> onRequest(RequestContext context) async {
  final ret = <String, dynamic>{};
  ret['isSuccess'] = false;

  final request = context.request;

  if (request.method.value == 'POST' &&
      request.headers['Content-Type']!.startsWith('application/json')) {
    final body = await request.json();

    final userId = body['userId'] as String;
    final password = body['password'] as String;

    final isSuccess = await BookService().signIn(userId, password);
    ret['isSuccess'] = isSuccess;
  }

  return Response.json(body: ret);
}
