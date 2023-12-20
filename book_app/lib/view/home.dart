import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import '../view_model/book_list_model.dart';
import 'book_list.dart';

class HomePageWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BookListWidget(
      httpClient: http.Client(),
      viewModel: BookListModel(),
    );
  }
}
