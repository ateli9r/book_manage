import 'package:book_app/service/data_service.dart';
import 'package:book_app/service/status_service.dart';
import 'package:book_app/vmodel/base_vmodel.dart';
import 'package:http/http.dart' as http;
import '../model/user_model.dart';
import 'common_vmodel.dart';

class LoginVModel extends BaseVModel {
  LoginVModel({super.client});

  String userId = '';
  String password = '';

  /// 아이디 입력
  void onChangedUserId(String value) {
    userId = value;
  }

  /// 패스워드 입력
  void onChangedPassword(String value) {
    password = value;
  }

  /// 로그인 버튼 클릭
  void onPressedLogin() async {
    if (userId.isEmpty || password.isEmpty) {
      CommonVModel.shared.showMessage(context, "로그인 실패", "아이디 또는 패스워드를 확인하세요.");
      status = VModelStatus.error;
      return;
    }

    if (setState != null) {
      setState!(() {
        isLoading = true;
      });
    }

    client ??= http.Client();
    final service = DataService(client: client!);
    final respData = await service.login(userId: userId, password: password)
        as Map<String, dynamic>;

    if (setState != null) {
      setState!(() {
        isLoading = false;
      });
    }

    if (!respData['isSuccess']) {
      CommonVModel.shared.showMessage(context, "로그인 실패", "아이디 또는 패스워드를 확인하세요.");
      status = VModelStatus.error;
      return;
    }

    if (StatusService.shared.setUserInfo != null) {
      StatusService.shared.setUserInfo!(UserInfo(
        userId: userId,
        userNm: '#UserNm',
        deptCd: '#deptCd',
      ));
    }

    status = VModelStatus.finish;
  }
}
