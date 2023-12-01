/// 홈 페이지
///
/// 탭
/// - 메인 페이지: 도서 목록
/// - 설정 페이지: 설정
///
///
///

import 'package:book_app/page/book_list.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class HomePageWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // return Scaffold(
    //   appBar: AppBar(title: const Text('#title')),
    //   body: const Center(child: Text('#home')),
    //   floatingActionButton: ElevatedButton(
    //     onPressed: () {
    //       Navigator.of(context).push(
    //         MaterialPageRoute(builder: (context) => ScanPageWidget()),
    //       );
    //     },
    //     child: Text('#button'),
    //   ),
    // );
    return BookListWidget(httpClient: http.Client());
  }
}
