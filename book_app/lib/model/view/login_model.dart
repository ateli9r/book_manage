import 'package:book_app/app/book_service.dart';
import 'package:book_app/app/common_util.dart';
import 'package:book_app/model/domain/user_domain.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

enum LoginModelStatus { idle, error, ok }

class LoginModel {
  LoginModel({required this.client});
  http.Client client;

  bool _isLoading = false;
  bool get isLoading => _isLoading;

  BuildContext? context;
  void Function(void Function() fn)? setState;
  Function? setUserInfo;

  String userId = '';
  String password = '';
  LoginModelStatus status = LoginModelStatus.idle;
  UserInfo? userInfo;

  void onChangedUserId(String value) {
    userId = value;
  }

  void onChangedPassword(String value) {
    password = value;
  }

  void onPressedLogin() async {
    if (userId.isEmpty || password.isEmpty) {
      CommonUtil.shared.showMessage(context, "로그인 실패", "아이디 또는 패스워드를 확인하세요.");
      status = LoginModelStatus.error;
      return;
    }

    if (setState != null) {
      setState!(() {
        _isLoading = true;
      });
    }

    final service = BookService(client: client);
    final respData =
        await service.login(userId, password) as Map<String, dynamic>;

    if (setState != null) {
      setState!(() {
        _isLoading = false;
      });
    }

    if (!respData['isSuccess']) {
      CommonUtil.shared.showMessage(context, "로그인 실패", "아이디 또는 패스워드를 확인하세요.");
      status = LoginModelStatus.error;
      return;
    }

    userInfo = UserInfo(
      userId: userId,
      userNm: '#UserNm',
      deptCd: '#deptCd',
    );

    if (setUserInfo != null) {
      setUserInfo!(userInfo);
    }

    status = LoginModelStatus.ok;
  }
}
