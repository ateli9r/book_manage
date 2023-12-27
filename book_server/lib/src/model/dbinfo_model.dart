import 'dart:io';

/// DB접속정보 모델
class DBInfoModel {
  /// 생성자
  DBInfoModel({
    required this.dbDriver,
    required this.dbUser,
    required this.dbPassword,
    required this.dbHost,
    required this.dbPort,
    required this.dbSchema,
    required this.dbOptions,
  });

  /// 환경변수 파싱
  factory DBInfoModel.readEnv(String envKey) {
    final dbUrl = Platform.environment[envKey] ?? '';

    final buffer0 = dbUrl.split('/');
    if (buffer0.length != 4) throw Exception('invalid url');

    final buffer10 = buffer0[2].split('@');
    final buffer11 = buffer10[0].split(':');
    final buffer12 = buffer10[1].split(':');
    final buffer20 = buffer0[3].split('?');

    final dbDriver = buffer0[0].replaceAll(':', '');
    final dbUser = buffer11[0];
    final dbPassword = Uri.decodeQueryComponent(buffer11[1]);
    final dbHost = buffer12[0];
    final dbPort = buffer12[1];
    final dbSchema = buffer20[0];
    final dbOptions = buffer20[1];

    return DBInfoModel(
      dbDriver: dbDriver,
      dbUser: dbUser,
      dbPassword: dbPassword,
      dbHost: dbHost,
      dbPort: dbPort,
      dbSchema: dbSchema,
      dbOptions: dbOptions,
    );
  }

  ///
  factory DBInfoModel.testDB() {
    return DBInfoModel(
      dbDriver: 'mysql',
      dbUser: 'test',
      dbPassword: 'test1234',
      dbHost: '192.168.0.151',
      dbPort: '3306',
      dbSchema: 'groupware',
      dbOptions: 'allowPublicKeyRetrieval=true',
    );
  }

  /// 접속정보 문자열로 변환
  @override
  String toString() {
    final password = Uri.encodeQueryComponent(dbPassword);
    return '$dbDriver://$dbUser:$password@$dbHost:$dbPort/$dbSchema?$dbOptions';
  }

  /// DB 드라이버
  String dbDriver;

  /// DB 사용자
  String dbUser;

  /// DB 패스워드
  String dbPassword;

  /// DB 호스트
  String dbHost;

  /// DB 포트
  String dbPort;

  /// DB 스키마
  String dbSchema;

  /// DB 옵션
  String dbOptions;
}
