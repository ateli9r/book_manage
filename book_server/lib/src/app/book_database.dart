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

  ///
  Future<List<BookAssetTbl>?> search() async {
    if (prisma == null) initDatasource();

    final items = await prisma?.bookAssetTbl.findMany(
      where: const BOOKASSETTBLWhereInput(
        useYn: StringFilter(equals: 'Y'),
      ),
    );

    return items?.toList();
  }
}
