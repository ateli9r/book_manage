import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import '../service/data_service.dart';

import '../model/book_model.dart';
import '../vmodel/book_rent_vmodel.dart';
import 'book_detail_view.dart';
import 'book_list_item_view.dart';

import '../vmodel/book_list_vmodel.dart';
import '../vmodel/book_rent_vmodel.dart';

import 'scan_view.dart';

class BookListWidget extends StatefulWidget {
  const BookListWidget({
    required this.httpClient,
    required this.viewModel,
    super.key,
  });

  final http.Client httpClient;
  final BookListVModel viewModel;

  @override
  State<BookListWidget> createState() => _BookListWidgetState();
}

class _BookListWidgetState extends State<BookListWidget> {
  String _keyword = '';

  final _keywordController = TextEditingController();

  Future<List<BookModel>> getBookList() async {
    final db = DataService(client: widget.httpClient);
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
          Column(
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
          // 도서 목록
          FutureBuilder(
            future: getBookList(),
            builder: (BuildContext context,
                AsyncSnapshot<List<BookModel>> snapshot) {
              if (snapshot.hasData) {
                final bookList = snapshot.data as List<BookModel>;

                return Expanded(
                  child: ListView.builder(
                    itemCount: bookList.length,
                    itemBuilder: (BuildContext context, int index) {
                      return GestureDetector(
                        child: BookListItem(
                          bookNm: bookList[index].bookNm,
                          assetNo: bookList[index].assetNo,
                          publisher: bookList[index].publisher,
                        ),
                        onTap: () async {
                          DataService(client: http.Client())
                              .search(bookList[index].assetNo)
                              .then(
                                (books) => {
                                  Navigator.of(context).push(
                                    MaterialPageRoute(
                                      builder: (context) => BookDetailWidget(
                                        book: books[0],
                                        viewModel: BookRentVModel(),
                                      ),
                                    ),
                                  ),
                                },
                              );
                        },
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
