import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import '../vmodel/book_list_vmodel.dart';
import 'book_list_view.dart';

class HomePageWidget extends StatelessWidget {
  const HomePageWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return BookListWidget(
      httpClient: http.Client(),
      viewModel: BookListVModel(),
    );
  }
}
