import 'package:flutter/material.dart';
import '../model/book_model.dart';
import '../vmodel/book_rent_vmodel.dart';

class BookDetailWidget extends StatefulWidget {
  const BookDetailWidget({
    required this.book,
    required this.viewModel,
    super.key,
  });

  final BookModel book;
  final BookRentVModel viewModel;

  @override
  State<BookDetailWidget> createState() => _BookDetailWidgetState();
}

class _BookDetailWidgetState extends State<BookDetailWidget> {
  @override
  Widget build(BuildContext context) {
    widget.viewModel.initialize(context, setState);

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
                  width: 130,
                  height: 200,
                  decoration: BoxDecoration(
                    color: Colors.blueGrey,
                    border: Border.all(
                      color: const Color(0xFF000000),
                    ),
                  ),
                ),
              ),
            ],
          ),
          Text(
            widget.book.bookNm,
            style: const TextStyle(
              fontSize: 20,
            ),
          ),
          Text(
            widget.book.publisher,
            style: const TextStyle(
              fontSize: 14,
            ),
          ),
          // Padding(
          //   padding: EdgeInsets.all(20.0),
          //   child: Text('#내용'),
          // ),
        ],
      ),
      bottomNavigationBar: BottomAppBar(
        child: widget.viewModel.isAllowRent || widget.viewModel.isAllowReturn
            ? ElevatedButton.icon(
                icon: const Icon(Icons.qr_code),
                onPressed: widget.viewModel.onPressedRent,
                label: Text(widget.viewModel.rentLabel),
              )
            : Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    '대출불가',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.red,
                    ),
                  ),
                  // Text('홍길동 (2023-12-06)'),
                  Text(widget.book.rentUser ?? '#'),
                  Text(widget.book.rentYn ?? '#'),
                ],
              ),
      ),
    );
  }
}
