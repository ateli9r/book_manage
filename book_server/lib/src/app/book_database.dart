import 'package:book_server/src/app/book_domain.dart';
import 'package:book_server/src/generated/prisma/prisma_client.dart';
import 'package:orm/logger.dart';

///
class BookDatabase {
  ///
  factory BookDatabase() {
    return _instance;
  }

  BookDatabase._privateConstructor();
  static final BookDatabase _instance = BookDatabase._privateConstructor();

  ///
  bool isInit = false;

  ///
  PrismaClient? prisma;

  ///
  String readConnString() {
    return 'mysql://test:test1234@192.168.0.151:3306/groupware?allowPublicKeyRetrieval=true';
  }

  ///
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

  ///
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
}
