class BookModel {
  BookModel({
    required this.seq,
    required this.bookNm,
    required this.assetNo,
    required this.publisher,
    this.rentYn,
    this.rentUser,
  });

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
