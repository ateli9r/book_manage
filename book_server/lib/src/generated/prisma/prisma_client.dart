// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:json_annotation/json_annotation.dart';
import 'package:orm/binary_engine.dart' as _i5;
import 'package:orm/engine_core.dart' as _i3;
import 'package:orm/graphql.dart' as _i2;
import 'package:orm/logger.dart' as _i4;
import 'package:orm/orm.dart' as _i1;
import 'package:orm/orm.dart' show DateTimeJsonConverter;

part 'prisma_client.g.dart';

enum BOOKASSETTBLScalarFieldEnum implements _i1.PrismaEnum {
  @JsonValue('SEQ')
  seq(r'SEQ'),
  @JsonValue('ASSET_NO')
  assetNo(r'ASSET_NO'),
  @JsonValue('BOOK_NM')
  bookNm(r'BOOK_NM'),
  @JsonValue('CNT')
  cnt(r'CNT'),
  @JsonValue('PUBLISHER')
  publisher(r'PUBLISHER'),
  @JsonValue('AMOUNT')
  amount(r'AMOUNT'),
  @JsonValue('BUY_DATE')
  buyDate(r'BUY_DATE'),
  @JsonValue('MNG_DEPT')
  mngDept(r'MNG_DEPT'),
  @JsonValue('RENT_YN')
  rentYn(r'RENT_YN'),
  @JsonValue('RENT_USER')
  rentUser(r'RENT_USER'),
  @JsonValue('REMARKS')
  remarks(r'REMARKS'),
  @JsonValue('USE_YN')
  useYn(r'USE_YN'),
  @JsonValue('DEL_YN')
  delYn(r'DEL_YN'),
  @JsonValue('REG_DATE')
  regDate(r'REG_DATE'),
  @JsonValue('UPD_DATE')
  updDate(r'UPD_DATE');

  const BOOKASSETTBLScalarFieldEnum([this.originalName]);

  @override
  final String? originalName;
}

enum STMNGRMSTScalarFieldEnum implements _i1.PrismaEnum {
  @JsonValue('MNGR_ID')
  mngrId(r'MNGR_ID'),
  @JsonValue('MNGR_NM')
  mngrNm(r'MNGR_NM'),
  @JsonValue('MNGR_PW')
  mngrPw(r'MNGR_PW'),
  @JsonValue('GRP_CD')
  grpCd(r'GRP_CD'),
  @JsonValue('GRADE')
  grade(r'GRADE'),
  @JsonValue('PERM_CD')
  permCd(r'PERM_CD'),
  @JsonValue('ACS_YN')
  acsYn(r'ACS_YN'),
  @JsonValue('CLPH')
  clph(r'CLPH'),
  @JsonValue('EMP_NO')
  empNo(r'EMP_NO'),
  @JsonValue('JOIN_DATE')
  joinDate(r'JOIN_DATE'),
  @JsonValue('PWD_WRONG_CNT')
  pwdWrongCnt(r'PWD_WRONG_CNT'),
  @JsonValue('PWD_WRONG_DATE')
  pwdWrongDate(r'PWD_WRONG_DATE'),
  @JsonValue('LST_LOGIN_DATE')
  lstLoginDate(r'LST_LOGIN_DATE'),
  @JsonValue('FLPTH')
  flpth(r'FLPTH'),
  @JsonValue('FILE_NM')
  fileNm(r'FILE_NM'),
  @JsonValue('REG_ID')
  regId(r'REG_ID'),
  @JsonValue('REG_DATE')
  regDate(r'REG_DATE'),
  @JsonValue('EDIT_ID')
  editId(r'EDIT_ID'),
  @JsonValue('EDIT_DATE')
  editDate(r'EDIT_DATE'),
  @JsonValue('DEL_ID')
  delId(r'DEL_ID'),
  @JsonValue('DEL_DATE')
  delDate(r'DEL_DATE');

  const STMNGRMSTScalarFieldEnum([this.originalName]);

  @override
  final String? originalName;
}

enum SortOrder implements _i1.PrismaEnum {
  asc,
  desc;

  @override
  String? get originalName => null;
}

enum NullsOrder implements _i1.PrismaEnum {
  first,
  last;

  @override
  String? get originalName => null;
}

@_i1.jsonSerializable
class BOOKASSETTBLWhereInput implements _i1.JsonSerializable {
  const BOOKASSETTBLWhereInput({
    this.AND,
    this.OR,
    this.NOT,
    this.seq,
    this.assetNo,
    this.bookNm,
    this.cnt,
    this.publisher,
    this.amount,
    this.buyDate,
    this.mngDept,
    this.rentYn,
    this.rentUser,
    this.remarks,
    this.useYn,
    this.delYn,
    this.regDate,
    this.updDate,
  });

  factory BOOKASSETTBLWhereInput.fromJson(Map<String, dynamic> json) =>
      _$BOOKASSETTBLWhereInputFromJson(json);

  final Iterable<BOOKASSETTBLWhereInput>? AND;

  final Iterable<BOOKASSETTBLWhereInput>? OR;

  final Iterable<BOOKASSETTBLWhereInput>? NOT;

  @JsonKey(name: r'SEQ')
  final BigIntFilter? seq;

  @JsonKey(name: r'ASSET_NO')
  final StringFilter? assetNo;

  @JsonKey(name: r'BOOK_NM')
  final StringNullableFilter? bookNm;

  @JsonKey(name: r'CNT')
  final IntNullableFilter? cnt;

  @JsonKey(name: r'PUBLISHER')
  final StringNullableFilter? publisher;

  @JsonKey(name: r'AMOUNT')
  final IntNullableFilter? amount;

  @JsonKey(name: r'BUY_DATE')
  final StringNullableFilter? buyDate;

  @JsonKey(name: r'MNG_DEPT')
  final StringNullableFilter? mngDept;

  @JsonKey(name: r'RENT_YN')
  final StringNullableFilter? rentYn;

  @JsonKey(name: r'RENT_USER')
  final StringNullableFilter? rentUser;

  @JsonKey(name: r'REMARKS')
  final StringNullableFilter? remarks;

  @JsonKey(name: r'USE_YN')
  final StringFilter? useYn;

  @JsonKey(name: r'DEL_YN')
  final StringFilter? delYn;

  @JsonKey(name: r'REG_DATE')
  final DateTimeFilter? regDate;

  @JsonKey(name: r'UPD_DATE')
  final DateTimeNullableFilter? updDate;

  @override
  Map<String, dynamic> toJson() => _$BOOKASSETTBLWhereInputToJson(this);
}

@_i1.jsonSerializable
class BOOKASSETTBLOrderByWithRelationInput implements _i1.JsonSerializable {
  const BOOKASSETTBLOrderByWithRelationInput({
    this.seq,
    this.assetNo,
    this.bookNm,
    this.cnt,
    this.publisher,
    this.amount,
    this.buyDate,
    this.mngDept,
    this.rentYn,
    this.rentUser,
    this.remarks,
    this.useYn,
    this.delYn,
    this.regDate,
    this.updDate,
  });

  factory BOOKASSETTBLOrderByWithRelationInput.fromJson(
          Map<String, dynamic> json) =>
      _$BOOKASSETTBLOrderByWithRelationInputFromJson(json);

  @JsonKey(name: r'SEQ')
  final SortOrder? seq;

  @JsonKey(name: r'ASSET_NO')
  final SortOrder? assetNo;

  @JsonKey(name: r'BOOK_NM')
  final SortOrder? bookNm;

  @JsonKey(name: r'CNT')
  final SortOrder? cnt;

  @JsonKey(name: r'PUBLISHER')
  final SortOrder? publisher;

  @JsonKey(name: r'AMOUNT')
  final SortOrder? amount;

  @JsonKey(name: r'BUY_DATE')
  final SortOrder? buyDate;

  @JsonKey(name: r'MNG_DEPT')
  final SortOrder? mngDept;

  @JsonKey(name: r'RENT_YN')
  final SortOrder? rentYn;

  @JsonKey(name: r'RENT_USER')
  final SortOrder? rentUser;

  @JsonKey(name: r'REMARKS')
  final SortOrder? remarks;

  @JsonKey(name: r'USE_YN')
  final SortOrder? useYn;

  @JsonKey(name: r'DEL_YN')
  final SortOrder? delYn;

  @JsonKey(name: r'REG_DATE')
  final SortOrder? regDate;

  @JsonKey(name: r'UPD_DATE')
  final SortOrder? updDate;

  @override
  Map<String, dynamic> toJson() =>
      _$BOOKASSETTBLOrderByWithRelationInputToJson(this);
}

@_i1.jsonSerializable
class BOOKASSETTBLWhereUniqueInput implements _i1.JsonSerializable {
  const BOOKASSETTBLWhereUniqueInput({this.seq});

  factory BOOKASSETTBLWhereUniqueInput.fromJson(Map<String, dynamic> json) =>
      _$BOOKASSETTBLWhereUniqueInputFromJson(json);

  @JsonKey(name: r'SEQ')
  final BigInt? seq;

  @override
  Map<String, dynamic> toJson() => _$BOOKASSETTBLWhereUniqueInputToJson(this);
}

@_i1.jsonSerializable
class BOOKASSETTBLOrderByWithAggregationInput implements _i1.JsonSerializable {
  const BOOKASSETTBLOrderByWithAggregationInput({
    this.seq,
    this.assetNo,
    this.bookNm,
    this.cnt,
    this.publisher,
    this.amount,
    this.buyDate,
    this.mngDept,
    this.rentYn,
    this.rentUser,
    this.remarks,
    this.useYn,
    this.delYn,
    this.regDate,
    this.updDate,
    this.$count,
    this.$avg,
    this.$max,
    this.$min,
    this.$sum,
  });

  factory BOOKASSETTBLOrderByWithAggregationInput.fromJson(
          Map<String, dynamic> json) =>
      _$BOOKASSETTBLOrderByWithAggregationInputFromJson(json);

  @JsonKey(name: r'SEQ')
  final SortOrder? seq;

  @JsonKey(name: r'ASSET_NO')
  final SortOrder? assetNo;

  @JsonKey(name: r'BOOK_NM')
  final SortOrder? bookNm;

  @JsonKey(name: r'CNT')
  final SortOrder? cnt;

  @JsonKey(name: r'PUBLISHER')
  final SortOrder? publisher;

  @JsonKey(name: r'AMOUNT')
  final SortOrder? amount;

  @JsonKey(name: r'BUY_DATE')
  final SortOrder? buyDate;

  @JsonKey(name: r'MNG_DEPT')
  final SortOrder? mngDept;

  @JsonKey(name: r'RENT_YN')
  final SortOrder? rentYn;

  @JsonKey(name: r'RENT_USER')
  final SortOrder? rentUser;

  @JsonKey(name: r'REMARKS')
  final SortOrder? remarks;

  @JsonKey(name: r'USE_YN')
  final SortOrder? useYn;

  @JsonKey(name: r'DEL_YN')
  final SortOrder? delYn;

  @JsonKey(name: r'REG_DATE')
  final SortOrder? regDate;

  @JsonKey(name: r'UPD_DATE')
  final SortOrder? updDate;

  @JsonKey(name: r'_count')
  final BOOKASSETTBLCountOrderByAggregateInput? $count;

  @JsonKey(name: r'_avg')
  final BOOKASSETTBLAvgOrderByAggregateInput? $avg;

  @JsonKey(name: r'_max')
  final BOOKASSETTBLMaxOrderByAggregateInput? $max;

  @JsonKey(name: r'_min')
  final BOOKASSETTBLMinOrderByAggregateInput? $min;

  @JsonKey(name: r'_sum')
  final BOOKASSETTBLSumOrderByAggregateInput? $sum;

  @override
  Map<String, dynamic> toJson() =>
      _$BOOKASSETTBLOrderByWithAggregationInputToJson(this);
}

@_i1.jsonSerializable
class BOOKASSETTBLScalarWhereWithAggregatesInput
    implements _i1.JsonSerializable {
  const BOOKASSETTBLScalarWhereWithAggregatesInput({
    this.AND,
    this.OR,
    this.NOT,
    this.seq,
    this.assetNo,
    this.bookNm,
    this.cnt,
    this.publisher,
    this.amount,
    this.buyDate,
    this.mngDept,
    this.rentYn,
    this.rentUser,
    this.remarks,
    this.useYn,
    this.delYn,
    this.regDate,
    this.updDate,
  });

  factory BOOKASSETTBLScalarWhereWithAggregatesInput.fromJson(
          Map<String, dynamic> json) =>
      _$BOOKASSETTBLScalarWhereWithAggregatesInputFromJson(json);

  final Iterable<BOOKASSETTBLScalarWhereWithAggregatesInput>? AND;

  final Iterable<BOOKASSETTBLScalarWhereWithAggregatesInput>? OR;

  final Iterable<BOOKASSETTBLScalarWhereWithAggregatesInput>? NOT;

  @JsonKey(name: r'SEQ')
  final BigIntWithAggregatesFilter? seq;

  @JsonKey(name: r'ASSET_NO')
  final StringWithAggregatesFilter? assetNo;

  @JsonKey(name: r'BOOK_NM')
  final StringNullableWithAggregatesFilter? bookNm;

  @JsonKey(name: r'CNT')
  final IntNullableWithAggregatesFilter? cnt;

  @JsonKey(name: r'PUBLISHER')
  final StringNullableWithAggregatesFilter? publisher;

  @JsonKey(name: r'AMOUNT')
  final IntNullableWithAggregatesFilter? amount;

  @JsonKey(name: r'BUY_DATE')
  final StringNullableWithAggregatesFilter? buyDate;

  @JsonKey(name: r'MNG_DEPT')
  final StringNullableWithAggregatesFilter? mngDept;

  @JsonKey(name: r'RENT_YN')
  final StringNullableWithAggregatesFilter? rentYn;

  @JsonKey(name: r'RENT_USER')
  final StringNullableWithAggregatesFilter? rentUser;

  @JsonKey(name: r'REMARKS')
  final StringNullableWithAggregatesFilter? remarks;

  @JsonKey(name: r'USE_YN')
  final StringWithAggregatesFilter? useYn;

  @JsonKey(name: r'DEL_YN')
  final StringWithAggregatesFilter? delYn;

  @JsonKey(name: r'REG_DATE')
  final DateTimeWithAggregatesFilter? regDate;

  @JsonKey(name: r'UPD_DATE')
  final DateTimeNullableWithAggregatesFilter? updDate;

  @override
  Map<String, dynamic> toJson() =>
      _$BOOKASSETTBLScalarWhereWithAggregatesInputToJson(this);
}

@_i1.jsonSerializable
class STMNGRMSTWhereInput implements _i1.JsonSerializable {
  const STMNGRMSTWhereInput({
    this.AND,
    this.OR,
    this.NOT,
    this.mngrId,
    this.mngrNm,
    this.mngrPw,
    this.grpCd,
    this.grade,
    this.permCd,
    this.acsYn,
    this.clph,
    this.empNo,
    this.joinDate,
    this.pwdWrongCnt,
    this.pwdWrongDate,
    this.lstLoginDate,
    this.flpth,
    this.fileNm,
    this.regId,
    this.regDate,
    this.editId,
    this.editDate,
    this.delId,
    this.delDate,
  });

  factory STMNGRMSTWhereInput.fromJson(Map<String, dynamic> json) =>
      _$STMNGRMSTWhereInputFromJson(json);

  final Iterable<STMNGRMSTWhereInput>? AND;

  final Iterable<STMNGRMSTWhereInput>? OR;

  final Iterable<STMNGRMSTWhereInput>? NOT;

  @JsonKey(name: r'MNGR_ID')
  final StringFilter? mngrId;

  @JsonKey(name: r'MNGR_NM')
  final StringFilter? mngrNm;

  @JsonKey(name: r'MNGR_PW')
  final StringNullableFilter? mngrPw;

  @JsonKey(name: r'GRP_CD')
  final StringNullableFilter? grpCd;

  @JsonKey(name: r'GRADE')
  final StringNullableFilter? grade;

  @JsonKey(name: r'PERM_CD')
  final StringFilter? permCd;

  @JsonKey(name: r'ACS_YN')
  final StringNullableFilter? acsYn;

  @JsonKey(name: r'CLPH')
  final StringNullableFilter? clph;

  @JsonKey(name: r'EMP_NO')
  final StringNullableFilter? empNo;

  @JsonKey(name: r'JOIN_DATE')
  final StringFilter? joinDate;

  @JsonKey(name: r'PWD_WRONG_CNT')
  final IntNullableFilter? pwdWrongCnt;

  @JsonKey(name: r'PWD_WRONG_DATE')
  final StringNullableFilter? pwdWrongDate;

  @JsonKey(name: r'LST_LOGIN_DATE')
  final StringNullableFilter? lstLoginDate;

  @JsonKey(name: r'FLPTH')
  final StringNullableFilter? flpth;

  @JsonKey(name: r'FILE_NM')
  final StringNullableFilter? fileNm;

  @JsonKey(name: r'REG_ID')
  final StringFilter? regId;

  @JsonKey(name: r'REG_DATE')
  final StringFilter? regDate;

  @JsonKey(name: r'EDIT_ID')
  final StringNullableFilter? editId;

  @JsonKey(name: r'EDIT_DATE')
  final StringNullableFilter? editDate;

  @JsonKey(name: r'DEL_ID')
  final StringNullableFilter? delId;

  @JsonKey(name: r'DEL_DATE')
  final StringNullableFilter? delDate;

  @override
  Map<String, dynamic> toJson() => _$STMNGRMSTWhereInputToJson(this);
}

@_i1.jsonSerializable
class STMNGRMSTOrderByWithRelationInput implements _i1.JsonSerializable {
  const STMNGRMSTOrderByWithRelationInput({
    this.mngrId,
    this.mngrNm,
    this.mngrPw,
    this.grpCd,
    this.grade,
    this.permCd,
    this.acsYn,
    this.clph,
    this.empNo,
    this.joinDate,
    this.pwdWrongCnt,
    this.pwdWrongDate,
    this.lstLoginDate,
    this.flpth,
    this.fileNm,
    this.regId,
    this.regDate,
    this.editId,
    this.editDate,
    this.delId,
    this.delDate,
  });

  factory STMNGRMSTOrderByWithRelationInput.fromJson(
          Map<String, dynamic> json) =>
      _$STMNGRMSTOrderByWithRelationInputFromJson(json);

  @JsonKey(name: r'MNGR_ID')
  final SortOrder? mngrId;

  @JsonKey(name: r'MNGR_NM')
  final SortOrder? mngrNm;

  @JsonKey(name: r'MNGR_PW')
  final SortOrder? mngrPw;

  @JsonKey(name: r'GRP_CD')
  final SortOrder? grpCd;

  @JsonKey(name: r'GRADE')
  final SortOrder? grade;

  @JsonKey(name: r'PERM_CD')
  final SortOrder? permCd;

  @JsonKey(name: r'ACS_YN')
  final SortOrder? acsYn;

  @JsonKey(name: r'CLPH')
  final SortOrder? clph;

  @JsonKey(name: r'EMP_NO')
  final SortOrder? empNo;

  @JsonKey(name: r'JOIN_DATE')
  final SortOrder? joinDate;

  @JsonKey(name: r'PWD_WRONG_CNT')
  final SortOrder? pwdWrongCnt;

  @JsonKey(name: r'PWD_WRONG_DATE')
  final SortOrder? pwdWrongDate;

  @JsonKey(name: r'LST_LOGIN_DATE')
  final SortOrder? lstLoginDate;

  @JsonKey(name: r'FLPTH')
  final SortOrder? flpth;

  @JsonKey(name: r'FILE_NM')
  final SortOrder? fileNm;

  @JsonKey(name: r'REG_ID')
  final SortOrder? regId;

  @JsonKey(name: r'REG_DATE')
  final SortOrder? regDate;

  @JsonKey(name: r'EDIT_ID')
  final SortOrder? editId;

  @JsonKey(name: r'EDIT_DATE')
  final SortOrder? editDate;

  @JsonKey(name: r'DEL_ID')
  final SortOrder? delId;

  @JsonKey(name: r'DEL_DATE')
  final SortOrder? delDate;

  @override
  Map<String, dynamic> toJson() =>
      _$STMNGRMSTOrderByWithRelationInputToJson(this);
}

@_i1.jsonSerializable
class STMNGRMSTWhereUniqueInput implements _i1.JsonSerializable {
  const STMNGRMSTWhereUniqueInput({this.mngrId});

  factory STMNGRMSTWhereUniqueInput.fromJson(Map<String, dynamic> json) =>
      _$STMNGRMSTWhereUniqueInputFromJson(json);

  @JsonKey(name: r'MNGR_ID')
  final String? mngrId;

  @override
  Map<String, dynamic> toJson() => _$STMNGRMSTWhereUniqueInputToJson(this);
}

@_i1.jsonSerializable
class STMNGRMSTOrderByWithAggregationInput implements _i1.JsonSerializable {
  const STMNGRMSTOrderByWithAggregationInput({
    this.mngrId,
    this.mngrNm,
    this.mngrPw,
    this.grpCd,
    this.grade,
    this.permCd,
    this.acsYn,
    this.clph,
    this.empNo,
    this.joinDate,
    this.pwdWrongCnt,
    this.pwdWrongDate,
    this.lstLoginDate,
    this.flpth,
    this.fileNm,
    this.regId,
    this.regDate,
    this.editId,
    this.editDate,
    this.delId,
    this.delDate,
    this.$count,
    this.$avg,
    this.$max,
    this.$min,
    this.$sum,
  });

  factory STMNGRMSTOrderByWithAggregationInput.fromJson(
          Map<String, dynamic> json) =>
      _$STMNGRMSTOrderByWithAggregationInputFromJson(json);

  @JsonKey(name: r'MNGR_ID')
  final SortOrder? mngrId;

  @JsonKey(name: r'MNGR_NM')
  final SortOrder? mngrNm;

  @JsonKey(name: r'MNGR_PW')
  final SortOrder? mngrPw;

  @JsonKey(name: r'GRP_CD')
  final SortOrder? grpCd;

  @JsonKey(name: r'GRADE')
  final SortOrder? grade;

  @JsonKey(name: r'PERM_CD')
  final SortOrder? permCd;

  @JsonKey(name: r'ACS_YN')
  final SortOrder? acsYn;

  @JsonKey(name: r'CLPH')
  final SortOrder? clph;

  @JsonKey(name: r'EMP_NO')
  final SortOrder? empNo;

  @JsonKey(name: r'JOIN_DATE')
  final SortOrder? joinDate;

  @JsonKey(name: r'PWD_WRONG_CNT')
  final SortOrder? pwdWrongCnt;

  @JsonKey(name: r'PWD_WRONG_DATE')
  final SortOrder? pwdWrongDate;

  @JsonKey(name: r'LST_LOGIN_DATE')
  final SortOrder? lstLoginDate;

  @JsonKey(name: r'FLPTH')
  final SortOrder? flpth;

  @JsonKey(name: r'FILE_NM')
  final SortOrder? fileNm;

