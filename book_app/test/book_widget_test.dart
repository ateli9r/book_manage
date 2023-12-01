import 'dart:convert';
import 'dart:io';

import 'package:book_app/app/book_database.dart';
import 'package:book_app/page/book_list.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:http/http.dart' as http;

// class MockClient extends Mock implements http.Client {}
class MockClient extends Mock implements http.Client {
  @override
  Future<http.Response> get(Uri url, {Map<String, String>? headers}) async {
    return http.Response('{"title": "blog_test"}', HttpStatus.ok);
  }

  @override
  Future<http.Response> post(Uri url,
      {Map<String, String>? headers, Object? body, Encoding? encoding}) async {
    return http.Response('{"title": "blog_test"}', HttpStatus.ok);
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

  testWidgets('[도서조회] 데이터 갯수에 따라 아이템 위젯 매핑', (WidgetTester tester) async {
    // await tester.pumpWidget(BookListWidget());
    // expect(1, equals(0));
    throw Exception('not impl');
  });

  testWidgets('[도서조회] 아이템 위젯을 탭 하면 상세화면으로 이동', (WidgetTester tester) async {
    // await tester.pumpWidget(BookListWidget());
    // expect(1, equals(0));
    throw Exception('not impl');
  });
}
