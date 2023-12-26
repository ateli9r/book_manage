import 'package:flutter/material.dart';

class CommonVModel {
  CommonVModel._privateConstructor();
  static final CommonVModel shared = CommonVModel._privateConstructor();

  Future<dynamic>? showMessage(
      BuildContext? context, String title, String text) {
    if (context == null) return null;
    return showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text(title),
          content: Text(text),
          actions: [
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).pop();
                return;
              },
              child: const Text("확인"),
            ),
          ],
        );
      },
    );
  }
}