  @JsonKey(name: r'REG_ID')
  final SortOrder? regId;

  @JsonKey(name: r'REG_DATE')
  final SortOrder? regDate;

  @JsonKey(name: r'EDIT_ID')
  final SortOrder? editId;

  @JsonKey(name: r'EDIT_DATE')
  final SortOrder? editDate;

  @JsonKey(name: r'DEL_ID')
  final SortOrder? delId;

  @JsonKey(name: r'DEL_DATE')
  final SortOrder? delDate;

  @JsonKey(name: r'_count')
  final STMNGRMSTCountOrderByAggregateInput? $count;

  @JsonKey(name: r'_avg')
  final STMNGRMSTAvgOrderByAggregateInput? $avg;

  @JsonKey(name: r'_max')
  final STMNGRMSTMaxOrderByAggregateInput? $max;

  @JsonKey(name: r'_min')
  final STMNGRMSTMinOrderByAggregateInput? $min;

  @JsonKey(name: r'_sum')
  final STMNGRMSTSumOrderByAggregateInput? $sum;

  @override
  Map<String, dynamic> toJson() =>
      _$STMNGRMSTOrderByWithAggregationInputToJson(this);
}

@_i1.jsonSerializable
class STMNGRMSTScalarWhereWithAggregatesInput implements _i1.JsonSerializable {
  const STMNGRMSTScalarWhereWithAggregatesInput({
    this.AND,
    this.OR,
    this.NOT,
    this.mngrId,
    this.mngrNm,
    this.mngrPw,
    this.grpCd,
    this.grade,
    this.permCd,
    this.acsYn,
    this.clph,
    this.empNo,
    this.joinDate,
    this.pwdWrongCnt,
    this.pwdWrongDate,
    this.lstLoginDate,
    this.flpth,
    this.fileNm,
    this.regId,
    this.regDate,
    this.editId,
    this.editDate,
    this.delId,
    this.delDate,
  });

  factory STMNGRMSTScalarWhereWithAggregatesInput.fromJson(
          Map<String, dynamic> json) =>
      _$STMNGRMSTScalarWhereWithAggregatesInputFromJson(json);

  final Iterable<STMNGRMSTScalarWhereWithAggregatesInput>? AND;

  final Iterable<STMNGRMSTScalarWhereWithAggregatesInput>? OR;

  final Iterable<STMNGRMSTScalarWhereWithAggregatesInput>? NOT;

  @JsonKey(name: r'MNGR_ID')
  final StringWithAggregatesFilter? mngrId;

  @JsonKey(name: r'MNGR_NM')
  final StringWithAggregatesFilter? mngrNm;

  @JsonKey(name: r'MNGR_PW')
  final StringNullableWithAggregatesFilter? mngrPw;

  @JsonKey(name: r'GRP_CD')
  final StringNullableWithAggregatesFilter? grpCd;

  @JsonKey(name: r'GRADE')
  final StringNullableWithAggregatesFilter? grade;

  @JsonKey(name: r'PERM_CD')
  final StringWithAggregatesFilter? permCd;

  @JsonKey(name: r'ACS_YN')
  final StringNullableWithAggregatesFilter? acsYn;

  @JsonKey(name: r'CLPH')
  final StringNullableWithAggregatesFilter? clph;

  @JsonKey(name: r'EMP_NO')
  final StringNullableWithAggregatesFilter? empNo;

  @JsonKey(name: r'JOIN_DATE')
  final StringWithAggregatesFilter? joinDate;

  @JsonKey(name: r'PWD_WRONG_CNT')
  final IntNullableWithAggregatesFilter? pwdWrongCnt;

  @JsonKey(name: r'PWD_WRONG_DATE')
  final StringNullableWithAggregatesFilter? pwdWrongDate;

  @JsonKey(name: r'LST_LOGIN_DATE')
  final StringNullableWithAggregatesFilter? lstLoginDate;

  @JsonKey(name: r'FLPTH')
  final StringNullableWithAggregatesFilter? flpth;

  @JsonKey(name: r'FILE_NM')
  final StringNullableWithAggregatesFilter? fileNm;

  @JsonKey(name: r'REG_ID')
  final StringWithAggregatesFilter? regId;

  @JsonKey(name: r'REG_DATE')
  final StringWithAggregatesFilter? regDate;

  @JsonKey(name: r'EDIT_ID')
  final StringNullableWithAggregatesFilter? editId;

  @JsonKey(name: r'EDIT_DATE')
  final StringNullableWithAggregatesFilter? editDate;

  @JsonKey(name: r'DEL_ID')
  final StringNullableWithAggregatesFilter? delId;

  @JsonKey(name: r'DEL_DATE')
  final StringNullableWithAggregatesFilter? delDate;

  @override
  Map<String, dynamic> toJson() =>
      _$STMNGRMSTScalarWhereWithAggregatesInputToJson(this);
}

@_i1.jsonSerializable
class BOOKASSETTBLCreateInput implements _i1.JsonSerializable {
  const BOOKASSETTBLCreateInput({
    this.seq,
    required this.assetNo,
    this.bookNm,
    this.cnt,
    this.publisher,
    this.amount,
    this.buyDate,
    this.mngDept,
    this.rentYn,
    this.rentUser,
    this.remarks,
    this.useYn,
    this.delYn,
    this.regDate,
    this.updDate,
  });

  factory BOOKASSETTBLCreateInput.fromJson(Map<String, dynamic> json) =>
      _$BOOKASSETTBLCreateInputFromJson(json);

  @JsonKey(name: r'SEQ')
  final BigInt? seq;

  @JsonKey(name: r'ASSET_NO')
  final String assetNo;

  @JsonKey(name: r'BOOK_NM')
  final String? bookNm;

  @JsonKey(name: r'CNT')
  final int? cnt;

  @JsonKey(name: r'PUBLISHER')
  final String? publisher;

  @JsonKey(name: r'AMOUNT')
  final int? amount;

  @JsonKey(name: r'BUY_DATE')
  final String? buyDate;

  @JsonKey(name: r'MNG_DEPT')
  final String? mngDept;

  @JsonKey(name: r'RENT_YN')
  final String? rentYn;

  @JsonKey(name: r'RENT_USER')
  final String? rentUser;

  @JsonKey(name: r'REMARKS')
  final String? remarks;

  @JsonKey(name: r'USE_YN')
  final String? useYn;

  @JsonKey(name: r'DEL_YN')
  final String? delYn;

  @JsonKey(name: r'REG_DATE')
  final DateTime? regDate;

  @JsonKey(name: r'UPD_DATE')
  final DateTime? updDate;

  @override
  Map<String, dynamic> toJson() => _$BOOKASSETTBLCreateInputToJson(this);
}

@_i1.jsonSerializable
class BOOKASSETTBLUncheckedCreateInput implements _i1.JsonSerializable {
  const BOOKASSETTBLUncheckedCreateInput({
    this.seq,
    required this.assetNo,
    this.bookNm,
    this.cnt,
    this.publisher,
    this.amount,
    this.buyDate,
    this.mngDept,
    this.rentYn,
    this.rentUser,
    this.remarks,
    this.useYn,
    this.delYn,
    this.regDate,
    this.updDate,
  });

  factory BOOKASSETTBLUncheckedCreateInput.fromJson(
          Map<String, dynamic> json) =>
      _$BOOKASSETTBLUncheckedCreateInputFromJson(json);

  @JsonKey(name: r'SEQ')
  final BigInt? seq;

  @JsonKey(name: r'ASSET_NO')
  final String assetNo;

  @JsonKey(name: r'BOOK_NM')
  final String? bookNm;

  @JsonKey(name: r'CNT')
  final int? cnt;

  @JsonKey(name: r'PUBLISHER')
  final String? publisher;

  @JsonKey(name: r'AMOUNT')
  final int? amount;

  @JsonKey(name: r'BUY_DATE')
  final String? buyDate;

  @JsonKey(name: r'MNG_DEPT')
  final String? mngDept;

  @JsonKey(name: r'RENT_YN')
  final String? rentYn;

  @JsonKey(name: r'RENT_USER')
  final String? rentUser;

  @JsonKey(name: r'REMARKS')
  final String? remarks;

  @JsonKey(name: r'USE_YN')
  final String? useYn;

  @JsonKey(name: r'DEL_YN')
  final String? delYn;

  @JsonKey(name: r'REG_DATE')
  final DateTime? regDate;

  @JsonKey(name: r'UPD_DATE')
  final DateTime? updDate;

  @override
  Map<String, dynamic> toJson() =>
      _$BOOKASSETTBLUncheckedCreateInputToJson(this);
}

@_i1.jsonSerializable
class BOOKASSETTBLUpdateInput implements _i1.JsonSerializable {
  const BOOKASSETTBLUpdateInput({
    this.seq,
    this.assetNo,
    this.bookNm,
    this.cnt,
    this.publisher,
    this.amount,
    this.buyDate,
    this.mngDept,
    this.rentYn,
    this.rentUser,
    this.remarks,
    this.useYn,
    this.delYn,
    this.regDate,
    this.updDate,
  });

  factory BOOKASSETTBLUpdateInput.fromJson(Map<String, dynamic> json) =>
      _$BOOKASSETTBLUpdateInputFromJson(json);

  @JsonKey(name: r'SEQ')
  final BigIntFieldUpdateOperationsInput? seq;

  @JsonKey(name: r'ASSET_NO')
  final StringFieldUpdateOperationsInput? assetNo;

  @JsonKey(name: r'BOOK_NM')
  final NullableStringFieldUpdateOperationsInput? bookNm;

  @JsonKey(name: r'CNT')
  final NullableIntFieldUpdateOperationsInput? cnt;

  @JsonKey(name: r'PUBLISHER')
  final NullableStringFieldUpdateOperationsInput? publisher;

  @JsonKey(name: r'AMOUNT')
  final NullableIntFieldUpdateOperationsInput? amount;

  @JsonKey(name: r'BUY_DATE')
  final NullableStringFieldUpdateOperationsInput? buyDate;

  @JsonKey(name: r'MNG_DEPT')
  final NullableStringFieldUpdateOperationsInput? mngDept;

  @JsonKey(name: r'RENT_YN')
  final NullableStringFieldUpdateOperationsInput? rentYn;

  @JsonKey(name: r'RENT_USER')
  final NullableStringFieldUpdateOperationsInput? rentUser;

  @JsonKey(name: r'REMARKS')
  final NullableStringFieldUpdateOperationsInput? remarks;

  @JsonKey(name: r'USE_YN')
  final StringFieldUpdateOperationsInput? useYn;

  @JsonKey(name: r'DEL_YN')
  final StringFieldUpdateOperationsInput? delYn;

  @JsonKey(name: r'REG_DATE')
  final DateTimeFieldUpdateOperationsInput? regDate;

  @JsonKey(name: r'UPD_DATE')
  final NullableDateTimeFieldUpdateOperationsInput? updDate;

  @override
  Map<String, dynamic> toJson() => _$BOOKASSETTBLUpdateInputToJson(this);
}

@_i1.jsonSerializable
class BOOKASSETTBLUncheckedUpdateInput implements _i1.JsonSerializable {
  const BOOKASSETTBLUncheckedUpdateInput({
    this.seq,
    this.assetNo,
    this.bookNm,
    this.cnt,
    this.publisher,
    this.amount,
    this.buyDate,
    this.mngDept,
    this.rentYn,
    this.rentUser,
    this.remarks,
    this.useYn,
    this.delYn,
    this.regDate,
    this.updDate,
  });

  factory BOOKASSETTBLUncheckedUpdateInput.fromJson(
          Map<String, dynamic> json) =>
      _$BOOKASSETTBLUncheckedUpdateInputFromJson(json);

  @JsonKey(name: r'SEQ')
  final BigIntFieldUpdateOperationsInput? seq;

  @JsonKey(name: r'ASSET_NO')
  final StringFieldUpdateOperationsInput? assetNo;

  @JsonKey(name: r'BOOK_NM')
  final NullableStringFieldUpdateOperationsInput? bookNm;

  @JsonKey(name: r'CNT')
  final NullableIntFieldUpdateOperationsInput? cnt;

  @JsonKey(name: r'PUBLISHER')
  final NullableStringFieldUpdateOperationsInput? publisher;

  @JsonKey(name: r'AMOUNT')
  final NullableIntFieldUpdateOperationsInput? amount;

  @JsonKey(name: r'BUY_DATE')
  final NullableStringFieldUpdateOperationsInput? buyDate;

  @JsonKey(name: r'MNG_DEPT')
  final NullableStringFieldUpdateOperationsInput? mngDept;

  @JsonKey(name: r'RENT_YN')
  final NullableStringFieldUpdateOperationsInput? rentYn;

  @JsonKey(name: r'RENT_USER')
  final NullableStringFieldUpdateOperationsInput? rentUser;

  @JsonKey(name: r'REMARKS')
  final NullableStringFieldUpdateOperationsInput? remarks;

  @JsonKey(name: r'USE_YN')
  final StringFieldUpdateOperationsInput? useYn;

  @JsonKey(name: r'DEL_YN')
  final StringFieldUpdateOperationsInput? delYn;

  @JsonKey(name: r'REG_DATE')
  final DateTimeFieldUpdateOperationsInput? regDate;

  @JsonKey(name: r'UPD_DATE')
  final NullableDateTimeFieldUpdateOperationsInput? updDate;

  @override
  Map<String, dynamic> toJson() =>
      _$BOOKASSETTBLUncheckedUpdateInputToJson(this);
}

@_i1.jsonSerializable
class BOOKASSETTBLCreateManyInput implements _i1.JsonSerializable {
  const BOOKASSETTBLCreateManyInput({
    this.seq,
    required this.assetNo,
    this.bookNm,
    this.cnt,
    this.publisher,
    this.amount,
    this.buyDate,
    this.mngDept,
    this.rentYn,
    this.rentUser,
    this.remarks,
    this.useYn,
    this.delYn,
    this.regDate,
    this.updDate,
  });

  factory BOOKASSETTBLCreateManyInput.fromJson(Map<String, dynamic> json) =>
      _$BOOKASSETTBLCreateManyInputFromJson(json);

  @JsonKey(name: r'SEQ')
  final BigInt? seq;

  @JsonKey(name: r'ASSET_NO')
  final String assetNo;

  @JsonKey(name: r'BOOK_NM')
  final String? bookNm;

  @JsonKey(name: r'CNT')
  final int? cnt;

  @JsonKey(name: r'PUBLISHER')
  final String? publisher;

  @JsonKey(name: r'AMOUNT')
  final int? amount;

  @JsonKey(name: r'BUY_DATE')
  final String? buyDate;

  @JsonKey(name: r'MNG_DEPT')
  final String? mngDept;

  @JsonKey(name: r'RENT_YN')
  final String? rentYn;

  @JsonKey(name: r'RENT_USER')
  final String? rentUser;

  @JsonKey(name: r'REMARKS')
  final String? remarks;

  @JsonKey(name: r'USE_YN')
  final String? useYn;

  @JsonKey(name: r'DEL_YN')
  final String? delYn;

  @JsonKey(name: r'REG_DATE')
  final DateTime? regDate;

  @JsonKey(name: r'UPD_DATE')
  final DateTime? updDate;

  @override
  Map<String, dynamic> toJson() => _$BOOKASSETTBLCreateManyInputToJson(this);
}

@_i1.jsonSerializable
class BOOKASSETTBLUpdateManyMutationInput implements _i1.JsonSerializable {
  const BOOKASSETTBLUpdateManyMutationInput({
    this.seq,
    this.assetNo,
    this.bookNm,
    this.cnt,
    this.publisher,
    this.amount,
    this.buyDate,
    this.mngDept,
    this.rentYn,
    this.rentUser,
    this.remarks,
    this.useYn,
    this.delYn,
    this.regDate,
    this.updDate,
  });

  factory BOOKASSETTBLUpdateManyMutationInput.fromJson(
          Map<String, dynamic> json) =>
      _$BOOKASSETTBLUpdateManyMutationInputFromJson(json);

  @JsonKey(name: r'SEQ')
  final BigIntFieldUpdateOperationsInput? seq;

  @JsonKey(name: r'ASSET_NO')
  final StringFieldUpdateOperationsInput? assetNo;

  @JsonKey(name: r'BOOK_NM')
  final NullableStringFieldUpdateOperationsInput? bookNm;

  @JsonKey(name: r'CNT')
  final NullableIntFieldUpdateOperationsInput? cnt;

  @JsonKey(name: r'PUBLISHER')
  final NullableStringFieldUpdateOperationsInput? publisher;

  @JsonKey(name: r'AMOUNT')
  final NullableIntFieldUpdateOperationsInput? amount;

  @JsonKey(name: r'BUY_DATE')
  final NullableStringFieldUpdateOperationsInput? buyDate;

  @JsonKey(name: r'MNG_DEPT')
  final NullableStringFieldUpdateOperationsInput? mngDept;

  @JsonKey(name: r'RENT_YN')
  final NullableStringFieldUpdateOperationsInput? rentYn;

  @JsonKey(name: r'RENT_USER')
  final NullableStringFieldUpdateOperationsInput? rentUser;

  @JsonKey(name: r'REMARKS')
  final NullableStringFieldUpdateOperationsInput? remarks;

  @JsonKey(name: r'USE_YN')
  final StringFieldUpdateOperationsInput? useYn;

  @JsonKey(name: r'DEL_YN')
  final StringFieldUpdateOperationsInput? delYn;

  @JsonKey(name: r'REG_DATE')
  final DateTimeFieldUpdateOperationsInput? regDate;

  @JsonKey(name: r'UPD_DATE')
  final NullableDateTimeFieldUpdateOperationsInput? updDate;

  @override
  Map<String, dynamic> toJson() =>
      _$BOOKASSETTBLUpdateManyMutationInputToJson(this);
}

@_i1.jsonSerializable
class BOOKASSETTBLUncheckedUpdateManyInput implements _i1.JsonSerializable {
  const BOOKASSETTBLUncheckedUpdateManyInput({
    this.seq,
    this.assetNo,
    this.bookNm,
    this.cnt,
    this.publisher,
    this.amount,
    this.buyDate,
    this.mngDept,
    this.rentYn,
    this.rentUser,
    this.remarks,
    this.useYn,
    this.delYn,
    this.regDate,
    this.updDate,
  });

  factory BOOKASSETTBLUncheckedUpdateManyInput.fromJson(
          Map<String, dynamic> json) =>
      _$BOOKASSETTBLUncheckedUpdateManyInputFromJson(json);

  @JsonKey(name: r'SEQ')
  final BigIntFieldUpdateOperationsInput? seq;

  @JsonKey(name: r'ASSET_NO')
  final StringFieldUpdateOperationsInput? assetNo;

  @JsonKey(name: r'BOOK_NM')
  final NullableStringFieldUpdateOperationsInput? bookNm;

  @JsonKey(name: r'CNT')
  final NullableIntFieldUpdateOperationsInput? cnt;

  @JsonKey(name: r'PUBLISHER')
  final NullableStringFieldUpdateOperationsInput? publisher;

  @JsonKey(name: r'AMOUNT')
  final NullableIntFieldUpdateOperationsInput? amount;

  @JsonKey(name: r'BUY_DATE')
  final NullableStringFieldUpdateOperationsInput? buyDate;

  @JsonKey(name: r'MNG_DEPT')
  final NullableStringFieldUpdateOperationsInput? mngDept;

  @JsonKey(name: r'RENT_YN')
  final NullableStringFieldUpdateOperationsInput? rentYn;

  @JsonKey(name: r'RENT_USER')
  final NullableStringFieldUpdateOperationsInput? rentUser;

  @JsonKey(name: r'REMARKS')
  final NullableStringFieldUpdateOperationsInput? remarks;

  @JsonKey(name: r'USE_YN')
  final StringFieldUpdateOperationsInput? useYn;

  @JsonKey(name: r'DEL_YN')
  final StringFieldUpdateOperationsInput? delYn;

  @JsonKey(name: r'REG_DATE')
  final DateTimeFieldUpdateOperationsInput? regDate;

  @JsonKey(name: r'UPD_DATE')
  final NullableDateTimeFieldUpdateOperationsInput? updDate;

  @override
  Map<String, dynamic> toJson() =>
      _$BOOKASSETTBLUncheckedUpdateManyInputToJson(this);
}

@_i1.jsonSerializable
class STMNGRMSTCreateInput implements _i1.JsonSerializable {
  const STMNGRMSTCreateInput({
    required this.mngrId,
    required this.mngrNm,
    this.mngrPw,
    this.grpCd,
    this.grade,
    required this.permCd,
    this.acsYn,
    this.clph,
    this.empNo,
    this.joinDate,
    this.pwdWrongCnt,
    this.pwdWrongDate,
    this.lstLoginDate,
    this.flpth,
    this.fileNm,
    required this.regId,
    required this.regDate,
    this.editId,
    this.editDate,
    this.delId,
    this.delDate,
  });

  factory STMNGRMSTCreateInput.fromJson(Map<String, dynamic> json) =>
      _$STMNGRMSTCreateInputFromJson(json);

  @JsonKey(name: r'MNGR_ID')
  final String mngrId;

  @JsonKey(name: r'MNGR_NM')
  final String mngrNm;

  @JsonKey(name: r'MNGR_PW')
  final String? mngrPw;

  @JsonKey(name: r'GRP_CD')
  final String? grpCd;

  @JsonKey(name: r'GRADE')
  final String? grade;

  @JsonKey(name: r'PERM_CD')
  final String permCd;

  @JsonKey(name: r'ACS_YN')
  final String? acsYn;

  @JsonKey(name: r'CLPH')
  final String? clph;

  @JsonKey(name: r'EMP_NO')
  final String? empNo;

  @JsonKey(name: r'JOIN_DATE')
  final String? joinDate;

  @JsonKey(name: r'PWD_WRONG_CNT')
  final int? pwdWrongCnt;

  @JsonKey(name: r'PWD_WRONG_DATE')
  final String? pwdWrongDate;

  @JsonKey(name: r'LST_LOGIN_DATE')
  final String? lstLoginDate;

  @JsonKey(name: r'FLPTH')
  final String? flpth;

  @JsonKey(name: r'FILE_NM')
  final String? fileNm;

  @JsonKey(name: r'REG_ID')
  final String regId;

  @JsonKey(name: r'REG_DATE')
  final String regDate;

  @JsonKey(name: r'EDIT_ID')
  final String? editId;

  @JsonKey(name: r'EDIT_DATE')
  final String? editDate;

  @JsonKey(name: r'DEL_ID')
  final String? delId;

  @JsonKey(name: r'DEL_DATE')
  final String? delDate;

  @override
  Map<String, dynamic> toJson() => _$STMNGRMSTCreateInputToJson(this);
}

@_i1.jsonSerializable
class STMNGRMSTUncheckedCreateInput implements _i1.JsonSerializable {
  const STMNGRMSTUncheckedCreateInput({
    required this.mngrId,
    required this.mngrNm,
    this.mngrPw,
    this.grpCd,
    this.grade,
    required this.permCd,
    this.acsYn,
    this.clph,
    this.empNo,
    this.joinDate,
    this.pwdWrongCnt,
    this.pwdWrongDate,
    this.lstLoginDate,
    this.flpth,
    this.fileNm,
    required this.regId,
    required this.regDate,
    this.editId,
    this.editDate,
    this.delId,
    this.delDate,
  });

