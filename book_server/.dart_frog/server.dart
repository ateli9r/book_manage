// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, implicit_dynamic_list_literal

import 'dart:io';

import 'package:dart_frog/dart_frog.dart';


import '../routes/view.dart' as view;
import '../routes/search.dart' as search;
import '../routes/rent.dart' as rent;
import '../routes/login.dart' as login;
import '../routes/index.dart' as index;
import '../routes/util/print.dart' as util_print;


void main() async {
  final address = InternetAddress.tryParse('') ?? InternetAddress.anyIPv6;
  final port = int.tryParse(Platform.environment['PORT'] ?? '8080') ?? 8080;
  hotReload(() => createServer(address, port));
}

Future<HttpServer> createServer(InternetAddress address, int port) {
  final handler = Cascade().add(createStaticFileHandler()).add(buildRootHandler()).handler;
  return serve(handler, address, port);
}

Handler buildRootHandler() {
  final pipeline = const Pipeline();
  final router = Router()
    ..mount('/util', (context) => buildUtilHandler()(context))
    ..mount('/', (context) => buildHandler()(context));
  return pipeline.addHandler(router);
}

Handler buildUtilHandler() {
  final pipeline = const Pipeline();
  final router = Router()
    ..all('/print', (context) => util_print.onRequest(context,));
  return pipeline.addHandler(router);
}

Handler buildHandler() {
  final pipeline = const Pipeline();
  final router = Router()
    ..all('/view', (context) => view.onRequest(context,))..all('/search', (context) => search.onRequest(context,))..all('/rent', (context) => rent.onRequest(context,))..all('/login', (context) => login.onRequest(context,))..all('/', (context) => index.onRequest(context,));
  return pipeline.addHandler(router);
}

