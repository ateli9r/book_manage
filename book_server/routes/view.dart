import 'package:book_server/src/app/book_service.dart';
import 'package:dart_frog/dart_frog.dart';

Future<Response> onRequest(RequestContext context) async {
  final ret = <String, dynamic>{};
  ret['isSuccess'] = false;

  final request = context.request;

  if (request.method.value == 'POST' &&
      request.headers['Content-Type']!.startsWith('application/json')) {
    final body = await request.json();

    final assetNo = body['assetNo'] as String;
    final data = await BookService().detail(assetNo);

    if (data != null) {
      ret['isSuccess'] = true;
      ret['data'] = data;
    }
  }

  return Response.json(body: ret);
}