  factory STMNGRMSTUncheckedCreateInput.fromJson(Map<String, dynamic> json) =>
      _$STMNGRMSTUncheckedCreateInputFromJson(json);

  @JsonKey(name: r'MNGR_ID')
  final String mngrId;

  @JsonKey(name: r'MNGR_NM')
  final String mngrNm;

  @JsonKey(name: r'MNGR_PW')
  final String? mngrPw;

  @JsonKey(name: r'GRP_CD')
  final String? grpCd;

  @JsonKey(name: r'GRADE')
  final String? grade;

  @JsonKey(name: r'PERM_CD')
  final String permCd;

  @JsonKey(name: r'ACS_YN')
  final String? acsYn;

  @JsonKey(name: r'CLPH')
  final String? clph;

  @JsonKey(name: r'EMP_NO')
  final String? empNo;

  @JsonKey(name: r'JOIN_DATE')
  final String? joinDate;

  @JsonKey(name: r'PWD_WRONG_CNT')
  final int? pwdWrongCnt;

  @JsonKey(name: r'PWD_WRONG_DATE')
  final String? pwdWrongDate;

  @JsonKey(name: r'LST_LOGIN_DATE')
  final String? lstLoginDate;

  @JsonKey(name: r'FLPTH')
  final String? flpth;

  @JsonKey(name: r'FILE_NM')
  final String? fileNm;

  @JsonKey(name: r'REG_ID')
  final String regId;

  @JsonKey(name: r'REG_DATE')
  final String regDate;

  @JsonKey(name: r'EDIT_ID')
  final String? editId;

  @JsonKey(name: r'EDIT_DATE')
  final String? editDate;

  @JsonKey(name: r'DEL_ID')
  final String? delId;

  @JsonKey(name: r'DEL_DATE')
  final String? delDate;

  @override
  Map<String, dynamic> toJson() => _$STMNGRMSTUncheckedCreateInputToJson(this);
}

@_i1.jsonSerializable
class STMNGRMSTUpdateInput implements _i1.JsonSerializable {
  const STMNGRMSTUpdateInput({
    this.mngrId,
    this.mngrNm,
    this.mngrPw,
    this.grpCd,
    this.grade,
    this.permCd,
    this.acsYn,
    this.clph,
    this.empNo,
    this.joinDate,
    this.pwdWrongCnt,
    this.pwdWrongDate,
    this.lstLoginDate,
    this.flpth,
    this.fileNm,
    this.regId,
    this.regDate,
    this.editId,
    this.editDate,
    this.delId,
    this.delDate,
  });

  factory STMNGRMSTUpdateInput.fromJson(Map<String, dynamic> json) =>
      _$STMNGRMSTUpdateInputFromJson(json);

  @JsonKey(name: r'MNGR_ID')
  final StringFieldUpdateOperationsInput? mngrId;

  @JsonKey(name: r'MNGR_NM')
  final StringFieldUpdateOperationsInput? mngrNm;

  @JsonKey(name: r'MNGR_PW')
  final NullableStringFieldUpdateOperationsInput? mngrPw;

  @JsonKey(name: r'GRP_CD')
  final NullableStringFieldUpdateOperationsInput? grpCd;

  @JsonKey(name: r'GRADE')
  final NullableStringFieldUpdateOperationsInput? grade;

  @JsonKey(name: r'PERM_CD')
  final StringFieldUpdateOperationsInput? permCd;

  @JsonKey(name: r'ACS_YN')
  final NullableStringFieldUpdateOperationsInput? acsYn;

  @JsonKey(name: r'CLPH')
  final NullableStringFieldUpdateOperationsInput? clph;

  @JsonKey(name: r'EMP_NO')
  final NullableStringFieldUpdateOperationsInput? empNo;

  @JsonKey(name: r'JOIN_DATE')
  final StringFieldUpdateOperationsInput? joinDate;

  @JsonKey(name: r'PWD_WRONG_CNT')
  final NullableIntFieldUpdateOperationsInput? pwdWrongCnt;

  @JsonKey(name: r'PWD_WRONG_DATE')
  final NullableStringFieldUpdateOperationsInput? pwdWrongDate;

  @JsonKey(name: r'LST_LOGIN_DATE')
  final NullableStringFieldUpdateOperationsInput? lstLoginDate;

  @JsonKey(name: r'FLPTH')
  final NullableStringFieldUpdateOperationsInput? flpth;

  @JsonKey(name: r'FILE_NM')
  final NullableStringFieldUpdateOperationsInput? fileNm;

  @JsonKey(name: r'REG_ID')
  final StringFieldUpdateOperationsInput? regId;

  @JsonKey(name: r'REG_DATE')
  final StringFieldUpdateOperationsInput? regDate;

  @JsonKey(name: r'EDIT_ID')
  final NullableStringFieldUpdateOperationsInput? editId;

  @JsonKey(name: r'EDIT_DATE')
  final NullableStringFieldUpdateOperationsInput? editDate;

  @JsonKey(name: r'DEL_ID')
  final NullableStringFieldUpdateOperationsInput? delId;

  @JsonKey(name: r'DEL_DATE')
  final NullableStringFieldUpdateOperationsInput? delDate;

  @override
  Map<String, dynamic> toJson() => _$STMNGRMSTUpdateInputToJson(this);
}

@_i1.jsonSerializable
class STMNGRMSTUncheckedUpdateInput implements _i1.JsonSerializable {
  const STMNGRMSTUncheckedUpdateInput({
    this.mngrId,
    this.mngrNm,
    this.mngrPw,
    this.grpCd,
    this.grade,
    this.permCd,
    this.acsYn,
    this.clph,
    this.empNo,
    this.joinDate,
    this.pwdWrongCnt,
    this.pwdWrongDate,
    this.lstLoginDate,
    this.flpth,
    this.fileNm,
    this.regId,
    this.regDate,
    this.editId,
    this.editDate,
    this.delId,
    this.delDate,
  });

  factory STMNGRMSTUncheckedUpdateInput.fromJson(Map<String, dynamic> json) =>
      _$STMNGRMSTUncheckedUpdateInputFromJson(json);

  @JsonKey(name: r'MNGR_ID')
  final StringFieldUpdateOperationsInput? mngrId;

  @JsonKey(name: r'MNGR_NM')
  final StringFieldUpdateOperationsInput? mngrNm;

  @JsonKey(name: r'MNGR_PW')
  final NullableStringFieldUpdateOperationsInput? mngrPw;

  @JsonKey(name: r'GRP_CD')
  final NullableStringFieldUpdateOperationsInput? grpCd;

  @JsonKey(name: r'GRADE')
  final NullableStringFieldUpdateOperationsInput? grade;

  @JsonKey(name: r'PERM_CD')
  final StringFieldUpdateOperationsInput? permCd;

  @JsonKey(name: r'ACS_YN')
  final NullableStringFieldUpdateOperationsInput? acsYn;

  @JsonKey(name: r'CLPH')
  final NullableStringFieldUpdateOperationsInput? clph;

  @JsonKey(name: r'EMP_NO')
  final NullableStringFieldUpdateOperationsInput? empNo;

  @JsonKey(name: r'JOIN_DATE')
  final StringFieldUpdateOperationsInput? joinDate;

  @JsonKey(name: r'PWD_WRONG_CNT')
  final NullableIntFieldUpdateOperationsInput? pwdWrongCnt;

  @JsonKey(name: r'PWD_WRONG_DATE')
  final NullableStringFieldUpdateOperationsInput? pwdWrongDate;

  @JsonKey(name: r'LST_LOGIN_DATE')
  final NullableStringFieldUpdateOperationsInput? lstLoginDate;

  @JsonKey(name: r'FLPTH')
  final NullableStringFieldUpdateOperationsInput? flpth;

  @JsonKey(name: r'FILE_NM')
  final NullableStringFieldUpdateOperationsInput? fileNm;

  @JsonKey(name: r'REG_ID')
  final StringFieldUpdateOperationsInput? regId;

  @JsonKey(name: r'REG_DATE')
  final StringFieldUpdateOperationsInput? regDate;

  @JsonKey(name: r'EDIT_ID')
  final NullableStringFieldUpdateOperationsInput? editId;

  @JsonKey(name: r'EDIT_DATE')
  final NullableStringFieldUpdateOperationsInput? editDate;

  @JsonKey(name: r'DEL_ID')
  final NullableStringFieldUpdateOperationsInput? delId;

  @JsonKey(name: r'DEL_DATE')
  final NullableStringFieldUpdateOperationsInput? delDate;

  @override
  Map<String, dynamic> toJson() => _$STMNGRMSTUncheckedUpdateInputToJson(this);
}

@_i1.jsonSerializable
class STMNGRMSTCreateManyInput implements _i1.JsonSerializable {
  const STMNGRMSTCreateManyInput({
    required this.mngrId,
    required this.mngrNm,
    this.mngrPw,
    this.grpCd,
    this.grade,
    required this.permCd,
    this.acsYn,
    this.clph,
    this.empNo,
    this.joinDate,
    this.pwdWrongCnt,
    this.pwdWrongDate,
    this.lstLoginDate,
    this.flpth,
    this.fileNm,
    required this.regId,
    required this.regDate,
    this.editId,
    this.editDate,
    this.delId,
    this.delDate,
  });

  factory STMNGRMSTCreateManyInput.fromJson(Map<String, dynamic> json) =>
      _$STMNGRMSTCreateManyInputFromJson(json);

  @JsonKey(name: r'MNGR_ID')
  final String mngrId;

  @JsonKey(name: r'MNGR_NM')
  final String mngrNm;

  @JsonKey(name: r'MNGR_PW')
  final String? mngrPw;

  @JsonKey(name: r'GRP_CD')
  final String? grpCd;

  @JsonKey(name: r'GRADE')
  final String? grade;

  @JsonKey(name: r'PERM_CD')
  final String permCd;

  @JsonKey(name: r'ACS_YN')
  final String? acsYn;

  @JsonKey(name: r'CLPH')
  final String? clph;

  @JsonKey(name: r'EMP_NO')
  final String? empNo;

  @JsonKey(name: r'JOIN_DATE')
  final String? joinDate;

  @JsonKey(name: r'PWD_WRONG_CNT')
  final int? pwdWrongCnt;

  @JsonKey(name: r'PWD_WRONG_DATE')
  final String? pwdWrongDate;

  @JsonKey(name: r'LST_LOGIN_DATE')
  final String? lstLoginDate;

  @JsonKey(name: r'FLPTH')
  final String? flpth;

  @JsonKey(name: r'FILE_NM')
  final String? fileNm;

  @JsonKey(name: r'REG_ID')
  final String regId;

  @JsonKey(name: r'REG_DATE')
  final String regDate;

  @JsonKey(name: r'EDIT_ID')
  final String? editId;

  @JsonKey(name: r'EDIT_DATE')
  final String? editDate;

  @JsonKey(name: r'DEL_ID')
  final String? delId;

  @JsonKey(name: r'DEL_DATE')
  final String? delDate;

  @override
  Map<String, dynamic> toJson() => _$STMNGRMSTCreateManyInputToJson(this);
}

@_i1.jsonSerializable
class STMNGRMSTUpdateManyMutationInput implements _i1.JsonSerializable {
  const STMNGRMSTUpdateManyMutationInput({
    this.mngrId,
    this.mngrNm,
    this.mngrPw,
    this.grpCd,
    this.grade,
    this.permCd,
    this.acsYn,
    this.clph,
    this.empNo,
    this.joinDate,
    this.pwdWrongCnt,
    this.pwdWrongDate,
    this.lstLoginDate,
    this.flpth,
    this.fileNm,
    this.regId,
    this.regDate,
    this.editId,
    this.editDate,
    this.delId,
    this.delDate,
  });

  factory STMNGRMSTUpdateManyMutationInput.fromJson(
          Map<String, dynamic> json) =>
      _$STMNGRMSTUpdateManyMutationInputFromJson(json);

  @JsonKey(name: r'MNGR_ID')
  final StringFieldUpdateOperationsInput? mngrId;

  @JsonKey(name: r'MNGR_NM')
  final StringFieldUpdateOperationsInput? mngrNm;

  @JsonKey(name: r'MNGR_PW')
  final NullableStringFieldUpdateOperationsInput? mngrPw;

  @JsonKey(name: r'GRP_CD')
  final NullableStringFieldUpdateOperationsInput? grpCd;

  @JsonKey(name: r'GRADE')
  final NullableStringFieldUpdateOperationsInput? grade;

  @JsonKey(name: r'PERM_CD')
  final StringFieldUpdateOperationsInput? permCd;

  @JsonKey(name: r'ACS_YN')
  final NullableStringFieldUpdateOperationsInput? acsYn;

  @JsonKey(name: r'CLPH')
  final NullableStringFieldUpdateOperationsInput? clph;

  @JsonKey(name: r'EMP_NO')
  final NullableStringFieldUpdateOperationsInput? empNo;

  @JsonKey(name: r'JOIN_DATE')
  final StringFieldUpdateOperationsInput? joinDate;

  @JsonKey(name: r'PWD_WRONG_CNT')
  final NullableIntFieldUpdateOperationsInput? pwdWrongCnt;

  @JsonKey(name: r'PWD_WRONG_DATE')
  final NullableStringFieldUpdateOperationsInput? pwdWrongDate;

  @JsonKey(name: r'LST_LOGIN_DATE')
  final NullableStringFieldUpdateOperationsInput? lstLoginDate;

  @JsonKey(name: r'FLPTH')
  final NullableStringFieldUpdateOperationsInput? flpth;

  @JsonKey(name: r'FILE_NM')
  final NullableStringFieldUpdateOperationsInput? fileNm;

  @JsonKey(name: r'REG_ID')
  final StringFieldUpdateOperationsInput? regId;

  @JsonKey(name: r'REG_DATE')
  final StringFieldUpdateOperationsInput? regDate;

  @JsonKey(name: r'EDIT_ID')
  final NullableStringFieldUpdateOperationsInput? editId;

  @JsonKey(name: r'EDIT_DATE')
  final NullableStringFieldUpdateOperationsInput? editDate;

  @JsonKey(name: r'DEL_ID')
  final NullableStringFieldUpdateOperationsInput? delId;

  @JsonKey(name: r'DEL_DATE')
  final NullableStringFieldUpdateOperationsInput? delDate;

  @override
  Map<String, dynamic> toJson() =>
      _$STMNGRMSTUpdateManyMutationInputToJson(this);
}

@_i1.jsonSerializable
class STMNGRMSTUncheckedUpdateManyInput implements _i1.JsonSerializable {
  const STMNGRMSTUncheckedUpdateManyInput({
    this.mngrId,
    this.mngrNm,
    this.mngrPw,
    this.grpCd,
    this.grade,
    this.permCd,
    this.acsYn,
    this.clph,
    this.empNo,
    this.joinDate,
    this.pwdWrongCnt,
    this.pwdWrongDate,
    this.lstLoginDate,
    this.flpth,
    this.fileNm,
    this.regId,
    this.regDate,
    this.editId,
    this.editDate,
    this.delId,
    this.delDate,
  });

  factory STMNGRMSTUncheckedUpdateManyInput.fromJson(
          Map<String, dynamic> json) =>
      _$STMNGRMSTUncheckedUpdateManyInputFromJson(json);

  @JsonKey(name: r'MNGR_ID')
  final StringFieldUpdateOperationsInput? mngrId;

  @JsonKey(name: r'MNGR_NM')
  final StringFieldUpdateOperationsInput? mngrNm;

  @JsonKey(name: r'MNGR_PW')
  final NullableStringFieldUpdateOperationsInput? mngrPw;

  @JsonKey(name: r'GRP_CD')
  final NullableStringFieldUpdateOperationsInput? grpCd;

  @JsonKey(name: r'GRADE')
  final NullableStringFieldUpdateOperationsInput? grade;

  @JsonKey(name: r'PERM_CD')
  final StringFieldUpdateOperationsInput? permCd;

  @JsonKey(name: r'ACS_YN')
  final NullableStringFieldUpdateOperationsInput? acsYn;

  @JsonKey(name: r'CLPH')
  final NullableStringFieldUpdateOperationsInput? clph;

  @JsonKey(name: r'EMP_NO')
  final NullableStringFieldUpdateOperationsInput? empNo;

  @JsonKey(name: r'JOIN_DATE')
  final StringFieldUpdateOperationsInput? joinDate;

  @JsonKey(name: r'PWD_WRONG_CNT')
  final NullableIntFieldUpdateOperationsInput? pwdWrongCnt;

  @JsonKey(name: r'PWD_WRONG_DATE')
  final NullableStringFieldUpdateOperationsInput? pwdWrongDate;

  @JsonKey(name: r'LST_LOGIN_DATE')
  final NullableStringFieldUpdateOperationsInput? lstLoginDate;

  @JsonKey(name: r'FLPTH')
  final NullableStringFieldUpdateOperationsInput? flpth;

  @JsonKey(name: r'FILE_NM')
  final NullableStringFieldUpdateOperationsInput? fileNm;

  @JsonKey(name: r'REG_ID')
  final StringFieldUpdateOperationsInput? regId;

  @JsonKey(name: r'REG_DATE')
  final StringFieldUpdateOperationsInput? regDate;

  @JsonKey(name: r'EDIT_ID')
  final NullableStringFieldUpdateOperationsInput? editId;

  @JsonKey(name: r'EDIT_DATE')
  final NullableStringFieldUpdateOperationsInput? editDate;

  @JsonKey(name: r'DEL_ID')
  final NullableStringFieldUpdateOperationsInput? delId;

  @JsonKey(name: r'DEL_DATE')
  final NullableStringFieldUpdateOperationsInput? delDate;

  @override
  Map<String, dynamic> toJson() =>
      _$STMNGRMSTUncheckedUpdateManyInputToJson(this);
}

@_i1.jsonSerializable
class BigIntFilter implements _i1.JsonSerializable {
  const BigIntFilter({
    this.equals,
    this.$in,
    this.notIn,
    this.lt,
    this.lte,
    this.gt,
    this.gte,
    this.not,
  });

  factory BigIntFilter.fromJson(Map<String, dynamic> json) =>
      _$BigIntFilterFromJson(json);

  final BigInt? equals;

  @JsonKey(name: r'in')
  final Iterable<BigInt>? $in;

  final Iterable<BigInt>? notIn;

  final BigInt? lt;

  final BigInt? lte;

  final BigInt? gt;

  final BigInt? gte;

  final NestedBigIntFilter? not;

  @override
  Map<String, dynamic> toJson() => _$BigIntFilterToJson(this);
}

@_i1.jsonSerializable
class StringFilter implements _i1.JsonSerializable {
  const StringFilter({
    this.equals,
    this.$in,
    this.notIn,
    this.lt,
    this.lte,
    this.gt,
    this.gte,
    this.contains,
    this.startsWith,
    this.endsWith,
    this.not,
  });

  factory StringFilter.fromJson(Map<String, dynamic> json) =>
      _$StringFilterFromJson(json);

  final String? equals;

  @JsonKey(name: r'in')
  final Iterable<String>? $in;

  final Iterable<String>? notIn;

  final String? lt;

  final String? lte;

  final String? gt;

  final String? gte;

  final String? contains;

  final String? startsWith;

  final String? endsWith;

  final NestedStringFilter? not;

  @override
  Map<String, dynamic> toJson() => _$StringFilterToJson(this);
}

@_i1.jsonSerializable
class StringNullableFilter implements _i1.JsonSerializable {
  const StringNullableFilter({
    this.equals,
    this.$in,
    this.notIn,
    this.lt,
    this.lte,
    this.gt,
    this.gte,
    this.contains,
    this.startsWith,
    this.endsWith,
    this.not,
  });

  factory StringNullableFilter.fromJson(Map<String, dynamic> json) =>
      _$StringNullableFilterFromJson(json);

  final String? equals;

  @JsonKey(name: r'in')
  final Iterable<String>? $in;

  final Iterable<String>? notIn;

  final String? lt;

  final String? lte;

  final String? gt;

  final String? gte;

  final String? contains;

  final String? startsWith;

  final String? endsWith;

  final NestedStringNullableFilter? not;

  @override
  Map<String, dynamic> toJson() => _$StringNullableFilterToJson(this);
}

@_i1.jsonSerializable
class IntNullableFilter implements _i1.JsonSerializable {
  const IntNullableFilter({
    this.equals,
    this.$in,
    this.notIn,
    this.lt,
    this.lte,
    this.gt,
    this.gte,
    this.not,
  });

  factory IntNullableFilter.fromJson(Map<String, dynamic> json) =>
      _$IntNullableFilterFromJson(json);

  final int? equals;

  @JsonKey(name: r'in')
  final Iterable<int>? $in;

  final Iterable<int>? notIn;

  final int? lt;

  final int? lte;

  final int? gt;

  final int? gte;

  final NestedIntNullableFilter? not;

  @override
  Map<String, dynamic> toJson() => _$IntNullableFilterToJson(this);
}

@_i1.jsonSerializable
class DateTimeFilter implements _i1.JsonSerializable {
  const DateTimeFilter({
    this.equals,
    this.$in,
    this.notIn,
    this.lt,
    this.lte,
    this.gt,
    this.gte,
    this.not,
  });

  factory DateTimeFilter.fromJson(Map<String, dynamic> json) =>
      _$DateTimeFilterFromJson(json);

  final DateTime? equals;

  @JsonKey(name: r'in')
  final Iterable<DateTime>? $in;

  final Iterable<DateTime>? notIn;

  final DateTime? lt;

  final DateTime? lte;

  final DateTime? gt;

  final DateTime? gte;

  final NestedDateTimeFilter? not;

  @override
  Map<String, dynamic> toJson() => _$DateTimeFilterToJson(this);
}

@_i1.jsonSerializable
class DateTimeNullableFilter implements _i1.JsonSerializable {
  const DateTimeNullableFilter({
    this.equals,
    this.$in,
    this.notIn,
    this.lt,
    this.lte,
    this.gt,
    this.gte,
    this.not,
  });

  factory DateTimeNullableFilter.fromJson(Map<String, dynamic> json) =>
      _$DateTimeNullableFilterFromJson(json);

  final DateTime? equals;

  @JsonKey(name: r'in')
  final Iterable<DateTime>? $in;

  final Iterable<DateTime>? notIn;

  final DateTime? lt;

  final DateTime? lte;

  final DateTime? gt;

  final DateTime? gte;

  final NestedDateTimeNullableFilter? not;

  @override
  Map<String, dynamic> toJson() => _$DateTimeNullableFilterToJson(this);
}

@_i1.jsonSerializable
class SortOrderInput implements _i1.JsonSerializable {
  const SortOrderInput({
    required this.sort,
    this.nulls,
  });

