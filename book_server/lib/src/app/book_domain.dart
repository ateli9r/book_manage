/// 도서 도메인
class Book {
  /// 생성자
  Book({
    required this.bookNm,
    required this.assetNo,
    required this.publisher,
  });

  /// json -> domain
  Book.fromJson(Map<String, dynamic> json)
      : bookNm = json['bookNm'] as String,
        assetNo = json['assetNo'] as String,
        publisher = json['publisher'] as String;

  /// domain -> json
  Map<String, dynamic> toJson() => {
        'bookNm': bookNm,
        'assetNo': assetNo,
        'publisher': publisher,
      };

  /// 도서명
  String bookNm;

  /// 관리번호
  String assetNo;

  /// 출판사
  String publisher;
}
