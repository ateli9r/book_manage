import 'dart:convert';
import 'dart:io';
import 'package:mocktail/mocktail.dart';
import 'package:dart_frog/dart_frog.dart';
import 'package:test/test.dart';

class LoginMockRequestContext extends Mock implements RequestContext {
  LoginMockRequestContext({required this.userId, required this.password});

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

class SearchMockRequestContext extends Mock implements RequestContext {
  SearchMockRequestContext({required this.keyword});

  final String keyword;

  @override
  Request get request => Request(
        'POST',
        Uri(scheme: 'http', host: 'localhost', port: 8080, path: '/rent'),
        headers: {
          'Content-Type': 'application/json',
        },
        body: jsonEncode({'keyword': keyword}),
      );
}

class ViewMockRequestContext extends Mock implements RequestContext {
  ViewMockRequestContext({required this.keyword});

  final String keyword;

  @override
  Request get request => Request(
        'GET',
        Uri(scheme: 'http', host: 'localhost', port: 8080, path: '/view'),
        headers: {
          'Content-Type': 'application/json',
        },
        body: jsonEncode({'keyword': keyword}),
      );
}

class RentMockRequestContext extends Mock implements RequestContext {
  RentMockRequestContext({required this.keyword});

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
