import 'package:flutter/material.dart';
import '../vmodel/login_vmodel.dart';

class LoginPageWidget extends StatefulWidget {
  LoginPageWidget({
    required this.setUserInfo,
    required this.viewModel,
    super.key,
  });

  LoginVModel viewModel;
  Function setUserInfo;

  @override
  State<LoginPageWidget> createState() => _LoginPageWidgetState();
}

class _LoginPageWidgetState extends State<LoginPageWidget> {
  @override
  Widget build(BuildContext context) {
    widget.viewModel.context = context;
    widget.viewModel.setState = setState;
    widget.viewModel.setUserInfo = widget.setUserInfo;

    return Scaffold(
      appBar: AppBar(title: const Text('로그인')),
      body: Stack(
        children: [
          // 로그인 폼
          Column(children: [
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Column(
                children: [
                  TextField(
                    decoration: const InputDecoration(
                      hintText: '아이디',
                    ),
                    onChanged: widget.viewModel.onChangedUserId,
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Column(
                children: [
                  TextField(
                    obscureText: true,
                    decoration: const InputDecoration(
                      hintText: '비밀번호',
                    ),
                    onChanged: widget.viewModel.onChangedPassword,
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20.0),
              child: ElevatedButton(
                onPressed: widget.viewModel.onPressedLogin,
                child: const Text('로그인'),
              ),
            ),
          ]),
          // 로딩 화면
          (widget.viewModel.isLoading)
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
