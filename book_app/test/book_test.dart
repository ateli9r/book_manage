import 'package:book_app/app/book_database.dart';
import 'package:book_app/page/book_list.dart';
import 'package:flutter_test/flutter_test.dart';

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

  test('[도서조회] 도서 데이터를 조회하면 최소 10건 이상의 데이터가 조회된다.', () async {
    final database = BookDatabase();
    final data = await database.search('');
    expect(data.length, greaterThan(10));
  });

  test('[도서조회] 특정 도서명으로 검색하면 1건의 데이터가 조회된다.', () async {
    const keyword = '오늘도 개발자가 안 된다고 말했다';
    final database = BookDatabase();
    final data = await database.search(keyword);
    expect(data.length, equals(1));
  });

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

  test('[도서상세] 데이터 조회', () async {
    throw Exception('not impl');
  });

  test('[도서상세] 대출 기능', () async {
    throw Exception('not impl');
  });

  test('[도서상세] 반납 기능', () async {
    throw Exception('not impl');
  });
}
