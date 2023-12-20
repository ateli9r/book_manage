import 'dart:convert';
import 'package:http/http.dart' as http;

enum BookRentVModelStatus { idle, error, ok }

class BookRentVModel {
  BookRentVModel({this.client});
  http.Client? client;

  BookRentVModelStatus status = BookRentVModelStatus.idle;
}