  factory SortOrderInput.fromJson(Map<String, dynamic> json) =>
      _$SortOrderInputFromJson(json);

  final SortOrder sort;

  final NullsOrder? nulls;

  @override
  Map<String, dynamic> toJson() => _$SortOrderInputToJson(this);
}

@_i1.jsonSerializable
class BOOKASSETTBLCountOrderByAggregateInput implements _i1.JsonSerializable {
  const BOOKASSETTBLCountOrderByAggregateInput({
    this.seq,
    this.assetNo,
    this.bookNm,
    this.cnt,
    this.publisher,
    this.amount,
    this.buyDate,
    this.mngDept,
    this.rentYn,
    this.rentUser,
    this.remarks,
    this.useYn,
    this.delYn,
    this.regDate,
    this.updDate,
  });

  factory BOOKASSETTBLCountOrderByAggregateInput.fromJson(
          Map<String, dynamic> json) =>
      _$BOOKASSETTBLCountOrderByAggregateInputFromJson(json);

  @JsonKey(name: r'SEQ')
  final SortOrder? seq;

  @JsonKey(name: r'ASSET_NO')
  final SortOrder? assetNo;

  @JsonKey(name: r'BOOK_NM')
  final SortOrder? bookNm;

  @JsonKey(name: r'CNT')
  final SortOrder? cnt;

  @JsonKey(name: r'PUBLISHER')
  final SortOrder? publisher;

  @JsonKey(name: r'AMOUNT')
  final SortOrder? amount;

  @JsonKey(name: r'BUY_DATE')
  final SortOrder? buyDate;

  @JsonKey(name: r'MNG_DEPT')
  final SortOrder? mngDept;

  @JsonKey(name: r'RENT_YN')
  final SortOrder? rentYn;

  @JsonKey(name: r'RENT_USER')
  final SortOrder? rentUser;

  @JsonKey(name: r'REMARKS')
  final SortOrder? remarks;

  @JsonKey(name: r'USE_YN')
  final SortOrder? useYn;

  @JsonKey(name: r'DEL_YN')
  final SortOrder? delYn;

  @JsonKey(name: r'REG_DATE')
  final SortOrder? regDate;

  @JsonKey(name: r'UPD_DATE')
  final SortOrder? updDate;

  @override
  Map<String, dynamic> toJson() =>
      _$BOOKASSETTBLCountOrderByAggregateInputToJson(this);
}

@_i1.jsonSerializable
class BOOKASSETTBLAvgOrderByAggregateInput implements _i1.JsonSerializable {
  const BOOKASSETTBLAvgOrderByAggregateInput({
    this.seq,
    this.cnt,
    this.amount,
  });

  factory BOOKASSETTBLAvgOrderByAggregateInput.fromJson(
          Map<String, dynamic> json) =>
      _$BOOKASSETTBLAvgOrderByAggregateInputFromJson(json);

  @JsonKey(name: r'SEQ')
  final SortOrder? seq;

  @JsonKey(name: r'CNT')
  final SortOrder? cnt;

  @JsonKey(name: r'AMOUNT')
  final SortOrder? amount;

  @override
  Map<String, dynamic> toJson() =>
      _$BOOKASSETTBLAvgOrderByAggregateInputToJson(this);
}

@_i1.jsonSerializable
class BOOKASSETTBLMaxOrderByAggregateInput implements _i1.JsonSerializable {
  const BOOKASSETTBLMaxOrderByAggregateInput({
    this.seq,
    this.assetNo,
    this.bookNm,
    this.cnt,
    this.publisher,
    this.amount,
    this.buyDate,
    this.mngDept,
    this.rentYn,
    this.rentUser,
    this.remarks,
    this.useYn,
    this.delYn,
    this.regDate,
    this.updDate,
  });

  factory BOOKASSETTBLMaxOrderByAggregateInput.fromJson(
          Map<String, dynamic> json) =>
      _$BOOKASSETTBLMaxOrderByAggregateInputFromJson(json);

  @JsonKey(name: r'SEQ')
  final SortOrder? seq;

  @JsonKey(name: r'ASSET_NO')
  final SortOrder? assetNo;

  @JsonKey(name: r'BOOK_NM')
  final SortOrder? bookNm;

  @JsonKey(name: r'CNT')
  final SortOrder? cnt;

  @JsonKey(name: r'PUBLISHER')
  final SortOrder? publisher;

  @JsonKey(name: r'AMOUNT')
  final SortOrder? amount;

  @JsonKey(name: r'BUY_DATE')
  final SortOrder? buyDate;

  @JsonKey(name: r'MNG_DEPT')
  final SortOrder? mngDept;

  @JsonKey(name: r'RENT_YN')
  final SortOrder? rentYn;

  @JsonKey(name: r'RENT_USER')
  final SortOrder? rentUser;

  @JsonKey(name: r'REMARKS')
  final SortOrder? remarks;

  @JsonKey(name: r'USE_YN')
  final SortOrder? useYn;

  @JsonKey(name: r'DEL_YN')
  final SortOrder? delYn;

  @JsonKey(name: r'REG_DATE')
  final SortOrder? regDate;

  @JsonKey(name: r'UPD_DATE')
  final SortOrder? updDate;

  @override
  Map<String, dynamic> toJson() =>
      _$BOOKASSETTBLMaxOrderByAggregateInputToJson(this);
}

@_i1.jsonSerializable
class BOOKASSETTBLMinOrderByAggregateInput implements _i1.JsonSerializable {
  const BOOKASSETTBLMinOrderByAggregateInput({
    this.seq,
    this.assetNo,
    this.bookNm,
    this.cnt,
    this.publisher,
    this.amount,
    this.buyDate,
    this.mngDept,
    this.rentYn,
    this.rentUser,
    this.remarks,
    this.useYn,
    this.delYn,
    this.regDate,
    this.updDate,
  });

  factory BOOKASSETTBLMinOrderByAggregateInput.fromJson(
          Map<String, dynamic> json) =>
      _$BOOKASSETTBLMinOrderByAggregateInputFromJson(json);

  @JsonKey(name: r'SEQ')
  final SortOrder? seq;

  @JsonKey(name: r'ASSET_NO')
  final SortOrder? assetNo;

  @JsonKey(name: r'BOOK_NM')
  final SortOrder? bookNm;

  @JsonKey(name: r'CNT')
  final SortOrder? cnt;

  @JsonKey(name: r'PUBLISHER')
  final SortOrder? publisher;

  @JsonKey(name: r'AMOUNT')
  final SortOrder? amount;

  @JsonKey(name: r'BUY_DATE')
  final SortOrder? buyDate;

  @JsonKey(name: r'MNG_DEPT')
  final SortOrder? mngDept;

  @JsonKey(name: r'RENT_YN')
  final SortOrder? rentYn;

  @JsonKey(name: r'RENT_USER')
  final SortOrder? rentUser;

  @JsonKey(name: r'REMARKS')
  final SortOrder? remarks;

  @JsonKey(name: r'USE_YN')
  final SortOrder? useYn;

  @JsonKey(name: r'DEL_YN')
  final SortOrder? delYn;

  @JsonKey(name: r'REG_DATE')
  final SortOrder? regDate;

  @JsonKey(name: r'UPD_DATE')
  final SortOrder? updDate;

  @override
  Map<String, dynamic> toJson() =>
      _$BOOKASSETTBLMinOrderByAggregateInputToJson(this);
}

@_i1.jsonSerializable
class BOOKASSETTBLSumOrderByAggregateInput implements _i1.JsonSerializable {
  const BOOKASSETTBLSumOrderByAggregateInput({
    this.seq,
    this.cnt,
    this.amount,
  });

  factory BOOKASSETTBLSumOrderByAggregateInput.fromJson(
          Map<String, dynamic> json) =>
      _$BOOKASSETTBLSumOrderByAggregateInputFromJson(json);

  @JsonKey(name: r'SEQ')
  final SortOrder? seq;

  @JsonKey(name: r'CNT')
  final SortOrder? cnt;

  @JsonKey(name: r'AMOUNT')
  final SortOrder? amount;

  @override
  Map<String, dynamic> toJson() =>
      _$BOOKASSETTBLSumOrderByAggregateInputToJson(this);
}

@_i1.jsonSerializable
class BigIntWithAggregatesFilter implements _i1.JsonSerializable {
  const BigIntWithAggregatesFilter({
    this.equals,
    this.$in,
    this.notIn,
    this.lt,
    this.lte,
    this.gt,
    this.gte,
    this.not,
    this.$count,
    this.$avg,
    this.$sum,
    this.$min,
    this.$max,
  });

  factory BigIntWithAggregatesFilter.fromJson(Map<String, dynamic> json) =>
      _$BigIntWithAggregatesFilterFromJson(json);

  final BigInt? equals;

  @JsonKey(name: r'in')
  final Iterable<BigInt>? $in;

  final Iterable<BigInt>? notIn;

  final BigInt? lt;

  final BigInt? lte;

  final BigInt? gt;

  final BigInt? gte;

  final NestedBigIntWithAggregatesFilter? not;

  @JsonKey(name: r'_count')
  final NestedIntFilter? $count;

  @JsonKey(name: r'_avg')
  final NestedFloatFilter? $avg;

  @JsonKey(name: r'_sum')
  final NestedBigIntFilter? $sum;

  @JsonKey(name: r'_min')
  final NestedBigIntFilter? $min;

  @JsonKey(name: r'_max')
  final NestedBigIntFilter? $max;

  @override
  Map<String, dynamic> toJson() => _$BigIntWithAggregatesFilterToJson(this);
}

@_i1.jsonSerializable
class StringWithAggregatesFilter implements _i1.JsonSerializable {
  const StringWithAggregatesFilter({
    this.equals,
    this.$in,
    this.notIn,
    this.lt,
    this.lte,
    this.gt,
    this.gte,
    this.contains,
    this.startsWith,
    this.endsWith,
    this.not,
    this.$count,
    this.$min,
    this.$max,
  });

  factory StringWithAggregatesFilter.fromJson(Map<String, dynamic> json) =>
      _$StringWithAggregatesFilterFromJson(json);

  final String? equals;

  @JsonKey(name: r'in')
  final Iterable<String>? $in;

  final Iterable<String>? notIn;

  final String? lt;

  final String? lte;

  final String? gt;

  final String? gte;

  final String? contains;

  final String? startsWith;

  final String? endsWith;

  final NestedStringWithAggregatesFilter? not;

  @JsonKey(name: r'_count')
  final NestedIntFilter? $count;

  @JsonKey(name: r'_min')
  final NestedStringFilter? $min;

  @JsonKey(name: r'_max')
  final NestedStringFilter? $max;

  @override
  Map<String, dynamic> toJson() => _$StringWithAggregatesFilterToJson(this);
}

@_i1.jsonSerializable
class StringNullableWithAggregatesFilter implements _i1.JsonSerializable {
  const StringNullableWithAggregatesFilter({
    this.equals,
    this.$in,
    this.notIn,
    this.lt,
    this.lte,
    this.gt,
    this.gte,
    this.contains,
    this.startsWith,
    this.endsWith,
    this.not,
    this.$count,
    this.$min,
    this.$max,
  });

  factory StringNullableWithAggregatesFilter.fromJson(
          Map<String, dynamic> json) =>
      _$StringNullableWithAggregatesFilterFromJson(json);

  final String? equals;

  @JsonKey(name: r'in')
  final Iterable<String>? $in;

  final Iterable<String>? notIn;

  final String? lt;

  final String? lte;

  final String? gt;

  final String? gte;

  final String? contains;

  final String? startsWith;

  final String? endsWith;

  final NestedStringNullableWithAggregatesFilter? not;

  @JsonKey(name: r'_count')
  final NestedIntNullableFilter? $count;

  @JsonKey(name: r'_min')
  final NestedStringNullableFilter? $min;

  @JsonKey(name: r'_max')
  final NestedStringNullableFilter? $max;

  @override
  Map<String, dynamic> toJson() =>
      _$StringNullableWithAggregatesFilterToJson(this);
}

@_i1.jsonSerializable
class IntNullableWithAggregatesFilter implements _i1.JsonSerializable {
  const IntNullableWithAggregatesFilter({
    this.equals,
    this.$in,
    this.notIn,
    this.lt,
    this.lte,
    this.gt,
    this.gte,
    this.not,
    this.$count,
    this.$avg,
    this.$sum,
    this.$min,
    this.$max,
  });

  factory IntNullableWithAggregatesFilter.fromJson(Map<String, dynamic> json) =>
      _$IntNullableWithAggregatesFilterFromJson(json);

  final int? equals;

  @JsonKey(name: r'in')
  final Iterable<int>? $in;

  final Iterable<int>? notIn;

  final int? lt;

  final int? lte;

  final int? gt;

  final int? gte;

  final NestedIntNullableWithAggregatesFilter? not;

  @JsonKey(name: r'_count')
  final NestedIntNullableFilter? $count;

  @JsonKey(name: r'_avg')
  final NestedFloatNullableFilter? $avg;

  @JsonKey(name: r'_sum')
  final NestedIntNullableFilter? $sum;

  @JsonKey(name: r'_min')
  final NestedIntNullableFilter? $min;

  @JsonKey(name: r'_max')
  final NestedIntNullableFilter? $max;

  @override
  Map<String, dynamic> toJson() =>
      _$IntNullableWithAggregatesFilterToJson(this);
}

@_i1.jsonSerializable
class DateTimeWithAggregatesFilter implements _i1.JsonSerializable {
  const DateTimeWithAggregatesFilter({
    this.equals,
    this.$in,
    this.notIn,
    this.lt,
    this.lte,
    this.gt,
    this.gte,
    this.not,
    this.$count,
    this.$min,
    this.$max,
  });

  factory DateTimeWithAggregatesFilter.fromJson(Map<String, dynamic> json) =>
      _$DateTimeWithAggregatesFilterFromJson(json);

  final DateTime? equals;

  @JsonKey(name: r'in')
  final Iterable<DateTime>? $in;

  final Iterable<DateTime>? notIn;

  final DateTime? lt;

  final DateTime? lte;

  final DateTime? gt;

  final DateTime? gte;

  final NestedDateTimeWithAggregatesFilter? not;

  @JsonKey(name: r'_count')
  final NestedIntFilter? $count;

  @JsonKey(name: r'_min')
  final NestedDateTimeFilter? $min;

  @JsonKey(name: r'_max')
  final NestedDateTimeFilter? $max;

  @override
  Map<String, dynamic> toJson() => _$DateTimeWithAggregatesFilterToJson(this);
}

@_i1.jsonSerializable
class DateTimeNullableWithAggregatesFilter implements _i1.JsonSerializable {
  const DateTimeNullableWithAggregatesFilter({
    this.equals,
    this.$in,
    this.notIn,
    this.lt,
    this.lte,
    this.gt,
    this.gte,
    this.not,
    this.$count,
    this.$min,
    this.$max,
  });

  factory DateTimeNullableWithAggregatesFilter.fromJson(
          Map<String, dynamic> json) =>
      _$DateTimeNullableWithAggregatesFilterFromJson(json);

  final DateTime? equals;

  @JsonKey(name: r'in')
  final Iterable<DateTime>? $in;

  final Iterable<DateTime>? notIn;

  final DateTime? lt;

  final DateTime? lte;

  final DateTime? gt;

  final DateTime? gte;

  final NestedDateTimeNullableWithAggregatesFilter? not;

  @JsonKey(name: r'_count')
  final NestedIntNullableFilter? $count;

  @JsonKey(name: r'_min')
  final NestedDateTimeNullableFilter? $min;

  @JsonKey(name: r'_max')
  final NestedDateTimeNullableFilter? $max;

  @override
  Map<String, dynamic> toJson() =>
      _$DateTimeNullableWithAggregatesFilterToJson(this);
}

@_i1.jsonSerializable
class STMNGRMSTCountOrderByAggregateInput implements _i1.JsonSerializable {
  const STMNGRMSTCountOrderByAggregateInput({
    this.mngrId,
    this.mngrNm,
    this.mngrPw,
    this.grpCd,
    this.grade,
    this.permCd,
    this.acsYn,
    this.clph,
    this.empNo,
    this.joinDate,
    this.pwdWrongCnt,
    this.pwdWrongDate,
    this.lstLoginDate,
    this.flpth,
    this.fileNm,
    this.regId,
    this.regDate,
    this.editId,
    this.editDate,
    this.delId,
    this.delDate,
  });

  factory STMNGRMSTCountOrderByAggregateInput.fromJson(
          Map<String, dynamic> json) =>
      _$STMNGRMSTCountOrderByAggregateInputFromJson(json);

  @JsonKey(name: r'MNGR_ID')
  final SortOrder? mngrId;

  @JsonKey(name: r'MNGR_NM')
  final SortOrder? mngrNm;

  @JsonKey(name: r'MNGR_PW')
  final SortOrder? mngrPw;

  @JsonKey(name: r'GRP_CD')
  final SortOrder? grpCd;

  @JsonKey(name: r'GRADE')
  final SortOrder? grade;

  @JsonKey(name: r'PERM_CD')
  final SortOrder? permCd;

  @JsonKey(name: r'ACS_YN')
  final SortOrder? acsYn;

  @JsonKey(name: r'CLPH')
  final SortOrder? clph;

  @JsonKey(name: r'EMP_NO')
  final SortOrder? empNo;

  @JsonKey(name: r'JOIN_DATE')
  final SortOrder? joinDate;

  @JsonKey(name: r'PWD_WRONG_CNT')
  final SortOrder? pwdWrongCnt;

  @JsonKey(name: r'PWD_WRONG_DATE')
  final SortOrder? pwdWrongDate;

  @JsonKey(name: r'LST_LOGIN_DATE')
  final SortOrder? lstLoginDate;

  @JsonKey(name: r'FLPTH')
  final SortOrder? flpth;

  @JsonKey(name: r'FILE_NM')
  final SortOrder? fileNm;

  @JsonKey(name: r'REG_ID')
  final SortOrder? regId;

  @JsonKey(name: r'REG_DATE')
  final SortOrder? regDate;

  @JsonKey(name: r'EDIT_ID')
  final SortOrder? editId;

  @JsonKey(name: r'EDIT_DATE')
  final SortOrder? editDate;

  @JsonKey(name: r'DEL_ID')
  final SortOrder? delId;

  @JsonKey(name: r'DEL_DATE')
  final SortOrder? delDate;

  @override
  Map<String, dynamic> toJson() =>
      _$STMNGRMSTCountOrderByAggregateInputToJson(this);
}

@_i1.jsonSerializable
class STMNGRMSTAvgOrderByAggregateInput implements _i1.JsonSerializable {
  const STMNGRMSTAvgOrderByAggregateInput({this.pwdWrongCnt});

  factory STMNGRMSTAvgOrderByAggregateInput.fromJson(
          Map<String, dynamic> json) =>
      _$STMNGRMSTAvgOrderByAggregateInputFromJson(json);

  @JsonKey(name: r'PWD_WRONG_CNT')
  final SortOrder? pwdWrongCnt;

  @override
  Map<String, dynamic> toJson() =>
      _$STMNGRMSTAvgOrderByAggregateInputToJson(this);
}

@_i1.jsonSerializable
class STMNGRMSTMaxOrderByAggregateInput implements _i1.JsonSerializable {
  const STMNGRMSTMaxOrderByAggregateInput({
    this.mngrId,
    this.mngrNm,
    this.mngrPw,
    this.grpCd,
    this.grade,
    this.permCd,
    this.acsYn,
    this.clph,
    this.empNo,
    this.joinDate,
    this.pwdWrongCnt,
    this.pwdWrongDate,
    this.lstLoginDate,
    this.flpth,
    this.fileNm,
    this.regId,
    this.regDate,
    this.editId,
    this.editDate,
    this.delId,
    this.delDate,
  });

  factory STMNGRMSTMaxOrderByAggregateInput.fromJson(
          Map<String, dynamic> json) =>
      _$STMNGRMSTMaxOrderByAggregateInputFromJson(json);

  @JsonKey(name: r'MNGR_ID')
  final SortOrder? mngrId;

  @JsonKey(name: r'MNGR_NM')
  final SortOrder? mngrNm;

  @JsonKey(name: r'MNGR_PW')
  final SortOrder? mngrPw;

  @JsonKey(name: r'GRP_CD')
  final SortOrder? grpCd;

  @JsonKey(name: r'GRADE')
  final SortOrder? grade;

  @JsonKey(name: r'PERM_CD')
  final SortOrder? permCd;

  @JsonKey(name: r'ACS_YN')
  final SortOrder? acsYn;

  @JsonKey(name: r'CLPH')
  final SortOrder? clph;

  @JsonKey(name: r'EMP_NO')
  final SortOrder? empNo;

  @JsonKey(name: r'JOIN_DATE')
  final SortOrder? joinDate;

  @JsonKey(name: r'PWD_WRONG_CNT')
  final SortOrder? pwdWrongCnt;

  @JsonKey(name: r'PWD_WRONG_DATE')
  final SortOrder? pwdWrongDate;

  @JsonKey(name: r'LST_LOGIN_DATE')
  final SortOrder? lstLoginDate;

  @JsonKey(name: r'FLPTH')
  final SortOrder? flpth;

  @JsonKey(name: r'FILE_NM')
  final SortOrder? fileNm;

  @JsonKey(name: r'REG_ID')
  final SortOrder? regId;

  @JsonKey(name: r'REG_DATE')
  final SortOrder? regDate;

  @JsonKey(name: r'EDIT_ID')
  final SortOrder? editId;

  @JsonKey(name: r'EDIT_DATE')
  final SortOrder? editDate;

  @JsonKey(name: r'DEL_ID')
  final SortOrder? delId;

  @JsonKey(name: r'DEL_DATE')
  final SortOrder? delDate;

  @override
  Map<String, dynamic> toJson() =>
      _$STMNGRMSTMaxOrderByAggregateInputToJson(this);
}

@_i1.jsonSerializable
class STMNGRMSTMinOrderByAggregateInput implements _i1.JsonSerializable {
  const STMNGRMSTMinOrderByAggregateInput({
    this.mngrId,
    this.mngrNm,
    this.mngrPw,
    this.grpCd,
    this.grade,
    this.permCd,
    this.acsYn,
    this.clph,
    this.empNo,
    this.joinDate,
    this.pwdWrongCnt,
    this.pwdWrongDate,
    this.lstLoginDate,
    this.flpth,
    this.fileNm,
    this.regId,
    this.regDate,
    this.editId,
    this.editDate,
    this.delId,
    this.delDate,
  });

  factory STMNGRMSTMinOrderByAggregateInput.fromJson(
          Map<String, dynamic> json) =>
      _$STMNGRMSTMinOrderByAggregateInputFromJson(json);

  @JsonKey(name: r'MNGR_ID')
  final SortOrder? mngrId;

  @JsonKey(name: r'MNGR_NM')
  final SortOrder? mngrNm;

  @JsonKey(name: r'MNGR_PW')
  final SortOrder? mngrPw;

  @JsonKey(name: r'GRP_CD')
  final SortOrder? grpCd;

  @JsonKey(name: r'GRADE')
  final SortOrder? grade;

