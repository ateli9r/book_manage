/// 도서 상세
///
/// 도서 이미지
/// 제목
/// 출판사
/// 관리번호
/// 구매일
/// 대여가능 여부
/// 대여 사용자
///
/// 대여하기 버튼
/// 반납하기 버튼

import 'package:flutter/material.dart';

class BookDetailWidget extends StatefulWidget {
  @override
  State<BookDetailWidget> createState() => _BookDetailWidgetState();
}

class _BookDetailWidgetState extends State<BookDetailWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('도서 조회')),
      body: const Center(
        child: Text('#body'),
      ),
    );
  }
}
