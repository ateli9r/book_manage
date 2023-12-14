/// 도서 도메인
class Book {
  /// 생성자
  Book({
    required this.bookNm,
    required this.assetNo,
    required this.publisher,
    this.rentYn,
    this.rentUser,
    this.seq,
  });

  /// json -> domain
  Book.fromJson(Map<String, dynamic> json)
      : bookNm = json['bookNm'] as String,
        assetNo = json['assetNo'] as String,
        publisher = json['publisher'] as String,
        rentYn = json['rentYn'] as String?,
        rentUser = json['rentUser'] as String?,
        seq = json['seq'] as BigInt?;

  /// domain -> json
  Map<String, dynamic> toJson() => {
        'bookNm': bookNm,
        'assetNo': assetNo,
        'publisher': publisher,
        'rentYn': rentYn,
        'rentUser': rentUser,
        'seq': seq,
      };

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

  /// 도서ID
  BigInt? seq;
}
