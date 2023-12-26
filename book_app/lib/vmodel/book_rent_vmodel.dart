import 'package:book_app/service/data_service.dart';
import 'package:book_app/service/status_service.dart';
import 'package:book_app/vmodel/base_vmodel.dart';
import 'package:book_app/vmodel/common_vmodel.dart';
import 'package:flutter/material.dart';
import '../view/scan_view.dart';

enum BookRentVModelReqCode {
  /// 대출
  reqCodeRent('rent', '도서대출'),

  /// 반납
  reqCodeReturn('return', '도서반납');

  const BookRentVModelReqCode(this.reqCode, this.title);
  final String reqCode;
  final String title;
}

class BookRentVModel extends BaseVModel {
  /// 생성자
  BookRentVModel({
    required this.targetAssetNo,
    required this.targetUserId,
    super.client,
  });

  /// 대상 도서번호
  String targetAssetNo;

  /// 도서 대출자 ID
  String? targetUserId;

  /// 대출/반납 api 요청 결과
  bool? isSuccess;

  /// 대출 가능 여부
  /// : 도서 대출자 ID == null
  bool get isAllowRent {
    if (targetUserId != null && targetUserId!.isNotEmpty) return false;
    return true;
  }

  /// 반납 가능 여부
  /// : 도서 대출자 ID == 로그인 사용자 ID
  bool get isAllowReturn =>
      (targetUserId ?? '') == (StatusService.shared.getUserInfo?.userId ?? '');

  /// 버튼 라벨
  /// : 대출 가능 여부(Y) = 도서대출, 반납 가능 여부(Y) = 도서반납, 기타 = ''
  String get rentLabel {
    if (isAllowRent) return '도서대출';
    if (isAllowReturn) return '도서반납';
    return '';
  }

  /// 요청 코드
  /// : 대출 가능 여부(Y) = rent, 반납 가능 여부(Y) = return, 기타 = null
  BookRentVModelReqCode? get reqCode {
    if (isAllowRent) return BookRentVModelReqCode.reqCodeRent;
    if (isAllowReturn) return BookRentVModelReqCode.reqCodeReturn;
    return null;
  }

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
      // api 요청
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

    if (context != null && (isSuccess ?? false)) {
      final title = this.reqCode?.title ?? '';
      final message = '$title 되었습니다.';

      await CommonVModel.shared.showMessage(context, title, message);

      Navigator.of(context!).pop();
    }
  }
}
