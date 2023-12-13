@TestOn('vm')

import 'package:book_app/app/book_service.dart';
import 'package:test/test.dart';
import 'package:http/http.dart' as http;

void main() {
  group('로그인', () {
    test('[로그인] 올바른 아이디, 비밀번호를 입력하면 로그인 된다.', () async {
      final service = BookService(client: http.Client());
      final data =
          await service.login('wschoi', '1111') as Map<String, dynamic>;

      expect(data['isSuccess'], equals(true));
    });
  });
}