  @JsonKey(name: r'PERM_CD')
  final SortOrder? permCd;

  @JsonKey(name: r'ACS_YN')
  final SortOrder? acsYn;

  @JsonKey(name: r'CLPH')
  final SortOrder? clph;

  @JsonKey(name: r'EMP_NO')
  final SortOrder? empNo;

  @JsonKey(name: r'JOIN_DATE')
  final SortOrder? joinDate;

  @JsonKey(name: r'PWD_WRONG_CNT')
  final SortOrder? pwdWrongCnt;

  @JsonKey(name: r'PWD_WRONG_DATE')
  final SortOrder? pwdWrongDate;

  @JsonKey(name: r'LST_LOGIN_DATE')
  final SortOrder? lstLoginDate;

  @JsonKey(name: r'FLPTH')
  final SortOrder? flpth;

  @JsonKey(name: r'FILE_NM')
  final SortOrder? fileNm;

  @JsonKey(name: r'REG_ID')
  final SortOrder? regId;

  @JsonKey(name: r'REG_DATE')
  final SortOrder? regDate;

  @JsonKey(name: r'EDIT_ID')
  final SortOrder? editId;

  @JsonKey(name: r'EDIT_DATE')
  final SortOrder? editDate;

  @JsonKey(name: r'DEL_ID')
  final SortOrder? delId;

  @JsonKey(name: r'DEL_DATE')
  final SortOrder? delDate;

  @override
  Map<String, dynamic> toJson() =>
      _$STMNGRMSTMinOrderByAggregateInputToJson(this);
}

@_i1.jsonSerializable
class STMNGRMSTSumOrderByAggregateInput implements _i1.JsonSerializable {
  const STMNGRMSTSumOrderByAggregateInput({this.pwdWrongCnt});

  factory STMNGRMSTSumOrderByAggregateInput.fromJson(
          Map<String, dynamic> json) =>
      _$STMNGRMSTSumOrderByAggregateInputFromJson(json);

  @JsonKey(name: r'PWD_WRONG_CNT')
  final SortOrder? pwdWrongCnt;

  @override
  Map<String, dynamic> toJson() =>
      _$STMNGRMSTSumOrderByAggregateInputToJson(this);
}

@_i1.jsonSerializable
class BigIntFieldUpdateOperationsInput implements _i1.JsonSerializable {
  const BigIntFieldUpdateOperationsInput({
    this.set,
    this.increment,
    this.decrement,
    this.multiply,
    this.divide,
  });

  factory BigIntFieldUpdateOperationsInput.fromJson(
          Map<String, dynamic> json) =>
      _$BigIntFieldUpdateOperationsInputFromJson(json);

  final BigInt? set;

  final BigInt? increment;

  final BigInt? decrement;

  final BigInt? multiply;

  final BigInt? divide;

  @override
  Map<String, dynamic> toJson() =>
      _$BigIntFieldUpdateOperationsInputToJson(this);
}

@_i1.jsonSerializable
class StringFieldUpdateOperationsInput implements _i1.JsonSerializable {
  const StringFieldUpdateOperationsInput({this.set});

  factory StringFieldUpdateOperationsInput.fromJson(
          Map<String, dynamic> json) =>
      _$StringFieldUpdateOperationsInputFromJson(json);

  final String? set;

  @override
  Map<String, dynamic> toJson() =>
      _$StringFieldUpdateOperationsInputToJson(this);
}

@_i1.jsonSerializable
class NullableStringFieldUpdateOperationsInput implements _i1.JsonSerializable {
  const NullableStringFieldUpdateOperationsInput({this.set});

  factory NullableStringFieldUpdateOperationsInput.fromJson(
          Map<String, dynamic> json) =>
      _$NullableStringFieldUpdateOperationsInputFromJson(json);

  final String? set;

  @override
  Map<String, dynamic> toJson() =>
      _$NullableStringFieldUpdateOperationsInputToJson(this);
}

@_i1.jsonSerializable
class NullableIntFieldUpdateOperationsInput implements _i1.JsonSerializable {
  const NullableIntFieldUpdateOperationsInput({
    this.set,
    this.increment,
    this.decrement,
    this.multiply,
    this.divide,
  });

  factory NullableIntFieldUpdateOperationsInput.fromJson(
          Map<String, dynamic> json) =>
      _$NullableIntFieldUpdateOperationsInputFromJson(json);

  final int? set;

  final int? increment;

  final int? decrement;

  final int? multiply;

  final int? divide;

  @override
  Map<String, dynamic> toJson() =>
      _$NullableIntFieldUpdateOperationsInputToJson(this);
}

@_i1.jsonSerializable
class DateTimeFieldUpdateOperationsInput implements _i1.JsonSerializable {
  const DateTimeFieldUpdateOperationsInput({this.set});

  factory DateTimeFieldUpdateOperationsInput.fromJson(
          Map<String, dynamic> json) =>
      _$DateTimeFieldUpdateOperationsInputFromJson(json);

  final DateTime? set;

  @override
  Map<String, dynamic> toJson() =>
      _$DateTimeFieldUpdateOperationsInputToJson(this);
}

@_i1.jsonSerializable
class NullableDateTimeFieldUpdateOperationsInput
    implements _i1.JsonSerializable {
  const NullableDateTimeFieldUpdateOperationsInput({this.set});

  factory NullableDateTimeFieldUpdateOperationsInput.fromJson(
          Map<String, dynamic> json) =>
      _$NullableDateTimeFieldUpdateOperationsInputFromJson(json);

  final DateTime? set;

  @override
  Map<String, dynamic> toJson() =>
      _$NullableDateTimeFieldUpdateOperationsInputToJson(this);
}

@_i1.jsonSerializable
class NestedBigIntFilter implements _i1.JsonSerializable {
  const NestedBigIntFilter({
    this.equals,
    this.$in,
    this.notIn,
    this.lt,
    this.lte,
    this.gt,
    this.gte,
    this.not,
  });

  factory NestedBigIntFilter.fromJson(Map<String, dynamic> json) =>
      _$NestedBigIntFilterFromJson(json);

  final BigInt? equals;

  @JsonKey(name: r'in')
  final Iterable<BigInt>? $in;

  final Iterable<BigInt>? notIn;

  final BigInt? lt;

  final BigInt? lte;

  final BigInt? gt;

  final BigInt? gte;

  final NestedBigIntFilter? not;

  @override
  Map<String, dynamic> toJson() => _$NestedBigIntFilterToJson(this);
}

@_i1.jsonSerializable
class NestedStringFilter implements _i1.JsonSerializable {
  const NestedStringFilter({
    this.equals,
    this.$in,
    this.notIn,
    this.lt,
    this.lte,
    this.gt,
    this.gte,
    this.contains,
    this.startsWith,
    this.endsWith,
    this.not,
  });

  factory NestedStringFilter.fromJson(Map<String, dynamic> json) =>
      _$NestedStringFilterFromJson(json);

  final String? equals;

  @JsonKey(name: r'in')
  final Iterable<String>? $in;

  final Iterable<String>? notIn;

  final String? lt;

  final String? lte;

  final String? gt;

  final String? gte;

  final String? contains;

  final String? startsWith;

  final String? endsWith;

  final NestedStringFilter? not;

  @override
  Map<String, dynamic> toJson() => _$NestedStringFilterToJson(this);
}

@_i1.jsonSerializable
class NestedStringNullableFilter implements _i1.JsonSerializable {
  const NestedStringNullableFilter({
    this.equals,
    this.$in,
    this.notIn,
    this.lt,
    this.lte,
    this.gt,
    this.gte,
    this.contains,
    this.startsWith,
    this.endsWith,
    this.not,
  });

  factory NestedStringNullableFilter.fromJson(Map<String, dynamic> json) =>
      _$NestedStringNullableFilterFromJson(json);

  final String? equals;

  @JsonKey(name: r'in')
  final Iterable<String>? $in;

  final Iterable<String>? notIn;

  final String? lt;

  final String? lte;

  final String? gt;

  final String? gte;

  final String? contains;

  final String? startsWith;

  final String? endsWith;

  final NestedStringNullableFilter? not;

  @override
  Map<String, dynamic> toJson() => _$NestedStringNullableFilterToJson(this);
}

@_i1.jsonSerializable
class NestedIntNullableFilter implements _i1.JsonSerializable {
  const NestedIntNullableFilter({
    this.equals,
    this.$in,
    this.notIn,
    this.lt,
    this.lte,
    this.gt,
    this.gte,
    this.not,
  });

  factory NestedIntNullableFilter.fromJson(Map<String, dynamic> json) =>
      _$NestedIntNullableFilterFromJson(json);

  final int? equals;

  @JsonKey(name: r'in')
  final Iterable<int>? $in;

  final Iterable<int>? notIn;

  final int? lt;

  final int? lte;

  final int? gt;

  final int? gte;

  final NestedIntNullableFilter? not;

  @override
  Map<String, dynamic> toJson() => _$NestedIntNullableFilterToJson(this);
}

@_i1.jsonSerializable
class NestedDateTimeFilter implements _i1.JsonSerializable {
  const NestedDateTimeFilter({
    this.equals,
    this.$in,
    this.notIn,
    this.lt,
    this.lte,
    this.gt,
    this.gte,
    this.not,
  });

  factory NestedDateTimeFilter.fromJson(Map<String, dynamic> json) =>
      _$NestedDateTimeFilterFromJson(json);

  final DateTime? equals;

  @JsonKey(name: r'in')
  final Iterable<DateTime>? $in;

  final Iterable<DateTime>? notIn;

  final DateTime? lt;

  final DateTime? lte;

  final DateTime? gt;

  final DateTime? gte;

  final NestedDateTimeFilter? not;

  @override
  Map<String, dynamic> toJson() => _$NestedDateTimeFilterToJson(this);
}

@_i1.jsonSerializable
class NestedDateTimeNullableFilter implements _i1.JsonSerializable {
  const NestedDateTimeNullableFilter({
    this.equals,
    this.$in,
    this.notIn,
    this.lt,
    this.lte,
    this.gt,
    this.gte,
    this.not,
  });

  factory NestedDateTimeNullableFilter.fromJson(Map<String, dynamic> json) =>
      _$NestedDateTimeNullableFilterFromJson(json);

  final DateTime? equals;

  @JsonKey(name: r'in')
  final Iterable<DateTime>? $in;

  final Iterable<DateTime>? notIn;

  final DateTime? lt;

  final DateTime? lte;

  final DateTime? gt;

  final DateTime? gte;

  final NestedDateTimeNullableFilter? not;

  @override
  Map<String, dynamic> toJson() => _$NestedDateTimeNullableFilterToJson(this);
}

@_i1.jsonSerializable
class NestedBigIntWithAggregatesFilter implements _i1.JsonSerializable {
  const NestedBigIntWithAggregatesFilter({
    this.equals,
    this.$in,
    this.notIn,
    this.lt,
    this.lte,
    this.gt,
    this.gte,
    this.not,
    this.$count,
    this.$avg,
    this.$sum,
    this.$min,
    this.$max,
  });

  factory NestedBigIntWithAggregatesFilter.fromJson(
          Map<String, dynamic> json) =>
      _$NestedBigIntWithAggregatesFilterFromJson(json);

  final BigInt? equals;

  @JsonKey(name: r'in')
  final Iterable<BigInt>? $in;

  final Iterable<BigInt>? notIn;

  final BigInt? lt;

  final BigInt? lte;

  final BigInt? gt;

  final BigInt? gte;

  final NestedBigIntWithAggregatesFilter? not;

  @JsonKey(name: r'_count')
  final NestedIntFilter? $count;

  @JsonKey(name: r'_avg')
  final NestedFloatFilter? $avg;

  @JsonKey(name: r'_sum')
  final NestedBigIntFilter? $sum;

  @JsonKey(name: r'_min')
  final NestedBigIntFilter? $min;

  @JsonKey(name: r'_max')
  final NestedBigIntFilter? $max;

  @override
  Map<String, dynamic> toJson() =>
      _$NestedBigIntWithAggregatesFilterToJson(this);
}

@_i1.jsonSerializable
class NestedIntFilter implements _i1.JsonSerializable {
  const NestedIntFilter({
    this.equals,
    this.$in,
    this.notIn,
    this.lt,
    this.lte,
    this.gt,
    this.gte,
    this.not,
  });

  factory NestedIntFilter.fromJson(Map<String, dynamic> json) =>
      _$NestedIntFilterFromJson(json);

  final int? equals;

  @JsonKey(name: r'in')
  final Iterable<int>? $in;

  final Iterable<int>? notIn;

  final int? lt;

  final int? lte;

  final int? gt;

  final int? gte;

  final NestedIntFilter? not;

  @override
  Map<String, dynamic> toJson() => _$NestedIntFilterToJson(this);
}

@_i1.jsonSerializable
class NestedFloatFilter implements _i1.JsonSerializable {
  const NestedFloatFilter({
    this.equals,
    this.$in,
    this.notIn,
    this.lt,
    this.lte,
    this.gt,
    this.gte,
    this.not,
  });

  factory NestedFloatFilter.fromJson(Map<String, dynamic> json) =>
      _$NestedFloatFilterFromJson(json);

  final double? equals;

  @JsonKey(name: r'in')
  final Iterable<double>? $in;

  final Iterable<double>? notIn;

  final double? lt;

  final double? lte;

  final double? gt;

  final double? gte;

  final NestedFloatFilter? not;

  @override
  Map<String, dynamic> toJson() => _$NestedFloatFilterToJson(this);
}

@_i1.jsonSerializable
class NestedStringWithAggregatesFilter implements _i1.JsonSerializable {
  const NestedStringWithAggregatesFilter({
    this.equals,
    this.$in,
    this.notIn,
    this.lt,
    this.lte,
    this.gt,
    this.gte,
    this.contains,
    this.startsWith,
    this.endsWith,
    this.not,
    this.$count,
    this.$min,
    this.$max,
  });

  factory NestedStringWithAggregatesFilter.fromJson(
          Map<String, dynamic> json) =>
      _$NestedStringWithAggregatesFilterFromJson(json);

  final String? equals;

  @JsonKey(name: r'in')
  final Iterable<String>? $in;

  final Iterable<String>? notIn;

  final String? lt;

  final String? lte;

  final String? gt;

  final String? gte;

  final String? contains;

  final String? startsWith;

  final String? endsWith;

  final NestedStringWithAggregatesFilter? not;

  @JsonKey(name: r'_count')
  final NestedIntFilter? $count;

  @JsonKey(name: r'_min')
  final NestedStringFilter? $min;

  @JsonKey(name: r'_max')
  final NestedStringFilter? $max;

  @override
  Map<String, dynamic> toJson() =>
      _$NestedStringWithAggregatesFilterToJson(this);
}

@_i1.jsonSerializable
class NestedStringNullableWithAggregatesFilter implements _i1.JsonSerializable {
  const NestedStringNullableWithAggregatesFilter({
    this.equals,
    this.$in,
    this.notIn,
    this.lt,
    this.lte,
    this.gt,
    this.gte,
    this.contains,
    this.startsWith,
    this.endsWith,
    this.not,
    this.$count,
    this.$min,
    this.$max,
  });

  factory NestedStringNullableWithAggregatesFilter.fromJson(
          Map<String, dynamic> json) =>
      _$NestedStringNullableWithAggregatesFilterFromJson(json);

  final String? equals;

  @JsonKey(name: r'in')
  final Iterable<String>? $in;

  final Iterable<String>? notIn;

  final String? lt;

  final String? lte;

  final String? gt;

  final String? gte;

  final String? contains;

  final String? startsWith;

  final String? endsWith;

  final NestedStringNullableWithAggregatesFilter? not;

  @JsonKey(name: r'_count')
  final NestedIntNullableFilter? $count;

  @JsonKey(name: r'_min')
  final NestedStringNullableFilter? $min;

  @JsonKey(name: r'_max')
  final NestedStringNullableFilter? $max;

  @override
  Map<String, dynamic> toJson() =>
      _$NestedStringNullableWithAggregatesFilterToJson(this);
}

@_i1.jsonSerializable
class NestedIntNullableWithAggregatesFilter implements _i1.JsonSerializable {
  const NestedIntNullableWithAggregatesFilter({
    this.equals,
    this.$in,
    this.notIn,
    this.lt,
    this.lte,
    this.gt,
    this.gte,
    this.not,
    this.$count,
    this.$avg,
    this.$sum,
    this.$min,
    this.$max,
  });

  factory NestedIntNullableWithAggregatesFilter.fromJson(
          Map<String, dynamic> json) =>
      _$NestedIntNullableWithAggregatesFilterFromJson(json);

  final int? equals;

  @JsonKey(name: r'in')
  final Iterable<int>? $in;

  final Iterable<int>? notIn;

  final int? lt;

  final int? lte;

  final int? gt;

  final int? gte;

  final NestedIntNullableWithAggregatesFilter? not;

  @JsonKey(name: r'_count')
  final NestedIntNullableFilter? $count;

  @JsonKey(name: r'_avg')
  final NestedFloatNullableFilter? $avg;

  @JsonKey(name: r'_sum')
  final NestedIntNullableFilter? $sum;

  @JsonKey(name: r'_min')
  final NestedIntNullableFilter? $min;

  @JsonKey(name: r'_max')
  final NestedIntNullableFilter? $max;

  @override
  Map<String, dynamic> toJson() =>
      _$NestedIntNullableWithAggregatesFilterToJson(this);
}

@_i1.jsonSerializable
class NestedFloatNullableFilter implements _i1.JsonSerializable {
  const NestedFloatNullableFilter({
    this.equals,
    this.$in,
    this.notIn,
    this.lt,
    this.lte,
    this.gt,
    this.gte,
    this.not,
  });

  factory NestedFloatNullableFilter.fromJson(Map<String, dynamic> json) =>
      _$NestedFloatNullableFilterFromJson(json);

  final double? equals;

  @JsonKey(name: r'in')
  final Iterable<double>? $in;

  final Iterable<double>? notIn;

  final double? lt;

  final double? lte;

  final double? gt;

  final double? gte;

  final NestedFloatNullableFilter? not;

  @override
  Map<String, dynamic> toJson() => _$NestedFloatNullableFilterToJson(this);
}

@_i1.jsonSerializable
class NestedDateTimeWithAggregatesFilter implements _i1.JsonSerializable {
  const NestedDateTimeWithAggregatesFilter({
    this.equals,
    this.$in,
    this.notIn,
    this.lt,
    this.lte,
    this.gt,
    this.gte,
    this.not,
    this.$count,
    this.$min,
    this.$max,
  });

  factory NestedDateTimeWithAggregatesFilter.fromJson(
          Map<String, dynamic> json) =>
      _$NestedDateTimeWithAggregatesFilterFromJson(json);

  final DateTime? equals;

  @JsonKey(name: r'in')
  final Iterable<DateTime>? $in;

  final Iterable<DateTime>? notIn;

  final DateTime? lt;

  final DateTime? lte;

  final DateTime? gt;

  final DateTime? gte;

  final NestedDateTimeWithAggregatesFilter? not;

  @JsonKey(name: r'_count')
  final NestedIntFilter? $count;

  @JsonKey(name: r'_min')
  final NestedDateTimeFilter? $min;

  @JsonKey(name: r'_max')
  final NestedDateTimeFilter? $max;

  @override
  Map<String, dynamic> toJson() =>
      _$NestedDateTimeWithAggregatesFilterToJson(this);
}

@_i1.jsonSerializable
class NestedDateTimeNullableWithAggregatesFilter
    implements _i1.JsonSerializable {
  const NestedDateTimeNullableWithAggregatesFilter({
    this.equals,
    this.$in,
    this.notIn,
    this.lt,
    this.lte,
    this.gt,
    this.gte,
    this.not,
    this.$count,
    this.$min,
    this.$max,
  });

  factory NestedDateTimeNullableWithAggregatesFilter.fromJson(
          Map<String, dynamic> json) =>
      _$NestedDateTimeNullableWithAggregatesFilterFromJson(json);

  final DateTime? equals;

  @JsonKey(name: r'in')
  final Iterable<DateTime>? $in;

  final Iterable<DateTime>? notIn;

  final DateTime? lt;

  final DateTime? lte;

  final DateTime? gt;

  final DateTime? gte;

  final NestedDateTimeNullableWithAggregatesFilter? not;

  @JsonKey(name: r'_count')
  final NestedIntNullableFilter? $count;

  @JsonKey(name: r'_min')
  final NestedDateTimeNullableFilter? $min;

  @JsonKey(name: r'_max')
  final NestedDateTimeNullableFilter? $max;

  @override
  Map<String, dynamic> toJson() =>
      _$NestedDateTimeNullableWithAggregatesFilterToJson(this);
}

@_i1.jsonSerializable
class BookAssetTbl implements _i1.JsonSerializable {
  const BookAssetTbl({
    required this.seq,
    required this.assetNo,
    this.bookNm,
    this.cnt,
    this.publisher,
    this.amount,
    this.buyDate,
    this.mngDept,
    this.rentYn,
    this.rentUser,
    this.remarks,
    required this.useYn,
    required this.delYn,
    required this.regDate,
    this.updDate,
  });

  factory BookAssetTbl.fromJson(Map<String, dynamic> json) =>
      _$BookAssetTblFromJson(json);

  @JsonKey(name: r'SEQ')
  final BigInt seq;

  @JsonKey(name: r'ASSET_NO')
  final String assetNo;

  @JsonKey(name: r'BOOK_NM')
  final String? bookNm;

  @JsonKey(name: r'CNT')
  final int? cnt;

  @JsonKey(name: r'PUBLISHER')
  final String? publisher;

  @JsonKey(name: r'AMOUNT')
  final int? amount;

  @JsonKey(name: r'BUY_DATE')
  final String? buyDate;

  @JsonKey(name: r'MNG_DEPT')
  final String? mngDept;

  @JsonKey(name: r'RENT_YN')
  final String? rentYn;

  @JsonKey(name: r'RENT_USER')
  final String? rentUser;

  @JsonKey(name: r'REMARKS')
  final String? remarks;

  @JsonKey(name: r'USE_YN')
  final String useYn;

  @JsonKey(name: r'DEL_YN')
  final String delYn;

  @JsonKey(name: r'REG_DATE')
  final DateTime regDate;

  @JsonKey(name: r'UPD_DATE')
  final DateTime? updDate;

  @override
  Map<String, dynamic> toJson() => _$BookAssetTblToJson(this);
}

@_i1.jsonSerializable
class StMngrMst implements _i1.JsonSerializable {
  const StMngrMst({
    required this.mngrId,
    required this.mngrNm,
    this.mngrPw,
    this.grpCd,
    this.grade,
    required this.permCd,
    this.acsYn,
    this.clph,
    this.empNo,
    required this.joinDate,
    this.pwdWrongCnt,
    this.pwdWrongDate,
    this.lstLoginDate,
    this.flpth,
    this.fileNm,
    required this.regId,
    required this.regDate,
    this.editId,
    this.editDate,
    this.delId,
    this.delDate,
  });

