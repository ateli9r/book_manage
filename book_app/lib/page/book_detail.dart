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

import 'package:book_app/app/book.dart';
import 'package:flutter/material.dart';

class BookDetailWidget extends StatefulWidget {
  BookDetailWidget({required this.book, super.key});
  final Book book;

  @override
  State<BookDetailWidget> createState() => _BookDetailWidgetState();
}

class _BookDetailWidgetState extends State<BookDetailWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('도서 조회')),
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Container(
                  width: 200,
                  height: 270,
                  decoration: BoxDecoration(
                    color: Colors.white70,
                    border: Border.all(
                      color: const Color(0xFF000000),
                    ),
                  ),
                ),
              ),
            ],
          ),
          Text(
            // '#도서명',
            widget.book.bookNm,
            style: const TextStyle(
              fontSize: 20,
            ),
          ),
          Text(
            // '#출판사',
            widget.book.publisher,
            style: const TextStyle(
              fontSize: 14,
            ),
          ),
          Padding(
            padding: EdgeInsets.all(20.0),
            child: Text('#내용'),
          ),
        ],
      ),
      bottomNavigationBar: BottomAppBar(
        child: (false)
            ? Expanded(
                child: ElevatedButton.icon(
                  icon: const Icon(Icons.qr_code),
                  onPressed: () {
                    print('tapped');
                  },
                  label: const Text((true) ? '도서대출' : '도서반납'),
                ),
              )
            : Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    '대출불가',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.red,
                    ),
                  ),
                  Text('홍길동 (2023-12-06)'),
                ],
              ),

        // Row(
        //   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        //   children: [
        //   ],
        // ),
      ),
    );
  }
}
