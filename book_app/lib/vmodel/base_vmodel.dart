import 'package:book_app/service/data_service.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import '../model/user_model.dart';
import 'common_vmodel.dart';

/// 기본 VModel
class BaseVModel {
  BaseVModel({this.client});
  http.Client? client;

  BuildContext? context;
  void Function(void Function() fn)? setState;

  bool isAlert = false;
  bool isLoading = false;

  VModelStatus status = VModelStatus.idle;

  void initialize(BuildContext context, Function(void Function() fn) setState) {
    this.context = context;
    this.setState = setState;
  }
}

/// VModel 상태
enum VModelStatus {
  /// 초기상태
  idle,

  /// 에러
  error,

  /// 처리완료
  finish,
}
