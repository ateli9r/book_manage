import 'package:book_app/page/book_list.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:book_app/model/view/book_list_model.dart';

class HomePageWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BookListWidget(
      httpClient: http.Client(),
      viewModel: BookListModel(),
    );
  }
}
