import 'dart:io';

import 'package:book_server/src/generated/prisma/prisma_client.dart';
import 'package:book_server/src/model/book_model.dart';
import 'package:book_server/src/model/dbinfo_model.dart';
import 'package:orm/logger.dart';

/// 데이터 컨트롤러
class DataController {
  /// 생성자
  factory DataController() {
    return _instance;
  }

  DataController._privateConstructor();
  static final DataController _instance = DataController._privateConstructor();

  /// 초기화 여부
  bool isInit = false;

  /// DB 핸들러
  PrismaClient? prisma;

  /// DB 접속정보
  String? connString;

  /// 시스템 환경변수로 DB 접속정보 초기화
  String readConnString() {
    return DBInfoModel(
      dbUser: Platform.environment['BOOK_MANAGE_DB_USER'] ?? 'test',
      dbPassword: Platform.environment['BOOK_MANAGE_DB_PASS'] ?? 'test1234',
      dbHost: Platform.environment['BOOK_MANAGE_DB_HOST'] ?? '192.168.0.151',
      dbPort: Platform.environment['BOOK_MANAGE_DB_PORT'] ?? '3306',
      dbSchema: Platform.environment['BOOK_MANAGE_DB_SCHEMA'] ?? 'groupware',
    ).toString();
  }

  /// DB 핸들러 초기화
  void initDatasource() {
    if (isInit) return;
    prisma = PrismaClient(
      stdout: Event.values,
      datasources: Datasources(
        db: readConnString(),
      ),
    );
    isInit = true;
  }

  /// raw sql 쿼리
  Future<dynamic> queryRaw(String sql) async {
    if (prisma == null) initDatasource();
    return await prisma?.$queryRaw(sql);
  }

  /// raw sql 실행
  Future<dynamic> executeRaw(String sql) async {
    if (prisma == null) initDatasource();
    // return await prisma?.$queryRaw(sql);
    return await prisma?.$executeRaw(sql);
  }

  /// 로그인 회원 조회
  Future<List<StMngrMst>?> findMngrSignIn(
      String userId, String password) async {
    if (prisma == null) initDatasource();

    final items = await prisma?.stMngrMst.findMany(
      where: STMNGRMSTWhereInput(
        AND: [
          STMNGRMSTWhereInput(
            mngrId: StringFilter(equals: userId),
          ),
          STMNGRMSTWhereInput(
            mngrPw: StringNullableFilter(equals: password),
          ),
        ],
      ),
    );

    return items?.toList();
  }

  /// 도서 조회
  Future<List<BookAssetTbl>?> findBookAsset(String keyword) async {
    if (prisma == null) initDatasource();

    final items = await prisma?.bookAssetTbl.findMany(
      where: BOOKASSETTBLWhereInput(
        useYn: const StringFilter(equals: 'Y'),
        OR: [
          BOOKASSETTBLWhereInput(
            assetNo: StringFilter(
              equals: keyword,
            ),
          ),
          BOOKASSETTBLWhereInput(
            bookNm: StringNullableFilter(
              contains: keyword,
            ),
          ),
        ],
      ),
    );

    return items?.toList();
  }

  /// 도서 대출/반납
  Future<bool> updateBookRent(BookModel book) async {
    if (prisma == null) initDatasource();

    final data = await prisma?.bookAssetTbl.update(
      where: BOOKASSETTBLWhereUniqueInput(
        seq: BigInt.from(book.seq),
      ),
      data: BOOKASSETTBLUpdateInput(
        rentYn: NullableStringFieldUpdateOperationsInput(set: book.rentYn),
        rentUser: NullableStringFieldUpdateOperationsInput(set: book.rentUser),
      ),
    );

    return data != null;
  }
}