  factory StMngrMst.fromJson(Map<String, dynamic> json) =>
      _$StMngrMstFromJson(json);

  @JsonKey(name: r'MNGR_ID')
  final String mngrId;

  @JsonKey(name: r'MNGR_NM')
  final String mngrNm;

  @JsonKey(name: r'MNGR_PW')
  final String? mngrPw;

  @JsonKey(name: r'GRP_CD')
  final String? grpCd;

  @JsonKey(name: r'GRADE')
  final String? grade;

  @JsonKey(name: r'PERM_CD')
  final String permCd;

  @JsonKey(name: r'ACS_YN')
  final String? acsYn;

  @JsonKey(name: r'CLPH')
  final String? clph;

  @JsonKey(name: r'EMP_NO')
  final String? empNo;

  @JsonKey(name: r'JOIN_DATE')
  final String joinDate;

  @JsonKey(name: r'PWD_WRONG_CNT')
  final int? pwdWrongCnt;

  @JsonKey(name: r'PWD_WRONG_DATE')
  final String? pwdWrongDate;

  @JsonKey(name: r'LST_LOGIN_DATE')
  final String? lstLoginDate;

  @JsonKey(name: r'FLPTH')
  final String? flpth;

  @JsonKey(name: r'FILE_NM')
  final String? fileNm;

  @JsonKey(name: r'REG_ID')
  final String regId;

  @JsonKey(name: r'REG_DATE')
  final String regDate;

  @JsonKey(name: r'EDIT_ID')
  final String? editId;

  @JsonKey(name: r'EDIT_DATE')
  final String? editDate;

  @JsonKey(name: r'DEL_ID')
  final String? delId;

  @JsonKey(name: r'DEL_DATE')
  final String? delDate;

  @override
  Map<String, dynamic> toJson() => _$StMngrMstToJson(this);
}

class BOOKASSETTBLFluent<T> extends _i1.PrismaFluent<T> {
  const BOOKASSETTBLFluent(
    super.original,
    super.$query,
  );
}

class STMNGRMSTFluent<T> extends _i1.PrismaFluent<T> {
  const STMNGRMSTFluent(
    super.original,
    super.$query,
  );
}

extension BOOKASSETTBLModelDelegateExtension
    on _i1.ModelDelegate<BookAssetTbl> {
  BOOKASSETTBLFluent<BookAssetTbl?> findUnique(
      {required BOOKASSETTBLWhereUniqueInput where}) {
    final args = [
      _i2.GraphQLArg(
        r'where',
        where,
      )
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'findUniqueBOOK_ASSET_TBL',
          fields: fields,
          args: args,
        )
      ]),
      key: r'findUniqueBOOK_ASSET_TBL',
    );
    final future = query(BOOKASSETTBLScalarFieldEnum.values.toGraphQLFields())
        .then((json) => json is Map
            ? BookAssetTbl.fromJson(json.cast<String, dynamic>())
            : null);
    return BOOKASSETTBLFluent<BookAssetTbl?>(
      future,
      query,
    );
  }

  BOOKASSETTBLFluent<BookAssetTbl> findUniqueOrThrow(
      {required BOOKASSETTBLWhereUniqueInput where}) {
    final args = [
      _i2.GraphQLArg(
        r'where',
        where,
      )
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'findUniqueBOOK_ASSET_TBLOrThrow',
          fields: fields,
          args: args,
        )
      ]),
      key: r'findUniqueBOOK_ASSET_TBLOrThrow',
    );
    final future = query(BOOKASSETTBLScalarFieldEnum.values.toGraphQLFields())
        .then((json) => json is Map
            ? BookAssetTbl.fromJson(json.cast<String, dynamic>())
            : throw Exception(
                'Not found OutputTypeRefType.string(value: BOOK_ASSET_TBL)'));
    return BOOKASSETTBLFluent<BookAssetTbl>(
      future,
      query,
    );
  }

  BOOKASSETTBLFluent<BookAssetTbl?> findFirst({
    BOOKASSETTBLWhereInput? where,
    Iterable<BOOKASSETTBLOrderByWithRelationInput>? orderBy,
    BOOKASSETTBLWhereUniqueInput? cursor,
    int? take,
    int? skip,
    Iterable<BOOKASSETTBLScalarFieldEnum>? distinct,
  }) {
    final args = [
      _i2.GraphQLArg(
        r'where',
        where,
      ),
      _i2.GraphQLArg(
        r'orderBy',
        orderBy,
      ),
      _i2.GraphQLArg(
        r'cursor',
        cursor,
      ),
      _i2.GraphQLArg(
        r'take',
        take,
      ),
      _i2.GraphQLArg(
        r'skip',
        skip,
      ),
      _i2.GraphQLArg(
        r'distinct',
        distinct,
      ),
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'findFirstBOOK_ASSET_TBL',
          fields: fields,
          args: args,
        )
      ]),
      key: r'findFirstBOOK_ASSET_TBL',
    );
    final future = query(BOOKASSETTBLScalarFieldEnum.values.toGraphQLFields())
        .then((json) => json is Map
            ? BookAssetTbl.fromJson(json.cast<String, dynamic>())
            : null);
    return BOOKASSETTBLFluent<BookAssetTbl?>(
      future,
      query,
    );
  }

  BOOKASSETTBLFluent<BookAssetTbl> findFirstOrThrow({
    BOOKASSETTBLWhereInput? where,
    Iterable<BOOKASSETTBLOrderByWithRelationInput>? orderBy,
    BOOKASSETTBLWhereUniqueInput? cursor,
    int? take,
    int? skip,
    Iterable<BOOKASSETTBLScalarFieldEnum>? distinct,
  }) {
    final args = [
      _i2.GraphQLArg(
        r'where',
        where,
      ),
      _i2.GraphQLArg(
        r'orderBy',
        orderBy,
      ),
      _i2.GraphQLArg(
        r'cursor',
        cursor,
      ),
      _i2.GraphQLArg(
        r'take',
        take,
      ),
      _i2.GraphQLArg(
        r'skip',
        skip,
      ),
      _i2.GraphQLArg(
        r'distinct',
        distinct,
      ),
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'findFirstBOOK_ASSET_TBLOrThrow',
          fields: fields,
          args: args,
        )
      ]),
      key: r'findFirstBOOK_ASSET_TBLOrThrow',
    );
    final future = query(BOOKASSETTBLScalarFieldEnum.values.toGraphQLFields())
        .then((json) => json is Map
            ? BookAssetTbl.fromJson(json.cast<String, dynamic>())
            : throw Exception(
                'Not found OutputTypeRefType.string(value: BOOK_ASSET_TBL)'));
    return BOOKASSETTBLFluent<BookAssetTbl>(
      future,
      query,
    );
  }

  Future<Iterable<BookAssetTbl>> findMany({
    BOOKASSETTBLWhereInput? where,
    Iterable<BOOKASSETTBLOrderByWithRelationInput>? orderBy,
    BOOKASSETTBLWhereUniqueInput? cursor,
    int? take,
    int? skip,
    Iterable<BOOKASSETTBLScalarFieldEnum>? distinct,
  }) {
    final args = [
      _i2.GraphQLArg(
        r'where',
        where,
      ),
      _i2.GraphQLArg(
        r'orderBy',
        orderBy,
      ),
      _i2.GraphQLArg(
        r'cursor',
        cursor,
      ),
      _i2.GraphQLArg(
        r'take',
        take,
      ),
      _i2.GraphQLArg(
        r'skip',
        skip,
      ),
      _i2.GraphQLArg(
        r'distinct',
        distinct,
      ),
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'findManyBOOK_ASSET_TBL',
          fields: fields,
          args: args,
        )
      ]),
      key: r'findManyBOOK_ASSET_TBL',
    );
    final fields = BOOKASSETTBLScalarFieldEnum.values.toGraphQLFields();
    compiler(Iterable<Map> findManyBOOKASSETTBL) =>
        findManyBOOKASSETTBL.map((Map findManyBOOKASSETTBL) =>
            BookAssetTbl.fromJson(findManyBOOKASSETTBL.cast()));
    return query(fields).then((json) => json is Iterable
        ? compiler(json.cast())
        : throw Exception('Unable to parse response'));
  }

  BOOKASSETTBLFluent<BookAssetTbl> create(
      {required BOOKASSETTBLCreateInput data}) {
    final args = [
      _i2.GraphQLArg(
        r'data',
        data,
      )
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $mutation([
        _i2.GraphQLField(
          r'createOneBOOK_ASSET_TBL',
          fields: fields,
          args: args,
        )
      ]),
      key: r'createOneBOOK_ASSET_TBL',
    );
    final future = query(BOOKASSETTBLScalarFieldEnum.values.toGraphQLFields())
        .then((json) => json is Map
            ? BookAssetTbl.fromJson(json.cast<String, dynamic>())
            : throw Exception(
                'Not found OutputTypeRefType.string(value: BOOK_ASSET_TBL)'));
    return BOOKASSETTBLFluent<BookAssetTbl>(
      future,
      query,
    );
  }

  Future<AffectedRowsOutput> createMany({
    required Iterable<BOOKASSETTBLCreateManyInput> data,
    bool? skipDuplicates,
  }) {
    final args = [
      _i2.GraphQLArg(
        r'data',
        data,
      ),
      _i2.GraphQLArg(
        r'skipDuplicates',
        skipDuplicates,
      ),
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $mutation([
        _i2.GraphQLField(
          r'createManyBOOK_ASSET_TBL',
          fields: fields,
          args: args,
        )
      ]),
      key: r'createManyBOOK_ASSET_TBL',
    );
    final fields = const ['count'].map((e) => _i2.GraphQLField(e));
    compiler(Map createManyBOOKASSETTBL) =>
        AffectedRowsOutput.fromJson(createManyBOOKASSETTBL.cast());
    return query(fields).then((json) => json is Map
        ? compiler(json)
        : throw Exception('Unable to parse response'));
  }

  BOOKASSETTBLFluent<BookAssetTbl?> update({
    required BOOKASSETTBLUpdateInput data,
    required BOOKASSETTBLWhereUniqueInput where,
  }) {
    final args = [
      _i2.GraphQLArg(
        r'data',
        data,
      ),
      _i2.GraphQLArg(
        r'where',
        where,
      ),
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $mutation([
        _i2.GraphQLField(
          r'updateOneBOOK_ASSET_TBL',
          fields: fields,
          args: args,
        )
      ]),
      key: r'updateOneBOOK_ASSET_TBL',
    );
    final future = query(BOOKASSETTBLScalarFieldEnum.values.toGraphQLFields())
        .then((json) => json is Map
            ? BookAssetTbl.fromJson(json.cast<String, dynamic>())
            : null);
    return BOOKASSETTBLFluent<BookAssetTbl?>(
      future,
      query,
    );
  }

  Future<AffectedRowsOutput> updateMany({
    required BOOKASSETTBLUpdateManyMutationInput data,
    BOOKASSETTBLWhereInput? where,
  }) {
    final args = [
      _i2.GraphQLArg(
        r'data',
        data,
      ),
      _i2.GraphQLArg(
        r'where',
        where,
      ),
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $mutation([
        _i2.GraphQLField(
          r'updateManyBOOK_ASSET_TBL',
          fields: fields,
          args: args,
        )
      ]),
      key: r'updateManyBOOK_ASSET_TBL',
    );
    final fields = const ['count'].map((e) => _i2.GraphQLField(e));
    compiler(Map updateManyBOOKASSETTBL) =>
        AffectedRowsOutput.fromJson(updateManyBOOKASSETTBL.cast());
    return query(fields).then((json) => json is Map
        ? compiler(json)
        : throw Exception('Unable to parse response'));
  }

  BOOKASSETTBLFluent<BookAssetTbl> upsert({
    required BOOKASSETTBLWhereUniqueInput where,
    required BOOKASSETTBLCreateInput create,
    required BOOKASSETTBLUpdateInput update,
  }) {
    final args = [
      _i2.GraphQLArg(
        r'where',
        where,
      ),
      _i2.GraphQLArg(
        r'create',
        create,
      ),
      _i2.GraphQLArg(
        r'update',
        update,
      ),
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $mutation([
        _i2.GraphQLField(
          r'upsertOneBOOK_ASSET_TBL',
          fields: fields,
          args: args,
        )
      ]),
      key: r'upsertOneBOOK_ASSET_TBL',
    );
    final future = query(BOOKASSETTBLScalarFieldEnum.values.toGraphQLFields())
        .then((json) => json is Map
            ? BookAssetTbl.fromJson(json.cast<String, dynamic>())
            : throw Exception(
                'Not found OutputTypeRefType.string(value: BOOK_ASSET_TBL)'));
    return BOOKASSETTBLFluent<BookAssetTbl>(
      future,
      query,
    );
  }

  BOOKASSETTBLFluent<BookAssetTbl?> delete(
      {required BOOKASSETTBLWhereUniqueInput where}) {
    final args = [
      _i2.GraphQLArg(
        r'where',
        where,
      )
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $mutation([
        _i2.GraphQLField(
          r'deleteOneBOOK_ASSET_TBL',
          fields: fields,
          args: args,
        )
      ]),
      key: r'deleteOneBOOK_ASSET_TBL',
    );
    final future = query(BOOKASSETTBLScalarFieldEnum.values.toGraphQLFields())
        .then((json) => json is Map
            ? BookAssetTbl.fromJson(json.cast<String, dynamic>())
            : null);
    return BOOKASSETTBLFluent<BookAssetTbl?>(
      future,
      query,
    );
  }

  Future<AffectedRowsOutput> deleteMany({BOOKASSETTBLWhereInput? where}) {
    final args = [
      _i2.GraphQLArg(
        r'where',
        where,
      )
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $mutation([
        _i2.GraphQLField(
          r'deleteManyBOOK_ASSET_TBL',
          fields: fields,
          args: args,
        )
      ]),
      key: r'deleteManyBOOK_ASSET_TBL',
    );
    final fields = const ['count'].map((e) => _i2.GraphQLField(e));
    compiler(Map deleteManyBOOKASSETTBL) =>
        AffectedRowsOutput.fromJson(deleteManyBOOKASSETTBL.cast());
    return query(fields).then((json) => json is Map
        ? compiler(json)
        : throw Exception('Unable to parse response'));
  }

  AggregateBOOKASSETTBL aggregate({
    BOOKASSETTBLWhereInput? where,
    Iterable<BOOKASSETTBLOrderByWithRelationInput>? orderBy,
    BOOKASSETTBLWhereUniqueInput? cursor,
    int? take,
    int? skip,
  }) {
    final args = [
      _i2.GraphQLArg(
        r'where',
        where,
      ),
      _i2.GraphQLArg(
        r'orderBy',
        orderBy,
      ),
      _i2.GraphQLArg(
        r'cursor',
        cursor,
      ),
      _i2.GraphQLArg(
        r'take',
        take,
      ),
      _i2.GraphQLArg(
        r'skip',
        skip,
      ),
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'aggregateBOOK_ASSET_TBL',
          fields: fields,
          args: args,
        )
      ]),
      key: r'aggregateBOOK_ASSET_TBL',
    );
    return AggregateBOOKASSETTBL(query);
  }

  Future<Iterable<BOOKASSETTBLGroupByOutputType>> groupBy({
    BOOKASSETTBLWhereInput? where,
    Iterable<BOOKASSETTBLOrderByWithAggregationInput>? orderBy,
    required Iterable<BOOKASSETTBLScalarFieldEnum> by,
    BOOKASSETTBLScalarWhereWithAggregatesInput? having,
    int? take,
    int? skip,
  }) {
    final args = [
      _i2.GraphQLArg(
        r'where',
        where,
      ),
      _i2.GraphQLArg(
        r'orderBy',
        orderBy,
      ),
      _i2.GraphQLArg(
        r'by',
        by,
      ),
      _i2.GraphQLArg(
        r'having',
        having,
      ),
      _i2.GraphQLArg(
        r'take',
        take,
      ),
      _i2.GraphQLArg(
        r'skip',
        skip,
      ),
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'groupByBOOK_ASSET_TBL',
          fields: fields,
          args: args,
        )
      ]),
      key: r'groupByBOOK_ASSET_TBL',
    );
    final fields = by.map((e) => _i2.GraphQLField(e.originalName ?? e.name));
    compiler(Iterable<Map> groupByBOOKASSETTBL) =>
        groupByBOOKASSETTBL.map((Map groupByBOOKASSETTBL) =>
            BOOKASSETTBLGroupByOutputType.fromJson(groupByBOOKASSETTBL.cast()));
    return query(fields).then((json) => json is Iterable
        ? compiler(json.cast())
        : throw Exception('Unable to parse response'));
  }
}

