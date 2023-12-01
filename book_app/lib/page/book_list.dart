/// 도서 목록
///
/// 도서 이미지
/// 제목
/// 출판사
/// 대여가능 여부
///
/// 검색 버튼
/// 스캔 버튼

import 'package:book_app/app/book.dart';
import 'package:book_app/app/book_database.dart';
import 'package:book_app/app/book_service.dart';
import 'package:book_app/page/book_list_item.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'scan.dart';

class BookListWidget extends StatefulWidget {
  @override
  State<BookListWidget> createState() => _BookListWidgetState();
}

class _BookListWidgetState extends State<BookListWidget> {
  String _keyword = '';

  final _keywordController = TextEditingController();

  Future<List<Book>> getBookList() async {
    final db = BookDatabase(client: http.Client());
    final data = await db.search(_keyword);
    return data;
  }

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
                  onChanged: (_) {
                    setScanCode(_keywordController.text);
                  },
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
                    const SizedBox(width: 10),
                    Expanded(
                      child: ElevatedButton.icon(
                        onPressed: () {
                          setScanCode('');
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

          FutureBuilder(
            future: getBookList(),
            builder:
                (BuildContext context, AsyncSnapshot<List<Book>> snapshot) {
              if (snapshot.hasData) {
                final bookList = snapshot.data as List<Book>;

                return Expanded(
                  child: ListView.builder(
                    itemCount: bookList.length,
                    itemBuilder: (BuildContext context, int index) {
                      return BookListItem(
                        bookNm: bookList[index].bookNm,
                        assetNo: bookList[index].assetNo,
                        publisher: bookList[index].publisher,
                      );
                    },
                  ),
                );
              } else if (snapshot.hasData == false) {
                return const Center(
                  child: CircularProgressIndicator(),
                );
              } else {
                return const Center(
                  child: Text('error'),
                );
              }
            },
          ),
        ],
      ),
    );
  }
}
