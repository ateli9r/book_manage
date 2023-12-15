import 'package:flutter/material.dart';

class BookListItem extends StatelessWidget {
  BookListItem({
    required this.bookNm,
    required this.assetNo,
    required this.publisher,
    super.key,
  });
  final String bookNm;
  final String assetNo;
  final String publisher;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          title: Text(bookNm),
          subtitle: Text(publisher),
          trailing: Text(assetNo),
        ),
        const Divider(),
      ],
    );
  }
}
