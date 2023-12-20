import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import '../model/book_model.dart';
import '../vmodel/book_list_vmodel.dart';
import 'book_list_item_view.dart';

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
  @override
  Widget build(BuildContext context) {
    widget.viewModel.initialize(context, setState);

    return Scaffold(
      appBar: AppBar(title: const Text('도서 목록')),
      body: Column(
        children: [
          // 검색
          Column(
            children: [
              TextField(
                controller: widget.viewModel.keywordText,
                decoration: const InputDecoration(
                  hintText: '책 제목, 관리번호',
                  border: InputBorder.none,
                  icon: Padding(
                    padding: EdgeInsets.only(left: 13.0),
                    child: Icon(Icons.search),
                  ),
                ),
                onChanged: widget.viewModel.onChangedKeyword,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Expanded(
                    child: ElevatedButton.icon(
                      onPressed: widget.viewModel.onPressedFindByQrcode,
                      icon: const Icon(Icons.qr_code),
                      label: const Text('QR스캔'),
                    ),
                  ),
                  const SizedBox(width: 10),
                  Expanded(
                    child: ElevatedButton.icon(
                      onPressed: widget.viewModel.onPressedClearKeyword,
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
            future: widget.viewModel.getBookList(),
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
                          widget.viewModel.onTapItem(bookList[index].assetNo);
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
