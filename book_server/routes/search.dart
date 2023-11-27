import 'package:dart_frog/dart_frog.dart';
import 'package:book_server/src/app/book_service.dart';

Future<Response> onRequest(RequestContext context) async {
  final ret = {};
  ret['isSuccess'] = false;

  final request = context.request;

  if (request.method.value == 'POST' &&
      request.headers['Content-Type']!.startsWith('application/json')) {
    var service = BookService();
    final items = await service.search('');
    print('length: ${items.length}');
  }

  return Response.json(body: ret);
}
