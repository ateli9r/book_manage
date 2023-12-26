import 'package:book_app/model/user_model.dart';

class StatusService {
  StatusService._privateConstructor();
  static final StatusService shared = StatusService._privateConstructor();

  ///
  void Function(void Function() fn)? setStateApp;

  ///
  UserInfo? _userInfo;

  ///
  UserInfo? get getUserInfo => _userInfo;

  void setUserInfo(UserInfo userInfo) {
    if (setStateApp != null) {
      setStateApp!(() {
        _userInfo = userInfo;
      });
    } else {
      _userInfo = userInfo;
    }
  }
}
