/// 도서 도메인
class BookModel {
  /// 생성자
  BookModel({
    required this.seq,
    required this.bookNm,
    required this.assetNo,
    required this.publisher,
    this.rentYn,
    this.rentUser,
  });

  /// json -> domain
  BookModel.fromJson(Map<String, dynamic> json)
      : seq = json['seq'] as int,
        bookNm = json['bookNm'] as String,
        assetNo = json['assetNo'] as String,
        publisher = json['publisher'] as String,
        rentYn = json['rentYn'] as String?,
        rentUser = json['rentUser'] as String?;

  /// domain -> json
  Map<String, dynamic> toJson() => {
        'seq': seq,
        'bookNm': bookNm,
        'assetNo': assetNo,
        'publisher': publisher,
        'rentYn': rentYn,
        'rentUser': rentUser,
      };

  /// 도서ID
  int seq;

  /// 도서명
  String bookNm;

  /// 관리번호
  String assetNo;

  /// 출판사
  String publisher;

  /// 대출 여부
  String? rentYn;

  /// 대출 사용자
  String? rentUser;
}
