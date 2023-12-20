import 'package:flutter/material.dart';

class CommonVModel {
  CommonVModel._privateConstructor();
  static final CommonVModel shared = CommonVModel._privateConstructor();

  void showMessage(BuildContext? context, String title, String text) {
    if (context == null) return;
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text(title),
          content: Text(text),
          actions: [
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: const Text("확인"),
            ),
          ],
        );
      },
    );
  }
}
