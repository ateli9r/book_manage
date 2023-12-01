// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility in the flutter_test package. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:book_app/main.dart';
import 'package:book_app/page/sample.dart';

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
  testWidgets('샘플 위젯 테스트', (WidgetTester tester) async {
    /// Matcher
    /// - findsOneWidget: 위젯 트리에 해당 위젯이 정확히 하나 있다는 것을 확인합니다.
    /// - findsNothing: 위젯이 없는지 확인합니다.
    /// - findsWidgets: 하나 혹은 여러 개의 위젯이 있는지 확인합니다.
    /// - findsNWidgets(int n): n 개의 위젯이 존재하는지 확인합니다.
    /// - matchesGoldenFile: 위젯의 렌더링이 특정 비트맵 이미지, 폰트와 같은지 확인합니다.

    const title = '#title';
    const message = '#message';

    await tester.pumpWidget(MaterialApp(
      home: SampleWidget(title: title, message: message),
    ));

    final titleText = find.text(title);
    final messageText = find.text(message);

    expect(titleText, findsOneWidget);
    expect(messageText, findsOneWidget);
  });
}
