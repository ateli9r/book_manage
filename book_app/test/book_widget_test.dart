import 'dart:convert';
import 'dart:io';

import 'package:book_app/app/book_database.dart';
import 'package:book_app/page/book_list.dart';
import 'package:book_app/page/book_list_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:http/http.dart' as http;

// class MockClient extends Mock implements http.Client {}

class BookListMockClient extends Mock implements http.Client {
  @override
  Future<http.Response> post(Uri url,
      {Map<String, String>? headers, Object? body, Encoding? encoding}) async {
    final body = jsonEncode({
      'isSuccess': true,
      'data': [
        {
          'assetNo': '연구소-B-0150',
          'bookNm': '이것이 데이터 분석이다 with 파이썬',
          'publisher': '한빛미디어',
        },
        {
          'assetNo': '연구소-B-0111',
          'bookNm': '디지털 헬스케어 : 의료의 미래',
          'publisher': '클라우드나인',
        },
        {
          'assetNo': '연구소-B-0073',
          'bookNm': 'TCP/IP 완벽가이드',
          'publisher': '에이콘출판사',
        },
      ],
    });

    return http.Response(
      body,
      HttpStatus.ok,
      headers: {
        'content-type': 'application/json; charset=utf-8',
      },
    );
  }
}

void main() {
  // testWidgets('Counter increments smoke test', (WidgetTester tester) async {
  //   // Build our app and trigger a frame.
  //   await tester.pumpWidget(const MyApp());

  //   // Verify that our counter starts at 0.
  //   expect(find.text('0'), findsOneWidget);
  //   expect(find.text('1'), findsNothing);

  //   // Tap the '+' icon and trigger a frame.
  //   await tester.tap(find.byIcon(Icons.add));
  //   await tester.pump();

  //   // Verify that our counter has incremented.
  //   expect(find.text('0'), findsNothing);
  //   expect(find.text('1'), findsOneWidget);
  // });

  // test('new test', () {
  //   expect(1, equals(0));
  // });
}
