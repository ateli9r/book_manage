@TestOn('vm')

import 'package:book_app/app/book_service.dart';
import 'package:test/test.dart';
import 'package:http/http.dart' as http;

void main() {
  group('도서 목록 조회', () {
    test('[도서 목록 조회] 도서 데이터를 조회하면 최소 10건 이상의 데이터가 조회된다.', () async {
      final service = BookService(client: http.Client());
      final data = await service.search('');
      expect(data.length, greaterThan(10));
    });

    test('[도서 목록 조회] 특정 도서명으로 검색하면 1건의 데이터가 조회된다.', () async {
      const keyword = '오늘도 개발자가 안 된다고 말했다';
      final service = BookService(client: http.Client());
      final data = await service.search(keyword);
      expect(data.length, equals(1));
    });
  });

  group('도서 상세 조회', () {
    test('[도서 상세 조회] 데이터 조회', () async {
      throw Exception('not impl');
    });

    test('[도서 상세 조회] 대출 기능', () async {
      throw Exception('not impl');
    });

    test('[도서 상세 조회] 반납 기능', () async {
      throw Exception('not impl');
    });
  });
}
