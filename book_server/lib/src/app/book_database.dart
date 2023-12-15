import 'package:book_server/src/app/book_domain.dart';
import 'package:book_server/src/generated/prisma/prisma_client.dart';
import 'package:orm/logger.dart';

/// 도서 데이터베이스
class BookDatabase {
  /// 생성자
  factory BookDatabase() {
    return _instance;
  }

  BookDatabase._privateConstructor();
  static final BookDatabase _instance = BookDatabase._privateConstructor();

  /// 초기화 여부
  bool isInit = false;

  /// DB 핸들러
  PrismaClient? prisma;

  /// DB 접속정보 세팅
  String readConnString() {
    return 'mysql://test:test1234@192.168.0.151:3306/groupware?allowPublicKeyRetrieval=true';
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
  Future<bool> updateBookRent(Book book) async {
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
