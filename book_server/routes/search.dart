import 'package:dart_frog/dart_frog.dart';
import 'package:book_server/src/service/data_service.dart';

Future<Response> onRequest(RequestContext context) async {
  final ret = <String, dynamic>{};
  ret['isSuccess'] = false;

  final request = context.request;

  if (request.method.value == 'POST' &&
      request.headers['Content-Type']!.startsWith('application/json')) {
    final body = await request.json();

    var keyword = body['keyword'] as String?;
    keyword ??= '';

    final service = DataService();
    final items = await service.search(keyword);
    final data = items.map((item) => item.toJson()).toList();

    ret['data'] = data;
    ret['isSuccess'] = true;
  }

  return Response.json(body: ret);
}
