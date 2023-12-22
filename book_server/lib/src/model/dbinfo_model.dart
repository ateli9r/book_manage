/// DB접속정보 모델
class DBInfoModel {
  /// 생성자
  DBInfoModel({
    required this.dbUser,
    required this.dbPassword,
    required this.dbHost,
    required this.dbPort,
    required this.dbSchema,
  });

  /// 접속정보 문자열로 변환
  @override
  String toString() =>
      '$dbDriver://$dbUser:$dbPassword@$dbHost:$dbPort/$dbSchema?$dbOptions';

  /// DB 드라이버
  String dbDriver = 'mysql';

  /// DB 사용자
  String dbUser = '';

  /// DB 패스워드
  String dbPassword = '';

  /// DB 호스트
  String dbHost = '';

  /// DB 포트
  String dbPort = '';

  /// DB 스키마
  String dbSchema = '';

  /// DB 옵션
  String dbOptions = 'allowPublicKeyRetrieval=true';
}
