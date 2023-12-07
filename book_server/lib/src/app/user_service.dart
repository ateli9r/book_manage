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
    final bufferId = utf8.encode(userId);
    final bufferPw = utf8.encode(password);

    final data = Uint8List(bufferId.length + bufferPw.length)
      ..setAll(0, bufferId)
      ..setAll(bufferId.length, bufferPw);

    return base64.encode(sha256.convert(data).bytes);
  }
}
