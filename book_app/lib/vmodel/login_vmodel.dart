import 'package:book_app/service/data_service.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import '../model/user_model.dart';
import 'common_vmodel.dart';

enum LoginModelStatus { idle, error, ok }

class LoginVModel {
  LoginVModel({this.client});
  http.Client? client;

  LoginModelStatus status = LoginModelStatus.idle;
  bool _isLoading = false;
  bool get isLoading => _isLoading;

  BuildContext? context;
  void Function(void Function() fn)? setState;
  Function? setUserInfo;

  String userId = '';
  String password = '';
  UserInfo? userInfo;

  void onChangedUserId(String value) {
    userId = value;
  }

  void onChangedPassword(String value) {
    password = value;
  }

  void onPressedLogin() async {
    if (userId.isEmpty || password.isEmpty) {
      CommonVModel.shared.showMessage(context, "로그인 실패", "아이디 또는 패스워드를 확인하세요.");
      status = LoginModelStatus.error;
      return;
    }

    if (setState != null) {
      setState!(() {
        _isLoading = true;
      });
    }

    final service =
        DataService(client: (client != null) ? client! : http.Client());
    final respData = await service.login(userId: userId, password: password)
        as Map<String, dynamic>;

    if (setState != null) {
      setState!(() {
        _isLoading = false;
      });
    }

    if (!respData['isSuccess']) {
      CommonVModel.shared.showMessage(context, "로그인 실패", "아이디 또는 패스워드를 확인하세요.");
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
