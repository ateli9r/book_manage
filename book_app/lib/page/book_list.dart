/// 도서 목록
///
/// 도서 이미지
/// 제목
/// 출판사
/// 대여가능 여부
///
/// 검색 버튼
/// 스캔 버튼

import 'package:flutter/material.dart';
import 'scan.dart';

class BookListWidget extends StatefulWidget {
  @override
  State<BookListWidget> createState() => _BookListWidgetState();
}

class _BookListWidgetState extends State<BookListWidget> {
  String _keyword = '';

  final _keywordController = TextEditingController();

  void setScanCode(String scanCode) {
    setState(() {
      _keyword = scanCode;
    });

    _keywordController.text = scanCode;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('도서 목록')),
      body: Column(
        children: [
          // 검색
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Column(
              children: [
                TextField(
                  controller: _keywordController,
                  decoration: const InputDecoration(
                    hintText: '책 제목, 관리번호',
                    border: InputBorder.none,
                    icon: Padding(
                      padding: EdgeInsets.only(left: 13.0),
                      child: Icon(Icons.search),
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Expanded(
                      child: ElevatedButton.icon(
                        onPressed: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                                builder: (context) =>
                                    ScanPageWidget(setScanCode: setScanCode)),
                          );
                        },
                        icon: const Icon(Icons.qr_code),
                        label: const Text('QR스캔'),
                      ),
                    ),
                    SizedBox(width: 10),
                    Expanded(
                      child: ElevatedButton.icon(
                        onPressed: () {
                          _keywordController.text = '';
                        },
                        icon: const Icon(Icons.cleaning_services),
                        label: const Text('초기화'),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          // 도서 목록
          Expanded(
            child: ListView(
              children: [
                Text('asdf'),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
