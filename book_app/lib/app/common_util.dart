import 'package:flutter/material.dart';

class CommonUtil {
  CommonUtil._privateConstructor();
  static final CommonUtil shared = CommonUtil._privateConstructor();

  void showMessage(BuildContext context, String title, String text) {
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