extension STMNGRMSTModelDelegateExtension on _i1.ModelDelegate<StMngrMst> {
  STMNGRMSTFluent<StMngrMst?> findUnique(
      {required STMNGRMSTWhereUniqueInput where}) {
    final args = [
      _i2.GraphQLArg(
        r'where',
        where,
      )
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'findUniqueST_MNGR_MST',
          fields: fields,
          args: args,
        )
      ]),
      key: r'findUniqueST_MNGR_MST',
    );
    final future = query(STMNGRMSTScalarFieldEnum.values.toGraphQLFields())
        .then((json) => json is Map
            ? StMngrMst.fromJson(json.cast<String, dynamic>())
            : null);
    return STMNGRMSTFluent<StMngrMst?>(
      future,
      query,
    );
  }

  STMNGRMSTFluent<StMngrMst> findUniqueOrThrow(
      {required STMNGRMSTWhereUniqueInput where}) {
    final args = [
      _i2.GraphQLArg(
        r'where',
        where,
      )
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'findUniqueST_MNGR_MSTOrThrow',
          fields: fields,
          args: args,
        )
      ]),
      key: r'findUniqueST_MNGR_MSTOrThrow',
    );
    final future = query(STMNGRMSTScalarFieldEnum.values.toGraphQLFields())
        .then((json) => json is Map
            ? StMngrMst.fromJson(json.cast<String, dynamic>())
            : throw Exception(
                'Not found OutputTypeRefType.string(value: ST_MNGR_MST)'));
    return STMNGRMSTFluent<StMngrMst>(
      future,
      query,
    );
  }

  STMNGRMSTFluent<StMngrMst?> findFirst({
    STMNGRMSTWhereInput? where,
    Iterable<STMNGRMSTOrderByWithRelationInput>? orderBy,
    STMNGRMSTWhereUniqueInput? cursor,
    int? take,
    int? skip,
    Iterable<STMNGRMSTScalarFieldEnum>? distinct,
  }) {
    final args = [
      _i2.GraphQLArg(
        r'where',
        where,
      ),
      _i2.GraphQLArg(
        r'orderBy',
        orderBy,
      ),
      _i2.GraphQLArg(
        r'cursor',
        cursor,
      ),
      _i2.GraphQLArg(
        r'take',
        take,
      ),
      _i2.GraphQLArg(
        r'skip',
        skip,
      ),
      _i2.GraphQLArg(
        r'distinct',
        distinct,
      ),
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'findFirstST_MNGR_MST',
          fields: fields,
          args: args,
        )
      ]),
      key: r'findFirstST_MNGR_MST',
    );
    final future = query(STMNGRMSTScalarFieldEnum.values.toGraphQLFields())
        .then((json) => json is Map
            ? StMngrMst.fromJson(json.cast<String, dynamic>())
            : null);
    return STMNGRMSTFluent<StMngrMst?>(
      future,
      query,
    );
  }

  STMNGRMSTFluent<StMngrMst> findFirstOrThrow({
    STMNGRMSTWhereInput? where,
    Iterable<STMNGRMSTOrderByWithRelationInput>? orderBy,
    STMNGRMSTWhereUniqueInput? cursor,
    int? take,
    int? skip,
    Iterable<STMNGRMSTScalarFieldEnum>? distinct,
  }) {
    final args = [
      _i2.GraphQLArg(
        r'where',
        where,
      ),
      _i2.GraphQLArg(
        r'orderBy',
        orderBy,
      ),
      _i2.GraphQLArg(
        r'cursor',
        cursor,
      ),
      _i2.GraphQLArg(
        r'take',
        take,
      ),
      _i2.GraphQLArg(
        r'skip',
        skip,
      ),
      _i2.GraphQLArg(
        r'distinct',
        distinct,
      ),
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'findFirstST_MNGR_MSTOrThrow',
          fields: fields,
          args: args,
        )
      ]),
      key: r'findFirstST_MNGR_MSTOrThrow',
    );
    final future = query(STMNGRMSTScalarFieldEnum.values.toGraphQLFields())
        .then((json) => json is Map
            ? StMngrMst.fromJson(json.cast<String, dynamic>())
            : throw Exception(
                'Not found OutputTypeRefType.string(value: ST_MNGR_MST)'));
    return STMNGRMSTFluent<StMngrMst>(
      future,
      query,
    );
  }

  Future<Iterable<StMngrMst>> findMany({
    STMNGRMSTWhereInput? where,
    Iterable<STMNGRMSTOrderByWithRelationInput>? orderBy,
    STMNGRMSTWhereUniqueInput? cursor,
    int? take,
    int? skip,
    Iterable<STMNGRMSTScalarFieldEnum>? distinct,
  }) {
    final args = [
      _i2.GraphQLArg(
        r'where',
        where,
      ),
      _i2.GraphQLArg(
        r'orderBy',
        orderBy,
      ),
      _i2.GraphQLArg(
        r'cursor',
        cursor,
      ),
      _i2.GraphQLArg(
        r'take',
        take,
      ),
      _i2.GraphQLArg(
        r'skip',
        skip,
      ),
      _i2.GraphQLArg(
        r'distinct',
        distinct,
      ),
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'findManyST_MNGR_MST',
          fields: fields,
          args: args,
        )
      ]),
      key: r'findManyST_MNGR_MST',
    );
    final fields = STMNGRMSTScalarFieldEnum.values.toGraphQLFields();
    compiler(Iterable<Map> findManySTMNGRMST) =>
        findManySTMNGRMST.map((Map findManySTMNGRMST) =>
            StMngrMst.fromJson(findManySTMNGRMST.cast()));
    return query(fields).then((json) => json is Iterable
        ? compiler(json.cast())
        : throw Exception('Unable to parse response'));
  }

  STMNGRMSTFluent<StMngrMst> create({required STMNGRMSTCreateInput data}) {
    final args = [
      _i2.GraphQLArg(
        r'data',
        data,
      )
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $mutation([
        _i2.GraphQLField(
          r'createOneST_MNGR_MST',
          fields: fields,
          args: args,
        )
      ]),
      key: r'createOneST_MNGR_MST',
    );
    final future = query(STMNGRMSTScalarFieldEnum.values.toGraphQLFields())
        .then((json) => json is Map
            ? StMngrMst.fromJson(json.cast<String, dynamic>())
            : throw Exception(
                'Not found OutputTypeRefType.string(value: ST_MNGR_MST)'));
    return STMNGRMSTFluent<StMngrMst>(
      future,
      query,
    );
  }

  Future<AffectedRowsOutput> createMany({
    required Iterable<STMNGRMSTCreateManyInput> data,
    bool? skipDuplicates,
  }) {
    final args = [
      _i2.GraphQLArg(
        r'data',
        data,
      ),
      _i2.GraphQLArg(
        r'skipDuplicates',
        skipDuplicates,
      ),
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $mutation([
        _i2.GraphQLField(
          r'createManyST_MNGR_MST',
          fields: fields,
          args: args,
        )
      ]),
      key: r'createManyST_MNGR_MST',
    );
    final fields = const ['count'].map((e) => _i2.GraphQLField(e));
    compiler(Map createManySTMNGRMST) =>
        AffectedRowsOutput.fromJson(createManySTMNGRMST.cast());
    return query(fields).then((json) => json is Map
        ? compiler(json)
        : throw Exception('Unable to parse response'));
  }

  STMNGRMSTFluent<StMngrMst?> update({
    required STMNGRMSTUpdateInput data,
    required STMNGRMSTWhereUniqueInput where,
  }) {
    final args = [
      _i2.GraphQLArg(
        r'data',
        data,
      ),
      _i2.GraphQLArg(
        r'where',
        where,
      ),
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $mutation([
        _i2.GraphQLField(
          r'updateOneST_MNGR_MST',
          fields: fields,
          args: args,
        )
      ]),
      key: r'updateOneST_MNGR_MST',
    );
    final future = query(STMNGRMSTScalarFieldEnum.values.toGraphQLFields())
        .then((json) => json is Map
            ? StMngrMst.fromJson(json.cast<String, dynamic>())
            : null);
    return STMNGRMSTFluent<StMngrMst?>(
      future,
      query,
    );
  }

  Future<AffectedRowsOutput> updateMany({
    required STMNGRMSTUpdateManyMutationInput data,
    STMNGRMSTWhereInput? where,
  }) {
    final args = [
      _i2.GraphQLArg(
        r'data',
        data,
      ),
      _i2.GraphQLArg(
        r'where',
        where,
      ),
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $mutation([
        _i2.GraphQLField(
          r'updateManyST_MNGR_MST',
          fields: fields,
          args: args,
        )
      ]),
      key: r'updateManyST_MNGR_MST',
    );
    final fields = const ['count'].map((e) => _i2.GraphQLField(e));
    compiler(Map updateManySTMNGRMST) =>
        AffectedRowsOutput.fromJson(updateManySTMNGRMST.cast());
    return query(fields).then((json) => json is Map
        ? compiler(json)
        : throw Exception('Unable to parse response'));
  }

  STMNGRMSTFluent<StMngrMst> upsert({
    required STMNGRMSTWhereUniqueInput where,
    required STMNGRMSTCreateInput create,
    required STMNGRMSTUpdateInput update,
  }) {
    final args = [
      _i2.GraphQLArg(
        r'where',
        where,
      ),
      _i2.GraphQLArg(
        r'create',
        create,
      ),
      _i2.GraphQLArg(
        r'update',
        update,
      ),
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $mutation([
        _i2.GraphQLField(
          r'upsertOneST_MNGR_MST',
          fields: fields,
          args: args,
        )
      ]),
      key: r'upsertOneST_MNGR_MST',
    );
    final future = query(STMNGRMSTScalarFieldEnum.values.toGraphQLFields())
        .then((json) => json is Map
            ? StMngrMst.fromJson(json.cast<String, dynamic>())
            : throw Exception(
                'Not found OutputTypeRefType.string(value: ST_MNGR_MST)'));
    return STMNGRMSTFluent<StMngrMst>(
      future,
      query,
    );
  }

  STMNGRMSTFluent<StMngrMst?> delete(
      {required STMNGRMSTWhereUniqueInput where}) {
    final args = [
      _i2.GraphQLArg(
        r'where',
        where,
      )
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $mutation([
        _i2.GraphQLField(
          r'deleteOneST_MNGR_MST',
          fields: fields,
          args: args,
        )
      ]),
      key: r'deleteOneST_MNGR_MST',
    );
    final future = query(STMNGRMSTScalarFieldEnum.values.toGraphQLFields())
        .then((json) => json is Map
            ? StMngrMst.fromJson(json.cast<String, dynamic>())
            : null);
    return STMNGRMSTFluent<StMngrMst?>(
      future,
      query,
    );
  }

  Future<AffectedRowsOutput> deleteMany({STMNGRMSTWhereInput? where}) {
    final args = [
      _i2.GraphQLArg(
        r'where',
        where,
      )
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $mutation([
        _i2.GraphQLField(
          r'deleteManyST_MNGR_MST',
          fields: fields,
          args: args,
        )
      ]),
      key: r'deleteManyST_MNGR_MST',
    );
    final fields = const ['count'].map((e) => _i2.GraphQLField(e));
    compiler(Map deleteManySTMNGRMST) =>
        AffectedRowsOutput.fromJson(deleteManySTMNGRMST.cast());
    return query(fields).then((json) => json is Map
        ? compiler(json)
        : throw Exception('Unable to parse response'));
  }

  AggregateSTMNGRMST aggregate({
    STMNGRMSTWhereInput? where,
    Iterable<STMNGRMSTOrderByWithRelationInput>? orderBy,
    STMNGRMSTWhereUniqueInput? cursor,
    int? take,
    int? skip,
  }) {
    final args = [
      _i2.GraphQLArg(
        r'where',
        where,
      ),
      _i2.GraphQLArg(
        r'orderBy',
        orderBy,
      ),
      _i2.GraphQLArg(
        r'cursor',
        cursor,
      ),
      _i2.GraphQLArg(
        r'take',
        take,
      ),
      _i2.GraphQLArg(
        r'skip',
        skip,
      ),
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'aggregateST_MNGR_MST',
          fields: fields,
          args: args,
        )
      ]),
      key: r'aggregateST_MNGR_MST',
    );
    return AggregateSTMNGRMST(query);
  }

  Future<Iterable<STMNGRMSTGroupByOutputType>> groupBy({
    STMNGRMSTWhereInput? where,
    Iterable<STMNGRMSTOrderByWithAggregationInput>? orderBy,
    required Iterable<STMNGRMSTScalarFieldEnum> by,
    STMNGRMSTScalarWhereWithAggregatesInput? having,
    int? take,
    int? skip,
  }) {
    final args = [
      _i2.GraphQLArg(
        r'where',
        where,
      ),
      _i2.GraphQLArg(
        r'orderBy',
        orderBy,
      ),
      _i2.GraphQLArg(
        r'by',
        by,
      ),
      _i2.GraphQLArg(
        r'having',
        having,
      ),
      _i2.GraphQLArg(
        r'take',
        take,
      ),
      _i2.GraphQLArg(
        r'skip',
        skip,
      ),
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'groupByST_MNGR_MST',
          fields: fields,
          args: args,
        )
      ]),
      key: r'groupByST_MNGR_MST',
    );
    final fields = by.map((e) => _i2.GraphQLField(e.originalName ?? e.name));
    compiler(Iterable<Map> groupBySTMNGRMST) =>
        groupBySTMNGRMST.map((Map groupBySTMNGRMST) =>
            STMNGRMSTGroupByOutputType.fromJson(groupBySTMNGRMST.cast()));
    return query(fields).then((json) => json is Iterable
        ? compiler(json.cast())
        : throw Exception('Unable to parse response'));
  }
}

@_i1.jsonSerializable
class BOOKASSETTBLGroupByOutputType implements _i1.JsonSerializable {
  const BOOKASSETTBLGroupByOutputType({
    this.seq,
    this.assetNo,
    this.bookNm,
    this.cnt,
    this.publisher,
    this.amount,
    this.buyDate,
    this.mngDept,
    this.rentYn,
    this.rentUser,
    this.remarks,
    this.useYn,
    this.delYn,
    this.regDate,
    this.updDate,
  });

  factory BOOKASSETTBLGroupByOutputType.fromJson(Map<String, dynamic> json) =>
      _$BOOKASSETTBLGroupByOutputTypeFromJson(json);

  @JsonKey(name: r'SEQ')
  final BigInt? seq;

  @JsonKey(name: r'ASSET_NO')
  final String? assetNo;

  @JsonKey(name: r'BOOK_NM')
  final String? bookNm;

  @JsonKey(name: r'CNT')
  final int? cnt;

  @JsonKey(name: r'PUBLISHER')
  final String? publisher;

  @JsonKey(name: r'AMOUNT')
  final int? amount;

  @JsonKey(name: r'BUY_DATE')
  final String? buyDate;

  @JsonKey(name: r'MNG_DEPT')
  final String? mngDept;

  @JsonKey(name: r'RENT_YN')
  final String? rentYn;

  @JsonKey(name: r'RENT_USER')
  final String? rentUser;

  @JsonKey(name: r'REMARKS')
  final String? remarks;

  @JsonKey(name: r'USE_YN')
  final String? useYn;

  @JsonKey(name: r'DEL_YN')
  final String? delYn;

  @JsonKey(name: r'REG_DATE')
  final DateTime? regDate;

  @JsonKey(name: r'UPD_DATE')
  final DateTime? updDate;

  @override
  Map<String, dynamic> toJson() => _$BOOKASSETTBLGroupByOutputTypeToJson(this);
}

@_i1.jsonSerializable
class STMNGRMSTGroupByOutputType implements _i1.JsonSerializable {
  const STMNGRMSTGroupByOutputType({
    this.mngrId,
    this.mngrNm,
    this.mngrPw,
    this.grpCd,
    this.grade,
    this.permCd,
    this.acsYn,
    this.clph,
    this.empNo,
    this.joinDate,
    this.pwdWrongCnt,
    this.pwdWrongDate,
    this.lstLoginDate,
    this.flpth,
    this.fileNm,
    this.regId,
    this.regDate,
    this.editId,
    this.editDate,
    this.delId,
    this.delDate,
  });

  factory STMNGRMSTGroupByOutputType.fromJson(Map<String, dynamic> json) =>
      _$STMNGRMSTGroupByOutputTypeFromJson(json);

  @JsonKey(name: r'MNGR_ID')
  final String? mngrId;

  @JsonKey(name: r'MNGR_NM')
  final String? mngrNm;

  @JsonKey(name: r'MNGR_PW')
  final String? mngrPw;

  @JsonKey(name: r'GRP_CD')
  final String? grpCd;

  @JsonKey(name: r'GRADE')
  final String? grade;

  @JsonKey(name: r'PERM_CD')
  final String? permCd;

  @JsonKey(name: r'ACS_YN')
  final String? acsYn;

  @JsonKey(name: r'CLPH')
  final String? clph;

  @JsonKey(name: r'EMP_NO')
  final String? empNo;

  @JsonKey(name: r'JOIN_DATE')
  final String? joinDate;

  @JsonKey(name: r'PWD_WRONG_CNT')
  final int? pwdWrongCnt;

  @JsonKey(name: r'PWD_WRONG_DATE')
  final String? pwdWrongDate;

  @JsonKey(name: r'LST_LOGIN_DATE')
  final String? lstLoginDate;

  @JsonKey(name: r'FLPTH')
  final String? flpth;

  @JsonKey(name: r'FILE_NM')
  final String? fileNm;

  @JsonKey(name: r'REG_ID')
  final String? regId;

  @JsonKey(name: r'REG_DATE')
  final String? regDate;

  @JsonKey(name: r'EDIT_ID')
  final String? editId;

  @JsonKey(name: r'EDIT_DATE')
  final String? editDate;

  @JsonKey(name: r'DEL_ID')
  final String? delId;

  @JsonKey(name: r'DEL_DATE')
  final String? delDate;

  @override
  Map<String, dynamic> toJson() => _$STMNGRMSTGroupByOutputTypeToJson(this);
}

@_i1.jsonSerializable
class AffectedRowsOutput implements _i1.JsonSerializable {
  const AffectedRowsOutput({this.count});

  factory AffectedRowsOutput.fromJson(Map<String, dynamic> json) =>
      _$AffectedRowsOutputFromJson(json);

  final int? count;

  @override
  Map<String, dynamic> toJson() => _$AffectedRowsOutputToJson(this);
}

class AggregateBOOKASSETTBL {
  const AggregateBOOKASSETTBL(this.$query);

  final _i1.PrismaFluentQuery $query;

  BOOKASSETTBLCountAggregateOutputType $count() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'_count',
          fields: fields,
        )
      ]),
      key: r'_count',
    );
    return BOOKASSETTBLCountAggregateOutputType(query);
  }

  BOOKASSETTBLAvgAggregateOutputType $avg() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'_avg',
          fields: fields,
        )
      ]),
      key: r'_avg',
    );
    return BOOKASSETTBLAvgAggregateOutputType(query);
  }

  BOOKASSETTBLSumAggregateOutputType $sum() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'_sum',
          fields: fields,
        )
      ]),
      key: r'_sum',
    );
    return BOOKASSETTBLSumAggregateOutputType(query);
  }

  BOOKASSETTBLMinAggregateOutputType $min() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'_min',
          fields: fields,
        )
      ]),
      key: r'_min',
    );
    return BOOKASSETTBLMinAggregateOutputType(query);
  }

  BOOKASSETTBLMaxAggregateOutputType $max() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'_max',
          fields: fields,
        )
      ]),
      key: r'_max',
    );
    return BOOKASSETTBLMaxAggregateOutputType(query);
  }
}

class AggregateSTMNGRMST {
  const AggregateSTMNGRMST(this.$query);

  final _i1.PrismaFluentQuery $query;

  STMNGRMSTCountAggregateOutputType $count() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'_count',
          fields: fields,
        )
      ]),
      key: r'_count',
    );
    return STMNGRMSTCountAggregateOutputType(query);
  }

  STMNGRMSTAvgAggregateOutputType $avg() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'_avg',
          fields: fields,
        )
      ]),
      key: r'_avg',
    );
    return STMNGRMSTAvgAggregateOutputType(query);
  }

  STMNGRMSTSumAggregateOutputType $sum() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'_sum',
          fields: fields,
        )
      ]),
      key: r'_sum',
    );
    return STMNGRMSTSumAggregateOutputType(query);
  }

  STMNGRMSTMinAggregateOutputType $min() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'_min',
          fields: fields,
        )
      ]),
      key: r'_min',
    );
    return STMNGRMSTMinAggregateOutputType(query);
  }

  STMNGRMSTMaxAggregateOutputType $max() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'_max',
          fields: fields,
        )
      ]),
      key: r'_max',
    );
    return STMNGRMSTMaxAggregateOutputType(query);
  }
}

class BOOKASSETTBLCountAggregateOutputType {
  const BOOKASSETTBLCountAggregateOutputType(this.$query);

  final _i1.PrismaFluentQuery $query;

  Future<int> seq() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'SEQ',
          fields: fields,
        )
      ]),
      key: r'SEQ',
    );
    return query(const []).then((value) => (value as int));
  }

  Future<int> assetNo() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'ASSET_NO',
          fields: fields,
        )
      ]),
      key: r'ASSET_NO',
    );
    return query(const []).then((value) => (value as int));
  }

  Future<int> bookNm() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'BOOK_NM',
          fields: fields,
        )
      ]),
      key: r'BOOK_NM',
    );
    return query(const []).then((value) => (value as int));
  }

  Future<int> cnt() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'CNT',
          fields: fields,
        )
      ]),
      key: r'CNT',
    );
    return query(const []).then((value) => (value as int));
  }

  Future<int> publisher() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'PUBLISHER',
          fields: fields,
        )
      ]),
      key: r'PUBLISHER',
    );
    return query(const []).then((value) => (value as int));
  }

  Future<int> amount() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'AMOUNT',
          fields: fields,
        )
      ]),
      key: r'AMOUNT',
    );
    return query(const []).then((value) => (value as int));
  }

  Future<int> buyDate() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'BUY_DATE',
          fields: fields,
        )
      ]),
      key: r'BUY_DATE',
    );
    return query(const []).then((value) => (value as int));
  }

  Future<int> mngDept() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'MNG_DEPT',
          fields: fields,
        )
      ]),
      key: r'MNG_DEPT',
    );
    return query(const []).then((value) => (value as int));
  }

  Future<int> rentYn() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'RENT_YN',
          fields: fields,
        )
      ]),
      key: r'RENT_YN',
    );
    return query(const []).then((value) => (value as int));
  }

  Future<int> rentUser() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'RENT_USER',
          fields: fields,
        )
      ]),
      key: r'RENT_USER',
    );
    return query(const []).then((value) => (value as int));
  }

  Future<int> remarks() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'REMARKS',
          fields: fields,
        )
      ]),
      key: r'REMARKS',
    );
    return query(const []).then((value) => (value as int));
  }

  Future<int> useYn() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'USE_YN',
          fields: fields,
        )
      ]),
      key: r'USE_YN',
    );
    return query(const []).then((value) => (value as int));
  }

  Future<int> delYn() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'DEL_YN',
          fields: fields,
        )
      ]),
      key: r'DEL_YN',
    );
    return query(const []).then((value) => (value as int));
  }

  Future<int> regDate() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'REG_DATE',
          fields: fields,
        )
      ]),
      key: r'REG_DATE',
    );
    return query(const []).then((value) => (value as int));
  }

  Future<int> updDate() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'UPD_DATE',
          fields: fields,
        )
      ]),
      key: r'UPD_DATE',
    );
    return query(const []).then((value) => (value as int));
  }

  Future<int> $all() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'_all',
          fields: fields,
        )
      ]),
      key: r'_all',
    );
    return query(const []).then((value) => (value as int));
  }
}

class BOOKASSETTBLAvgAggregateOutputType {
  const BOOKASSETTBLAvgAggregateOutputType(this.$query);

  final _i1.PrismaFluentQuery $query;

  Future<double?> seq() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'SEQ',
          fields: fields,
        )
      ]),
      key: r'SEQ',
    );
    return query(const []).then((value) => (value as double?));
  }

  Future<double?> cnt() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'CNT',
          fields: fields,
        )
      ]),
      key: r'CNT',
    );
    return query(const []).then((value) => (value as double?));
  }

  Future<double?> amount() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'AMOUNT',
          fields: fields,
        )
      ]),
      key: r'AMOUNT',
    );
    return query(const []).then((value) => (value as double?));
  }
}

class BOOKASSETTBLSumAggregateOutputType {
  const BOOKASSETTBLSumAggregateOutputType(this.$query);

  final _i1.PrismaFluentQuery $query;

  Future<BigInt?> seq() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'SEQ',
          fields: fields,
        )
      ]),
      key: r'SEQ',
    );
    return query(const []).then((value) => (value as BigInt?));
  }

  Future<int?> cnt() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'CNT',
          fields: fields,
        )
      ]),
      key: r'CNT',
    );
    return query(const []).then((value) => (value as int?));
  }

  Future<int?> amount() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'AMOUNT',
          fields: fields,
        )
      ]),
      key: r'AMOUNT',
    );
    return query(const []).then((value) => (value as int?));
  }
}

class BOOKASSETTBLMinAggregateOutputType {
  const BOOKASSETTBLMinAggregateOutputType(this.$query);

  final _i1.PrismaFluentQuery $query;

  Future<BigInt?> seq() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'SEQ',
          fields: fields,
        )
      ]),
      key: r'SEQ',
    );
    return query(const []).then((value) => (value as BigInt?));
  }

  Future<String?> assetNo() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'ASSET_NO',
          fields: fields,
        )
      ]),
      key: r'ASSET_NO',
    );
    return query(const []).then((value) => (value as String?));
  }

  Future<String?> bookNm() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'BOOK_NM',
          fields: fields,
        )
      ]),
      key: r'BOOK_NM',
    );
    return query(const []).then((value) => (value as String?));
  }

  Future<int?> cnt() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'CNT',
          fields: fields,
        )
      ]),
      key: r'CNT',
    );
    return query(const []).then((value) => (value as int?));
  }

  Future<String?> publisher() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'PUBLISHER',
          fields: fields,
        )
      ]),
      key: r'PUBLISHER',
    );
    return query(const []).then((value) => (value as String?));
  }

  Future<int?> amount() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'AMOUNT',
          fields: fields,
        )
      ]),
      key: r'AMOUNT',
    );
    return query(const []).then((value) => (value as int?));
  }

  Future<String?> buyDate() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'BUY_DATE',
          fields: fields,
        )
      ]),
      key: r'BUY_DATE',
    );
    return query(const []).then((value) => (value as String?));
  }

  Future<String?> mngDept() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'MNG_DEPT',
          fields: fields,
        )
      ]),
      key: r'MNG_DEPT',
    );
    return query(const []).then((value) => (value as String?));
  }

  Future<String?> rentYn() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'RENT_YN',
          fields: fields,
        )
      ]),
      key: r'RENT_YN',
    );
    return query(const []).then((value) => (value as String?));
  }

  Future<String?> rentUser() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'RENT_USER',
          fields: fields,
        )
      ]),
      key: r'RENT_USER',
    );
    return query(const []).then((value) => (value as String?));
  }

  Future<String?> remarks() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'REMARKS',
          fields: fields,
        )
      ]),
      key: r'REMARKS',
    );
    return query(const []).then((value) => (value as String?));
  }

  Future<String?> useYn() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'USE_YN',
          fields: fields,
        )
      ]),
      key: r'USE_YN',
    );
    return query(const []).then((value) => (value as String?));
  }

  Future<String?> delYn() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'DEL_YN',
          fields: fields,
        )
      ]),
      key: r'DEL_YN',
    );
    return query(const []).then((value) => (value as String?));
  }

  Future<DateTime?> regDate() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'REG_DATE',
          fields: fields,
        )
      ]),
      key: r'REG_DATE',
    );
    return query(const [])
        .then((value) => value is String ? DateTime.parse(value) : null);
  }

  Future<DateTime?> updDate() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'UPD_DATE',
          fields: fields,
        )
      ]),
      key: r'UPD_DATE',
    );
    return query(const [])
        .then((value) => value is String ? DateTime.parse(value) : null);
  }
}

class BOOKASSETTBLMaxAggregateOutputType {
  const BOOKASSETTBLMaxAggregateOutputType(this.$query);

  final _i1.PrismaFluentQuery $query;

