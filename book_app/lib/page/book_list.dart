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
import 'scan.dart';

class BookListWidget extends StatefulWidget {
  @override
  State<BookListWidget> createState() => _BookListWidgetState();
}

class _BookListWidgetState extends State<BookListWidget> {
  String _keyword = '';

  final _keywordController = TextEditingController();

  Future<List<Book>> getBookList() async {
    // final data = await Future.delayed(const Duration(seconds: 1)).then((_) {
    //   List<Book> ret = [
    //     Book(
    //       assetNo: '연구소-B-0222',
    //       bookNm: '그림으로 공부하는 IT 인프라 구조',
    //       publisher: '제이펍',
    //     ),
    //     Book(
    //       assetNo: '연구소-B-0130',
    //       bookNm: '배워서 바로 쓰는 스프링 프레임워크',
    //       publisher: '한빛미디어',
    //     ),
    //     Book(
    //       assetNo: '연구소-B-0164',
    //       bookNm: '파이썬으로 다시 배우는 핵심 고등 수학',
    //       publisher: '위키북스',
    //     ),
    //     Book(
    //       assetNo: '연구소-B-0149',
    //       bookNm: '오늘도 개발자가 안된다고 말했다',
    //       publisher: '디지털북스',
    //     ),
    //     Book(
    //       assetNo: '연구소-B-0175',
    //       bookNm: '인생을 바꾼 식사의 기적',
    //       publisher: '북테이블',
    //     ),
    //   ];

    //   return ret;
    // });

    final db = BookDatabase();
    db.search('');

    final service = BookService();
    final data = service.search('');
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
