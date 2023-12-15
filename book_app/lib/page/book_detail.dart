import 'package:book_app/model/domain/book_domain.dart';
import 'package:flutter/material.dart';
import 'package:book_app/model/view/book_list_model.dart';
import 'package:book_app/model/view/book_rent_model.dart';
import 'scan.dart';

class BookDetailWidget extends StatefulWidget {
  const BookDetailWidget({
    required this.book,
    required this.viewModel,
    super.key,
  });

  final Book book;
  final BookRentModel viewModel;

  @override
  State<BookDetailWidget> createState() => _BookDetailWidgetState();
}

class _BookDetailWidgetState extends State<BookDetailWidget> {
  // String _scanCode = '';
  String _reqCode = '';

  // String rentButtonLabel {
  // }
  bool get isAllowRent => (!(widget.book.rentUser != null &&
      widget.book.rentUser!.isEmpty == false));

  bool get isAllowReturn => (widget.book.rentYn == 'Y');

  String get rentLabel => !isAllowReturn ? '도서대출' : '도서반납';

  void updateRentBook(String scanCode) {
    // setState(() {
    //   scanCode = scanCode;
    // });
  }

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
          Padding(
            padding: EdgeInsets.all(20.0),
            child: Text('#내용'),
          ),
        ],
      ),
      bottomNavigationBar: BottomAppBar(
        child: isAllowRent
            ? ElevatedButton.icon(
                icon: const Icon(Icons.qr_code),
                onPressed: () {
                  print('tapped');

                  _reqCode = (!isAllowReturn) ? 'rent' : 'return';

                  Navigator.of(context).push(
                    MaterialPageRoute(
                        builder: (context) =>
                            ScanPageWidget(setScanCode: updateRentBook)),
                  );
                },
                label: Text(rentLabel),
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
                  // Text('홍길동 (2023-12-06)'),
                  Text(widget.book.rentUser ?? '#'),
                  Text(widget.book.rentYn ?? '#'),
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
