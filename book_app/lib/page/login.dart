/// 로그인 페이지
///
/// - [TextField] 아이디
/// - [TextField] 패스워드
/// - [Button] 로그인
/// - [Link] 아이디/패스워드 찾기
///
///

import 'package:book_app/app/book_service.dart';
import 'package:book_app/app/user.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:http/http.dart' as http;

class LoginPageWidget extends StatefulWidget {
  LoginPageWidget({required this.setUserInfo, super.key});
  Function setUserInfo;

  @override
  State<LoginPageWidget> createState() => _LoginPageWidgetState();
}

class _LoginPageWidgetState extends State<LoginPageWidget> {
  bool _isLoading = false;
  String _userId = '';
  String _password = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('로그인')),
      body: Stack(
        children: [
          // 로그인 폼
          Column(children: [
            Padding(
              padding: EdgeInsets.all(15.0),
              child: Column(
                children: [
                  TextField(
                    decoration: const InputDecoration(
                      hintText: '아이디',
                    ),
                    onChanged: (value) {
                      setState(() {
                        _userId = value;
                      });
                    },
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.all(15.0),
              child: Column(
                children: [
                  TextField(
                    obscureText: true,
                    decoration: const InputDecoration(
                      hintText: '비밀번호',
                    ),
                    onChanged: (value) {
                      setState(() {
                        _password = value;
                      });
                    },
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20.0),
              child: ElevatedButton(
                onPressed: () async {
                  print('userId: $_userId / password: $_password');

                  if (_userId.isEmpty || _password.isEmpty) {
                    showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return AlertDialog(
                          content: const Text('error'),
                          actions: [
                            ElevatedButton(
                              onPressed: () {
                                Navigator.of(context).pop();
                              },
                              child: const Text('ok'),
                            ),
                          ],
                        );
                      },
                    );
                    return;
                  }

                  setState(() {
                    _isLoading = true;
                  });

                  final service = BookService(client: http.Client());
                  final respData = await service.login(_userId, _password)
                      as Map<String, dynamic>;

                  setState(() {
                    _isLoading = false;
                  });

                  if (respData['isSuccess'] == true) {
                    UserInfo data = UserInfo(
                      userId: _userId,
                      UserNm: '#UserNm',
                      deptCd: '#deptCd',
                    );

                    widget.setUserInfo(data);
                  } else {
                    print('error!');
                    showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return AlertDialog(
                          content: const Text('error'),
                          actions: [
                            ElevatedButton(
                              onPressed: () {
                                Navigator.of(context).pop();
                              },
                              child: const Text('ok'),
                            ),
                          ],
                        );
                      },
                    );
                  }
                },
                child: const Text('로그인'),
              ),
            ),
          ]),
          // 로딩 화면
          (_isLoading)
              ? Container(
                  decoration: BoxDecoration(
                    color: Colors.black38.withOpacity(0.3),
                  ),
                  child: const Center(
                    child: CircularProgressIndicator(),
                  ),
                )
              : Container(),
        ],
      ),
    );
  }
}
