import 'package:book_server/src/app/book_service.dart';
import 'package:dart_frog/dart_frog.dart';

Future<Response> onRequest(RequestContext context) async {
  final ret = <String, dynamic>{};
  ret['isSuccess'] = false;

  final request = context.request;
  if (request.method.value == 'POST' &&
      request.headers['Content-Type']!.startsWith('application/json')) {
    final body = await request.json();

    // final context = RentMockRequestContext(
    //   userId: 'htlee',
    //   assetNo: '관리-B-0005',
    //   reqCode: 'return',
    // );

    final userId = body['userId'] as String;
    final assetNo = body['assetNo'] as String;
    final reqCode = body['reqCode'] as String;

    final book = BookService().detail(assetNo);
    if (book == null) throw Exception('book not found');

    // final assetNo = body['assetNo'] as String;
    // final data = await BookService().detail(assetNo);

    // if (data != null) {
    //   ret['isSuccess'] = true;
    //   ret['data'] = data;
    // }
  }

  return Response.json(body: ret);
}