  Future<BigInt?> seq() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'SEQ',
          fields: fields,
        )
      ]),
      key: r'SEQ',
    );
    return query(const []).then((value) => (value as BigInt?));
  }

  Future<String?> assetNo() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'ASSET_NO',
          fields: fields,
        )
      ]),
      key: r'ASSET_NO',
    );
    return query(const []).then((value) => (value as String?));
  }

  Future<String?> bookNm() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'BOOK_NM',
          fields: fields,
        )
      ]),
      key: r'BOOK_NM',
    );
    return query(const []).then((value) => (value as String?));
  }

  Future<int?> cnt() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'CNT',
          fields: fields,
        )
      ]),
      key: r'CNT',
    );
    return query(const []).then((value) => (value as int?));
  }

  Future<String?> publisher() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'PUBLISHER',
          fields: fields,
        )
      ]),
      key: r'PUBLISHER',
    );
    return query(const []).then((value) => (value as String?));
  }

  Future<int?> amount() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'AMOUNT',
          fields: fields,
        )
      ]),
      key: r'AMOUNT',
    );
    return query(const []).then((value) => (value as int?));
  }

  Future<String?> buyDate() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'BUY_DATE',
          fields: fields,
        )
      ]),
      key: r'BUY_DATE',
    );
    return query(const []).then((value) => (value as String?));
  }

  Future<String?> mngDept() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'MNG_DEPT',
          fields: fields,
        )
      ]),
      key: r'MNG_DEPT',
    );
    return query(const []).then((value) => (value as String?));
  }

  Future<String?> rentYn() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'RENT_YN',
          fields: fields,
        )
      ]),
      key: r'RENT_YN',
    );
    return query(const []).then((value) => (value as String?));
  }

  Future<String?> rentUser() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'RENT_USER',
          fields: fields,
        )
      ]),
      key: r'RENT_USER',
    );
    return query(const []).then((value) => (value as String?));
  }

  Future<String?> remarks() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'REMARKS',
          fields: fields,
        )
      ]),
      key: r'REMARKS',
    );
    return query(const []).then((value) => (value as String?));
  }

  Future<String?> useYn() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'USE_YN',
          fields: fields,
        )
      ]),
      key: r'USE_YN',
    );
    return query(const []).then((value) => (value as String?));
  }

  Future<String?> delYn() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'DEL_YN',
          fields: fields,
        )
      ]),
      key: r'DEL_YN',
    );
    return query(const []).then((value) => (value as String?));
  }

  Future<DateTime?> regDate() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'REG_DATE',
          fields: fields,
        )
      ]),
      key: r'REG_DATE',
    );
    return query(const [])
        .then((value) => value is String ? DateTime.parse(value) : null);
  }

  Future<DateTime?> updDate() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'UPD_DATE',
          fields: fields,
        )
      ]),
      key: r'UPD_DATE',
    );
    return query(const [])
        .then((value) => value is String ? DateTime.parse(value) : null);
  }
}

class STMNGRMSTCountAggregateOutputType {
  const STMNGRMSTCountAggregateOutputType(this.$query);

  final _i1.PrismaFluentQuery $query;

  Future<int> mngrId() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'MNGR_ID',
          fields: fields,
        )
      ]),
      key: r'MNGR_ID',
    );
    return query(const []).then((value) => (value as int));
  }

  Future<int> mngrNm() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'MNGR_NM',
          fields: fields,
        )
      ]),
      key: r'MNGR_NM',
    );
    return query(const []).then((value) => (value as int));
  }

  Future<int> mngrPw() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'MNGR_PW',
          fields: fields,
        )
      ]),
      key: r'MNGR_PW',
    );
    return query(const []).then((value) => (value as int));
  }

  Future<int> grpCd() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'GRP_CD',
          fields: fields,
        )
      ]),
      key: r'GRP_CD',
    );
    return query(const []).then((value) => (value as int));
  }

  Future<int> grade() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'GRADE',
          fields: fields,
        )
      ]),
      key: r'GRADE',
    );
    return query(const []).then((value) => (value as int));
  }

  Future<int> permCd() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'PERM_CD',
          fields: fields,
        )
      ]),
      key: r'PERM_CD',
    );
    return query(const []).then((value) => (value as int));
  }

  Future<int> acsYn() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'ACS_YN',
          fields: fields,
        )
      ]),
      key: r'ACS_YN',
    );
    return query(const []).then((value) => (value as int));
  }

  Future<int> clph() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'CLPH',
          fields: fields,
        )
      ]),
      key: r'CLPH',
    );
    return query(const []).then((value) => (value as int));
  }

  Future<int> empNo() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'EMP_NO',
          fields: fields,
        )
      ]),
      key: r'EMP_NO',
    );
    return query(const []).then((value) => (value as int));
  }

  Future<int> joinDate() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'JOIN_DATE',
          fields: fields,
        )
      ]),
      key: r'JOIN_DATE',
    );
    return query(const []).then((value) => (value as int));
  }

  Future<int> pwdWrongCnt() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'PWD_WRONG_CNT',
          fields: fields,
        )
      ]),
      key: r'PWD_WRONG_CNT',
    );
    return query(const []).then((value) => (value as int));
  }

  Future<int> pwdWrongDate() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'PWD_WRONG_DATE',
          fields: fields,
        )
      ]),
      key: r'PWD_WRONG_DATE',
    );
    return query(const []).then((value) => (value as int));
  }

  Future<int> lstLoginDate() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'LST_LOGIN_DATE',
          fields: fields,
        )
      ]),
      key: r'LST_LOGIN_DATE',
    );
    return query(const []).then((value) => (value as int));
  }

  Future<int> flpth() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'FLPTH',
          fields: fields,
        )
      ]),
      key: r'FLPTH',
    );
    return query(const []).then((value) => (value as int));
  }

  Future<int> fileNm() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'FILE_NM',
          fields: fields,
        )
      ]),
      key: r'FILE_NM',
    );
    return query(const []).then((value) => (value as int));
  }

  Future<int> regId() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'REG_ID',
          fields: fields,
        )
      ]),
      key: r'REG_ID',
    );
    return query(const []).then((value) => (value as int));
  }

  Future<int> regDate() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'REG_DATE',
          fields: fields,
        )
      ]),
      key: r'REG_DATE',
    );
    return query(const []).then((value) => (value as int));
  }

  Future<int> editId() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'EDIT_ID',
          fields: fields,
        )
      ]),
      key: r'EDIT_ID',
    );
    return query(const []).then((value) => (value as int));
  }

  Future<int> editDate() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'EDIT_DATE',
          fields: fields,
        )
      ]),
      key: r'EDIT_DATE',
    );
    return query(const []).then((value) => (value as int));
  }

  Future<int> delId() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'DEL_ID',
          fields: fields,
        )
      ]),
      key: r'DEL_ID',
    );
    return query(const []).then((value) => (value as int));
  }

  Future<int> delDate() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'DEL_DATE',
          fields: fields,
        )
      ]),
      key: r'DEL_DATE',
    );
    return query(const []).then((value) => (value as int));
  }

  Future<int> $all() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'_all',
          fields: fields,
        )
      ]),
      key: r'_all',
    );
    return query(const []).then((value) => (value as int));
  }
}

class STMNGRMSTAvgAggregateOutputType {
  const STMNGRMSTAvgAggregateOutputType(this.$query);

  final _i1.PrismaFluentQuery $query;

  Future<double?> pwdWrongCnt() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'PWD_WRONG_CNT',
          fields: fields,
        )
      ]),
      key: r'PWD_WRONG_CNT',
    );
    return query(const []).then((value) => (value as double?));
  }
}

class STMNGRMSTSumAggregateOutputType {
  const STMNGRMSTSumAggregateOutputType(this.$query);

  final _i1.PrismaFluentQuery $query;

  Future<int?> pwdWrongCnt() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'PWD_WRONG_CNT',
          fields: fields,
        )
      ]),
      key: r'PWD_WRONG_CNT',
    );
    return query(const []).then((value) => (value as int?));
  }
}

class STMNGRMSTMinAggregateOutputType {
  const STMNGRMSTMinAggregateOutputType(this.$query);

  final _i1.PrismaFluentQuery $query;

  Future<String?> mngrId() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'MNGR_ID',
          fields: fields,
        )
      ]),
      key: r'MNGR_ID',
    );
    return query(const []).then((value) => (value as String?));
  }

  Future<String?> mngrNm() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'MNGR_NM',
          fields: fields,
        )
      ]),
      key: r'MNGR_NM',
    );
    return query(const []).then((value) => (value as String?));
  }

  Future<String?> mngrPw() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'MNGR_PW',
          fields: fields,
        )
      ]),
      key: r'MNGR_PW',
    );
    return query(const []).then((value) => (value as String?));
  }

  Future<String?> grpCd() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'GRP_CD',
          fields: fields,
        )
      ]),
      key: r'GRP_CD',
    );
    return query(const []).then((value) => (value as String?));
  }

  Future<String?> grade() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'GRADE',
          fields: fields,
        )
      ]),
      key: r'GRADE',
    );
    return query(const []).then((value) => (value as String?));
  }

  Future<String?> permCd() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'PERM_CD',
          fields: fields,
        )
      ]),
      key: r'PERM_CD',
    );
    return query(const []).then((value) => (value as String?));
  }

  Future<String?> acsYn() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'ACS_YN',
          fields: fields,
        )
      ]),
      key: r'ACS_YN',
    );
    return query(const []).then((value) => (value as String?));
  }

  Future<String?> clph() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'CLPH',
          fields: fields,
        )
      ]),
      key: r'CLPH',
    );
    return query(const []).then((value) => (value as String?));
  }

  Future<String?> empNo() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'EMP_NO',
          fields: fields,
        )
      ]),
      key: r'EMP_NO',
    );
    return query(const []).then((value) => (value as String?));
  }

  Future<String?> joinDate() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'JOIN_DATE',
          fields: fields,
        )
      ]),
      key: r'JOIN_DATE',
    );
    return query(const []).then((value) => (value as String?));
  }

  Future<int?> pwdWrongCnt() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'PWD_WRONG_CNT',
          fields: fields,
        )
      ]),
      key: r'PWD_WRONG_CNT',
    );
    return query(const []).then((value) => (value as int?));
  }

  Future<String?> pwdWrongDate() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'PWD_WRONG_DATE',
          fields: fields,
        )
      ]),
      key: r'PWD_WRONG_DATE',
    );
    return query(const []).then((value) => (value as String?));
  }

  Future<String?> lstLoginDate() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'LST_LOGIN_DATE',
          fields: fields,
        )
      ]),
      key: r'LST_LOGIN_DATE',
    );
    return query(const []).then((value) => (value as String?));
  }

  Future<String?> flpth() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'FLPTH',
          fields: fields,
        )
      ]),
      key: r'FLPTH',
    );
    return query(const []).then((value) => (value as String?));
  }

  Future<String?> fileNm() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'FILE_NM',
          fields: fields,
        )
      ]),
      key: r'FILE_NM',
    );
    return query(const []).then((value) => (value as String?));
  }

  Future<String?> regId() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'REG_ID',
          fields: fields,
        )
      ]),
      key: r'REG_ID',
    );
    return query(const []).then((value) => (value as String?));
  }

  Future<String?> regDate() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'REG_DATE',
          fields: fields,
        )
      ]),
      key: r'REG_DATE',
    );
    return query(const []).then((value) => (value as String?));
  }

  Future<String?> editId() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'EDIT_ID',
          fields: fields,
        )
      ]),
      key: r'EDIT_ID',
    );
    return query(const []).then((value) => (value as String?));
  }

  Future<String?> editDate() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'EDIT_DATE',
          fields: fields,
        )
      ]),
      key: r'EDIT_DATE',
    );
    return query(const []).then((value) => (value as String?));
  }

  Future<String?> delId() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'DEL_ID',
          fields: fields,
        )
      ]),
      key: r'DEL_ID',
    );
    return query(const []).then((value) => (value as String?));
  }

  Future<String?> delDate() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'DEL_DATE',
          fields: fields,
        )
      ]),
      key: r'DEL_DATE',
    );
    return query(const []).then((value) => (value as String?));
  }
}

class STMNGRMSTMaxAggregateOutputType {
  const STMNGRMSTMaxAggregateOutputType(this.$query);

  final _i1.PrismaFluentQuery $query;

  Future<String?> mngrId() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'MNGR_ID',
          fields: fields,
        )
      ]),
      key: r'MNGR_ID',
    );
    return query(const []).then((value) => (value as String?));
  }

  Future<String?> mngrNm() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'MNGR_NM',
          fields: fields,
        )
      ]),
      key: r'MNGR_NM',
    );
    return query(const []).then((value) => (value as String?));
  }

  Future<String?> mngrPw() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'MNGR_PW',
          fields: fields,
        )
      ]),
      key: r'MNGR_PW',
    );
    return query(const []).then((value) => (value as String?));
  }

  Future<String?> grpCd() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'GRP_CD',
          fields: fields,
        )
      ]),
      key: r'GRP_CD',
    );
    return query(const []).then((value) => (value as String?));
  }

  Future<String?> grade() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'GRADE',
          fields: fields,
        )
      ]),
      key: r'GRADE',
    );
    return query(const []).then((value) => (value as String?));
  }

  Future<String?> permCd() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'PERM_CD',
          fields: fields,
        )
      ]),
      key: r'PERM_CD',
    );
    return query(const []).then((value) => (value as String?));
  }

  Future<String?> acsYn() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'ACS_YN',
          fields: fields,
        )
      ]),
      key: r'ACS_YN',
    );
    return query(const []).then((value) => (value as String?));
  }

  Future<String?> clph() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'CLPH',
          fields: fields,
        )
      ]),
      key: r'CLPH',
    );
    return query(const []).then((value) => (value as String?));
  }

  Future<String?> empNo() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'EMP_NO',
          fields: fields,
        )
      ]),
      key: r'EMP_NO',
    );
    return query(const []).then((value) => (value as String?));
  }

  Future<String?> joinDate() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'JOIN_DATE',
          fields: fields,
        )
      ]),
      key: r'JOIN_DATE',
    );
    return query(const []).then((value) => (value as String?));
  }

  Future<int?> pwdWrongCnt() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'PWD_WRONG_CNT',
          fields: fields,
        )
      ]),
      key: r'PWD_WRONG_CNT',
    );
    return query(const []).then((value) => (value as int?));
  }

  Future<String?> pwdWrongDate() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'PWD_WRONG_DATE',
          fields: fields,
        )
      ]),
      key: r'PWD_WRONG_DATE',
    );
    return query(const []).then((value) => (value as String?));
  }

  Future<String?> lstLoginDate() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'LST_LOGIN_DATE',
          fields: fields,
        )
      ]),
      key: r'LST_LOGIN_DATE',
    );
    return query(const []).then((value) => (value as String?));
  }

  Future<String?> flpth() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'FLPTH',
          fields: fields,
        )
      ]),
      key: r'FLPTH',
    );
    return query(const []).then((value) => (value as String?));
  }

  Future<String?> fileNm() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'FILE_NM',
          fields: fields,
        )
      ]),
      key: r'FILE_NM',
    );
    return query(const []).then((value) => (value as String?));
  }

  Future<String?> regId() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'REG_ID',
          fields: fields,
        )
      ]),
      key: r'REG_ID',
    );
    return query(const []).then((value) => (value as String?));
  }

  Future<String?> regDate() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'REG_DATE',
          fields: fields,
        )
      ]),
      key: r'REG_DATE',
    );
    return query(const []).then((value) => (value as String?));
  }

  Future<String?> editId() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'EDIT_ID',
          fields: fields,
        )
      ]),
      key: r'EDIT_ID',
    );
    return query(const []).then((value) => (value as String?));
  }

  Future<String?> editDate() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'EDIT_DATE',
          fields: fields,
        )
      ]),
      key: r'EDIT_DATE',
    );
    return query(const []).then((value) => (value as String?));
  }

  Future<String?> delId() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'DEL_ID',
          fields: fields,
        )
      ]),
      key: r'DEL_ID',
    );
    return query(const []).then((value) => (value as String?));
  }

  Future<String?> delDate() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'DEL_DATE',
          fields: fields,
        )
      ]),
      key: r'DEL_DATE',
    );
    return query(const []).then((value) => (value as String?));
  }
}

@JsonSerializable(
  createFactory: false,
  createToJson: true,
  includeIfNull: false,
)
class Datasources implements _i1.JsonSerializable {
  const Datasources({this.db});

  final String? db;

  @override
  Map<String, dynamic> toJson() => _$DatasourcesToJson(this);
}

class PrismaClient extends _i1.BasePrismaClient<PrismaClient> {
  PrismaClient._internal(
    _i3.Engine engine, {
    _i3.QueryEngineRequestHeaders? headers,
    _i3.TransactionInfo? transaction,
  })  : _engine = engine,
        _headers = headers,
        _transaction = transaction,
        super(
          engine,
          headers: headers,
          transaction: transaction,
        );

  factory PrismaClient({
    Datasources? datasources,
    Iterable<_i4.Event>? stdout,
    Iterable<_i4.Event>? event,
  }) {
    final logger = _i4.Logger(
      stdout: stdout,
      event: event,
    );
    final engine = _i5.BinaryEngine(
      logger: logger,
      schema:
          r'Z2VuZXJhdG9yIGNsaWVudCB7CiAgcHJvdmlkZXIgPSAiZGFydCBydW4gb3JtIgp9CgpkYXRhc291cmNlIGRiIHsKICBwcm92aWRlciA9ICJteXNxbCIKICB1cmwgICAgICA9IGVudigiREFUQUJBU0VfVVJMIikKfQoKLy8vIOuPhOyEnCDthYzsnbTruJQKbW9kZWwgQk9PS19BU1NFVF9UQkwgewogIFNFUSAgICAgICBCaWdJbnQgICAgQGlkIEBkZWZhdWx0KGF1dG9pbmNyZW1lbnQoKSkKICBBU1NFVF9OTyAgU3RyaW5nICAgIEBkYi5WYXJDaGFyKDUwKQogIEJPT0tfTk0gICBTdHJpbmc/ICAgQGRiLlZhckNoYXIoNTAwKQogIENOVCAgICAgICBJbnQ/CiAgUFVCTElTSEVSIFN0cmluZz8gICBAZGIuVmFyQ2hhcig1MCkKICBBTU9VTlQgICAgSW50PwogIEJVWV9EQVRFICBTdHJpbmc/ICAgQGRiLlZhckNoYXIoOCkKICBNTkdfREVQVCAgU3RyaW5nPyAgIEBkYi5WYXJDaGFyKDUwKQogIFJFTlRfWU4gICBTdHJpbmc/ICAgQGRiLkNoYXIoMSkKICBSRU5UX1VTRVIgU3RyaW5nPyAgIEBkYi5WYXJDaGFyKDUwKQogIFJFTUFSS1MgICBTdHJpbmc/ICAgQGRiLlZhckNoYXIoNDAwMCkKICBVU0VfWU4gICAgU3RyaW5nICAgIEBkZWZhdWx0KCJZIikgQGRiLkNoYXIoMSkKICBERUxfWU4gICAgU3RyaW5nICAgIEBkZWZhdWx0KCJOIikgQGRiLkNoYXIoMSkKICBSRUdfREFURSAgRGF0ZVRpbWUgIEBkZWZhdWx0KG5vdygpKSBAZGIuVGltZXN0YW1wKDApCiAgVVBEX0RBVEUgIERhdGVUaW1lPyBAZGIuVGltZXN0YW1wKDApCn0KCi8vLyDsgqzsmqnsnpAg7YWM7J2067iUCm1vZGVsIFNUX01OR1JfTVNUIHsKICBNTkdSX0lEICAgICAgICBTdHJpbmcgICBAaWQgQGRiLlZhckNoYXIoMjUpCiAgTU5HUl9OTSAgICAgICAgU3RyaW5nICAgQGRiLlZhckNoYXIoNTApCiAgTU5HUl9QVyAgICAgICAgU3RyaW5nPyAgQGRiLlZhckNoYXIoNjQpCiAgR1JQX0NEICAgICAgICAgU3RyaW5nPyAgQGRiLlZhckNoYXIoMTIpCiAgR1JBREUgICAgICAgICAgU3RyaW5nPyAgQGRiLlZhckNoYXIoNCkKICBQRVJNX0NEICAgICAgICBTdHJpbmcgICBAZGIuVmFyQ2hhcigxMikKICBBQ1NfWU4gICAgICAgICBTdHJpbmc/ICBAZGIuVmFyQ2hhcigxKQogIENMUEggICAgICAgICAgIFN0cmluZz8gIEBkYi5WYXJDaGFyKDE0KQogIEVNUF9OTyAgICAgICAgIFN0cmluZz8gIEBkYi5WYXJDaGFyKDEyKQogIEpPSU5fREFURSAgICAgIFN0cmluZyAgIEBkZWZhdWx0KCIyMDIzMDgwMTAwMDAwMCIpIEBkYi5WYXJDaGFyKDE0KQogIC8vIFJFVElSRV9EQVRFICAgIERhdGVUaW1lIEBkZWZhdWx0KGRiZ2VuZXJhdGVkKCIoJzAwMDAtMDAtMDAgMDA6MDA6MDAnKSIpKSBAZGIuVGltZXN0YW1wKDApCiAgLy8gUFdEX0NIR19EQVRFICAgRGF0ZVRpbWUgQGRlZmF1bHQoZGJnZW5lcmF0ZWQoIignMDAwMC0wMC0wMCAwMDowMDowMCcpIikpIEBkYi5UaW1lc3RhbXAoMCkKICBQV0RfV1JPTkdfQ05UICBJbnQ/ICAgICBAZGVmYXVsdCgwKQogIFBXRF9XUk9OR19EQVRFIFN0cmluZz8gIEBkYi5WYXJDaGFyKDE0KQogIExTVF9MT0dJTl9EQVRFIFN0cmluZz8gIEBkYi5WYXJDaGFyKDE0KQogIEZMUFRIICAgICAgICAgIFN0cmluZz8gIEBkYi5WYXJDaGFyKDIwMCkKICBGSUxFX05NICAgICAgICBTdHJpbmc/ICBAZGIuVmFyQ2hhcigyMDApCiAgUkVHX0lEICAgICAgICAgU3RyaW5nICAgQGRiLlZhckNoYXIoMjUpCiAgUkVHX0RBVEUgICAgICAgU3RyaW5nICAgQGRiLlZhckNoYXIoMTQpCiAgRURJVF9JRCAgICAgICAgU3RyaW5nPyAgQGRiLlZhckNoYXIoMjUpCiAgRURJVF9EQVRFICAgICAgU3RyaW5nPyAgQGRiLlZhckNoYXIoMTQpCiAgREVMX0lEICAgICAgICAgU3RyaW5nPyAgQGRiLlZhckNoYXIoMjUpCiAgREVMX0RBVEUgICAgICAgU3RyaW5nPyAgQGRiLlZhckNoYXIoMTQpCn0K',
      datasources: datasources?.toJson().cast() ?? const {},
      executable:
          r'/Users/htlee/Project/2023-my/book_manage/book_server/node_modules/prisma/query-engine-darwin',
    );
    return PrismaClient._internal(engine);
  }

  final _i3.Engine _engine;

  final _i3.QueryEngineRequestHeaders? _headers;

  final _i3.TransactionInfo? _transaction;

  @override
  PrismaClient copyWith({
    _i3.QueryEngineRequestHeaders? headers,
    _i3.TransactionInfo? transaction,
  }) =>
      PrismaClient._internal(
        _engine,
        headers: headers ?? _headers,
        transaction: transaction ?? _transaction,
      );

  _i1.ModelDelegate<BookAssetTbl> get bookAssetTbl =>
      _i1.ModelDelegate<BookAssetTbl>(
        _engine,
        headers: _headers,
        transaction: _transaction,
      );

  _i1.ModelDelegate<StMngrMst> get stMngrMst => _i1.ModelDelegate<StMngrMst>(
        _engine,
        headers: _headers,
        transaction: _transaction,
      );
}
