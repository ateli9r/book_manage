import 'package:flutter/material.dart';

class SampleWidget extends StatelessWidget {
  SampleWidget({
    required this.title,
    required this.message,
    super.key,
  });

  final String title;
  final String message;
  int counter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(title)),
      body: Center(
        child: Text(message),
      ),
    );
  }
}
