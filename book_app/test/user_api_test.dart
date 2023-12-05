@TestOn('vm')

import 'package:book_app/app/user_database.dart';
import 'package:test/test.dart';
import 'package:http/http.dart' as http;

void main() {
  group('로그인', () {
    test('[로그인] 올바른 아이디, 비밀번호를 입력하면 로그인 된다.', () async {
      final db = UserDatabase(client: http.Client());
      final data = await db.login(userId: 'test', password: 'test');
      expect(false, equals(true));
    });
  });
}
