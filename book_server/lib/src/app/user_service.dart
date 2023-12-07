import 'dart:convert';
import 'dart:typed_data';
import 'package:crypto/crypto.dart';

///
class UserService {
  ///
  factory UserService() {
    return _instance;
  }

  UserService._privateConstructor();
  static final UserService _instance = UserService._privateConstructor();

  String encryptPassword(String userId, String password) {
    final bUserId = utf8.encode(userId);
    final bPasswd = Uint8List.fromList(utf8.encode(password));

    final data = Uint8List(bUserId.length + bPasswd.length)
      ..setAll(0, bUserId)
      ..setAll(bUserId.length, bPasswd);

    return base64.encode(sha256.convert(data).bytes);
  }
}
