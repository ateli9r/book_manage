import 'package:book_app/service/data_service.dart';
import 'package:book_app/service/status_service.dart';
import 'package:book_app/vmodel/base_vmodel.dart';
import 'package:flutter/material.dart';
// import 'package:http/http.dart' as http;
// import 'scan_view.dart';
import '../view/scan_view.dart';

enum BookRentVModelReqCode {
  reqCodeRent('rent'),
  reqCodeReturn('return');

  const BookRentVModelReqCode(this.reqCode);
  final String reqCode;
}

class BookRentVModel extends BaseVModel {
  /// 생성자
  BookRentVModel({
    required this.targetAssetNo,
    super.client,
  });

  ///
  BookRentVModelReqCode? reqCode;

  /// 대상 도서번호
  String targetAssetNo;

  ///
  String? targetUserId;

  /*
    String _reqCode = '';

    bool get isAllowRent => (!(widget.book.rentUser != null &&
        widget.book.rentUser!.isEmpty == false));

    bool get isAllowReturn => (widget.book.rentYn == 'Y');

    String get rentLabel => !isAllowReturn ? '도서대출' : '도서반납';
  */

  ///
  bool? isSuccess;

  ///
  bool isAllowRent = false;

  ///
  bool isAllowReturn = false;

  /// 버튼 라벨
  String rentLabel = '도서대출';

  /// 대출/반납 버튼 클릭
  void onPressedRent() {
    if (context != null) {
      Navigator.of(context!).push(
        MaterialPageRoute(
            builder: (context) => ScanPageWidget(setScanCode: requestRent)),
      );
    }

    status = VModelStatus.push;
  }

  /// 대출/반납 요청
  Future<void> requestRent(String text) async {
    isSuccess = null;

    var isAccept = false;
    final reqCode = this.reqCode?.reqCode ?? '';
    final loginUserId = StatusService.shared.getUserInfo?.userId ?? '';

    if (reqCode == 'return') {
      if (targetAssetNo == text && loginUserId == targetUserId) {
        isAccept = true;
      }
    } else if (reqCode == 'rent') {
      if (targetAssetNo == text) {
        isAccept = true;
      }
    }

    if (isAccept) {
      final service = DataService(client: client);
      final resp = await service.rent(
        reqCode: reqCode,
        userId: StatusService.shared.getUserInfo?.userId ?? '',
        assetNo: targetAssetNo,
      );

      if (resp.containsKey('isSuccess')) {
        isSuccess = resp['isSuccess'];
      }
    } else {
      isSuccess = false;
    }

    status = VModelStatus.idle;
  }
}
