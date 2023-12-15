import 'dart:convert';

import 'package:dart_frog/dart_frog.dart';
import 'package:mocktail/mocktail.dart';

const API_PROTO = 'http';
const API_HOST = '192.168.0.146';
const API_PORT = 8080;
const API_REQ_HEAERS = {'Content-Type': 'application/json'};

class LoginMockRequestContext extends Mock implements RequestContext {
  LoginMockRequestContext({required this.userId, required this.password});

  final String userId;
  final String password;

  @override
  Request get request => Request(
        'POST',
        Uri(scheme: API_PROTO, host: API_HOST, port: API_PORT, path: '/login'),
        headers: API_REQ_HEAERS,
        body: jsonEncode({'userId': userId, 'password': password}),
      );
}

class SearchMockRequestContext extends Mock implements RequestContext {
  SearchMockRequestContext({required this.keyword});

  final String keyword;

  @override
  Request get request => Request(
        'POST',
        Uri(scheme: API_PROTO, host: API_HOST, port: API_PORT, path: '/rent'),
        headers: API_REQ_HEAERS,
        body: jsonEncode({'keyword': keyword}),
      );
}

class ViewMockRequestContext extends Mock implements RequestContext {
  ViewMockRequestContext({required this.assetNo});

  final String assetNo;

  @override
  Request get request => Request(
        'POST',
        Uri(scheme: API_PROTO, host: API_HOST, port: API_PORT, path: '/view'),
        headers: API_REQ_HEAERS,
        body: jsonEncode({'assetNo': assetNo}),
      );
}

class RentMockRequestContext extends Mock implements RequestContext {
  RentMockRequestContext({
    required this.userId,
    required this.assetNo,
    required this.reqCode,
  });

  final String userId;
  final String assetNo;
  final String reqCode;

  @override
  Request get request => Request(
        'POST',
        Uri(scheme: API_PROTO, host: API_HOST, port: API_PORT, path: '/rent'),
        headers: API_REQ_HEAERS,
        body: jsonEncode({
          'userId': userId,
          'assetNo': assetNo,
          'reqCode': reqCode,
        }),
      );
}
