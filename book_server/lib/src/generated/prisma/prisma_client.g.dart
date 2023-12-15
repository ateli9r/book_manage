// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'prisma_client.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BOOKASSETTBLWhereInput _$BOOKASSETTBLWhereInputFromJson(
        Map<String, dynamic> json) =>
    BOOKASSETTBLWhereInput(
      AND: (json['AND'] as List<dynamic>?)?.map(
          (e) => BOOKASSETTBLWhereInput.fromJson(e as Map<String, dynamic>)),
      OR: (json['OR'] as List<dynamic>?)?.map(
          (e) => BOOKASSETTBLWhereInput.fromJson(e as Map<String, dynamic>)),
      NOT: (json['NOT'] as List<dynamic>?)?.map(
          (e) => BOOKASSETTBLWhereInput.fromJson(e as Map<String, dynamic>)),
      seq: json['SEQ'] == null
          ? null
          : BigIntFilter.fromJson(json['SEQ'] as Map<String, dynamic>),
      assetNo: json['ASSET_NO'] == null
          ? null
          : StringFilter.fromJson(json['ASSET_NO'] as Map<String, dynamic>),
      bookNm: json['BOOK_NM'] == null
          ? null
          : StringNullableFilter.fromJson(
              json['BOOK_NM'] as Map<String, dynamic>),
      cnt: json['CNT'] == null
          ? null
          : IntNullableFilter.fromJson(json['CNT'] as Map<String, dynamic>),
      publisher: json['PUBLISHER'] == null
          ? null
          : StringNullableFilter.fromJson(
              json['PUBLISHER'] as Map<String, dynamic>),
      amount: json['AMOUNT'] == null
          ? null
          : IntNullableFilter.fromJson(json['AMOUNT'] as Map<String, dynamic>),
      buyDate: json['BUY_DATE'] == null
          ? null
          : StringNullableFilter.fromJson(
              json['BUY_DATE'] as Map<String, dynamic>),
      mngDept: json['MNG_DEPT'] == null
          ? null
          : StringNullableFilter.fromJson(
              json['MNG_DEPT'] as Map<String, dynamic>),
      rentYn: json['RENT_YN'] == null
          ? null
          : StringNullableFilter.fromJson(
              json['RENT_YN'] as Map<String, dynamic>),
      rentUser: json['RENT_USER'] == null
          ? null
          : StringNullableFilter.fromJson(
              json['RENT_USER'] as Map<String, dynamic>),
      remarks: json['REMARKS'] == null
          ? null
          : StringNullableFilter.fromJson(
              json['REMARKS'] as Map<String, dynamic>),
      useYn: json['USE_YN'] == null
          ? null
          : StringFilter.fromJson(json['USE_YN'] as Map<String, dynamic>),
      delYn: json['DEL_YN'] == null
          ? null
          : StringFilter.fromJson(json['DEL_YN'] as Map<String, dynamic>),
      regDate: json['REG_DATE'] == null
          ? null
          : DateTimeFilter.fromJson(json['REG_DATE'] as Map<String, dynamic>),
      updDate: json['UPD_DATE'] == null
          ? null
          : DateTimeNullableFilter.fromJson(
              json['UPD_DATE'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$BOOKASSETTBLWhereInputToJson(
    BOOKASSETTBLWhereInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('AND', instance.AND?.map((e) => e.toJson()).toList());
  writeNotNull('OR', instance.OR?.map((e) => e.toJson()).toList());
  writeNotNull('NOT', instance.NOT?.map((e) => e.toJson()).toList());
  writeNotNull('SEQ', instance.seq?.toJson());
  writeNotNull('ASSET_NO', instance.assetNo?.toJson());
  writeNotNull('BOOK_NM', instance.bookNm?.toJson());
  writeNotNull('CNT', instance.cnt?.toJson());
  writeNotNull('PUBLISHER', instance.publisher?.toJson());
  writeNotNull('AMOUNT', instance.amount?.toJson());
  writeNotNull('BUY_DATE', instance.buyDate?.toJson());
  writeNotNull('MNG_DEPT', instance.mngDept?.toJson());
  writeNotNull('RENT_YN', instance.rentYn?.toJson());
  writeNotNull('RENT_USER', instance.rentUser?.toJson());
  writeNotNull('REMARKS', instance.remarks?.toJson());
  writeNotNull('USE_YN', instance.useYn?.toJson());
  writeNotNull('DEL_YN', instance.delYn?.toJson());
  writeNotNull('REG_DATE', instance.regDate?.toJson());
  writeNotNull('UPD_DATE', instance.updDate?.toJson());
  return val;
}

BOOKASSETTBLOrderByWithRelationInput
    _$BOOKASSETTBLOrderByWithRelationInputFromJson(Map<String, dynamic> json) =>
        BOOKASSETTBLOrderByWithRelationInput(
          seq: $enumDecodeNullable(_$SortOrderEnumMap, json['SEQ']),
          assetNo: $enumDecodeNullable(_$SortOrderEnumMap, json['ASSET_NO']),
          bookNm: $enumDecodeNullable(_$SortOrderEnumMap, json['BOOK_NM']),
          cnt: $enumDecodeNullable(_$SortOrderEnumMap, json['CNT']),
          publisher: $enumDecodeNullable(_$SortOrderEnumMap, json['PUBLISHER']),
          amount: $enumDecodeNullable(_$SortOrderEnumMap, json['AMOUNT']),
          buyDate: $enumDecodeNullable(_$SortOrderEnumMap, json['BUY_DATE']),
          mngDept: $enumDecodeNullable(_$SortOrderEnumMap, json['MNG_DEPT']),
          rentYn: $enumDecodeNullable(_$SortOrderEnumMap, json['RENT_YN']),
          rentUser: $enumDecodeNullable(_$SortOrderEnumMap, json['RENT_USER']),
          remarks: $enumDecodeNullable(_$SortOrderEnumMap, json['REMARKS']),
          useYn: $enumDecodeNullable(_$SortOrderEnumMap, json['USE_YN']),
          delYn: $enumDecodeNullable(_$SortOrderEnumMap, json['DEL_YN']),
          regDate: $enumDecodeNullable(_$SortOrderEnumMap, json['REG_DATE']),
          updDate: $enumDecodeNullable(_$SortOrderEnumMap, json['UPD_DATE']),
        );

Map<String, dynamic> _$BOOKASSETTBLOrderByWithRelationInputToJson(
    BOOKASSETTBLOrderByWithRelationInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('SEQ', _$SortOrderEnumMap[instance.seq]);
  writeNotNull('ASSET_NO', _$SortOrderEnumMap[instance.assetNo]);
  writeNotNull('BOOK_NM', _$SortOrderEnumMap[instance.bookNm]);
  writeNotNull('CNT', _$SortOrderEnumMap[instance.cnt]);
  writeNotNull('PUBLISHER', _$SortOrderEnumMap[instance.publisher]);
  writeNotNull('AMOUNT', _$SortOrderEnumMap[instance.amount]);
  writeNotNull('BUY_DATE', _$SortOrderEnumMap[instance.buyDate]);
  writeNotNull('MNG_DEPT', _$SortOrderEnumMap[instance.mngDept]);
  writeNotNull('RENT_YN', _$SortOrderEnumMap[instance.rentYn]);
  writeNotNull('RENT_USER', _$SortOrderEnumMap[instance.rentUser]);
  writeNotNull('REMARKS', _$SortOrderEnumMap[instance.remarks]);
  writeNotNull('USE_YN', _$SortOrderEnumMap[instance.useYn]);
  writeNotNull('DEL_YN', _$SortOrderEnumMap[instance.delYn]);
  writeNotNull('REG_DATE', _$SortOrderEnumMap[instance.regDate]);
  writeNotNull('UPD_DATE', _$SortOrderEnumMap[instance.updDate]);
  return val;
}

const _$SortOrderEnumMap = {
  SortOrder.asc: 'asc',
  SortOrder.desc: 'desc',
};

BOOKASSETTBLWhereUniqueInput _$BOOKASSETTBLWhereUniqueInputFromJson(
        Map<String, dynamic> json) =>
    BOOKASSETTBLWhereUniqueInput(
      seq: json['SEQ'] == null ? null : BigInt.parse(json['SEQ'] as String),
    );

Map<String, dynamic> _$BOOKASSETTBLWhereUniqueInputToJson(
    BOOKASSETTBLWhereUniqueInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('SEQ', instance.seq?.toString());
  return val;
}

BOOKASSETTBLOrderByWithAggregationInput
    _$BOOKASSETTBLOrderByWithAggregationInputFromJson(
            Map<String, dynamic> json) =>
        BOOKASSETTBLOrderByWithAggregationInput(
          seq: $enumDecodeNullable(_$SortOrderEnumMap, json['SEQ']),
          assetNo: $enumDecodeNullable(_$SortOrderEnumMap, json['ASSET_NO']),
          bookNm: $enumDecodeNullable(_$SortOrderEnumMap, json['BOOK_NM']),
          cnt: $enumDecodeNullable(_$SortOrderEnumMap, json['CNT']),
          publisher: $enumDecodeNullable(_$SortOrderEnumMap, json['PUBLISHER']),
          amount: $enumDecodeNullable(_$SortOrderEnumMap, json['AMOUNT']),
          buyDate: $enumDecodeNullable(_$SortOrderEnumMap, json['BUY_DATE']),
          mngDept: $enumDecodeNullable(_$SortOrderEnumMap, json['MNG_DEPT']),
          rentYn: $enumDecodeNullable(_$SortOrderEnumMap, json['RENT_YN']),
          rentUser: $enumDecodeNullable(_$SortOrderEnumMap, json['RENT_USER']),
          remarks: $enumDecodeNullable(_$SortOrderEnumMap, json['REMARKS']),
          useYn: $enumDecodeNullable(_$SortOrderEnumMap, json['USE_YN']),
          delYn: $enumDecodeNullable(_$SortOrderEnumMap, json['DEL_YN']),
          regDate: $enumDecodeNullable(_$SortOrderEnumMap, json['REG_DATE']),
          updDate: $enumDecodeNullable(_$SortOrderEnumMap, json['UPD_DATE']),
          $count: json['_count'] == null
              ? null
              : BOOKASSETTBLCountOrderByAggregateInput.fromJson(
                  json['_count'] as Map<String, dynamic>),
          $avg: json['_avg'] == null
              ? null
              : BOOKASSETTBLAvgOrderByAggregateInput.fromJson(
                  json['_avg'] as Map<String, dynamic>),
          $max: json['_max'] == null
              ? null
              : BOOKASSETTBLMaxOrderByAggregateInput.fromJson(
                  json['_max'] as Map<String, dynamic>),
          $min: json['_min'] == null
              ? null
              : BOOKASSETTBLMinOrderByAggregateInput.fromJson(
                  json['_min'] as Map<String, dynamic>),
          $sum: json['_sum'] == null
              ? null
              : BOOKASSETTBLSumOrderByAggregateInput.fromJson(
                  json['_sum'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$BOOKASSETTBLOrderByWithAggregationInputToJson(
    BOOKASSETTBLOrderByWithAggregationInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('SEQ', _$SortOrderEnumMap[instance.seq]);
  writeNotNull('ASSET_NO', _$SortOrderEnumMap[instance.assetNo]);
  writeNotNull('BOOK_NM', _$SortOrderEnumMap[instance.bookNm]);
  writeNotNull('CNT', _$SortOrderEnumMap[instance.cnt]);
  writeNotNull('PUBLISHER', _$SortOrderEnumMap[instance.publisher]);
  writeNotNull('AMOUNT', _$SortOrderEnumMap[instance.amount]);
  writeNotNull('BUY_DATE', _$SortOrderEnumMap[instance.buyDate]);
  writeNotNull('MNG_DEPT', _$SortOrderEnumMap[instance.mngDept]);
  writeNotNull('RENT_YN', _$SortOrderEnumMap[instance.rentYn]);
  writeNotNull('RENT_USER', _$SortOrderEnumMap[instance.rentUser]);
  writeNotNull('REMARKS', _$SortOrderEnumMap[instance.remarks]);
  writeNotNull('USE_YN', _$SortOrderEnumMap[instance.useYn]);
  writeNotNull('DEL_YN', _$SortOrderEnumMap[instance.delYn]);
  writeNotNull('REG_DATE', _$SortOrderEnumMap[instance.regDate]);
  writeNotNull('UPD_DATE', _$SortOrderEnumMap[instance.updDate]);
  writeNotNull('_count', instance.$count?.toJson());
  writeNotNull('_avg', instance.$avg?.toJson());
  writeNotNull('_max', instance.$max?.toJson());
  writeNotNull('_min', instance.$min?.toJson());
  writeNotNull('_sum', instance.$sum?.toJson());
  return val;
}

BOOKASSETTBLScalarWhereWithAggregatesInput
    _$BOOKASSETTBLScalarWhereWithAggregatesInputFromJson(
            Map<String, dynamic> json) =>
        BOOKASSETTBLScalarWhereWithAggregatesInput(
          AND: (json['AND'] as List<dynamic>?)?.map((e) =>
              BOOKASSETTBLScalarWhereWithAggregatesInput.fromJson(
                  e as Map<String, dynamic>)),
          OR: (json['OR'] as List<dynamic>?)?.map((e) =>
              BOOKASSETTBLScalarWhereWithAggregatesInput.fromJson(
                  e as Map<String, dynamic>)),
          NOT: (json['NOT'] as List<dynamic>?)?.map((e) =>
              BOOKASSETTBLScalarWhereWithAggregatesInput.fromJson(
                  e as Map<String, dynamic>)),
          seq: json['SEQ'] == null
              ? null
              : BigIntWithAggregatesFilter.fromJson(
                  json['SEQ'] as Map<String, dynamic>),
          assetNo: json['ASSET_NO'] == null
              ? null
              : StringWithAggregatesFilter.fromJson(
                  json['ASSET_NO'] as Map<String, dynamic>),
          bookNm: json['BOOK_NM'] == null
              ? null
              : StringNullableWithAggregatesFilter.fromJson(
                  json['BOOK_NM'] as Map<String, dynamic>),
          cnt: json['CNT'] == null
              ? null
              : IntNullableWithAggregatesFilter.fromJson(
                  json['CNT'] as Map<String, dynamic>),
          publisher: json['PUBLISHER'] == null
              ? null
              : StringNullableWithAggregatesFilter.fromJson(
                  json['PUBLISHER'] as Map<String, dynamic>),
          amount: json['AMOUNT'] == null
              ? null
              : IntNullableWithAggregatesFilter.fromJson(
                  json['AMOUNT'] as Map<String, dynamic>),
          buyDate: json['BUY_DATE'] == null
              ? null
              : StringNullableWithAggregatesFilter.fromJson(
                  json['BUY_DATE'] as Map<String, dynamic>),
          mngDept: json['MNG_DEPT'] == null
              ? null
              : StringNullableWithAggregatesFilter.fromJson(
                  json['MNG_DEPT'] as Map<String, dynamic>),
          rentYn: json['RENT_YN'] == null
              ? null
              : StringNullableWithAggregatesFilter.fromJson(
                  json['RENT_YN'] as Map<String, dynamic>),
          rentUser: json['RENT_USER'] == null
              ? null
              : StringNullableWithAggregatesFilter.fromJson(
                  json['RENT_USER'] as Map<String, dynamic>),
          remarks: json['REMARKS'] == null
              ? null
              : StringNullableWithAggregatesFilter.fromJson(
                  json['REMARKS'] as Map<String, dynamic>),
          useYn: json['USE_YN'] == null
              ? null
              : StringWithAggregatesFilter.fromJson(
                  json['USE_YN'] as Map<String, dynamic>),
          delYn: json['DEL_YN'] == null
              ? null
              : StringWithAggregatesFilter.fromJson(
                  json['DEL_YN'] as Map<String, dynamic>),
          regDate: json['REG_DATE'] == null
              ? null
              : DateTimeWithAggregatesFilter.fromJson(
                  json['REG_DATE'] as Map<String, dynamic>),
          updDate: json['UPD_DATE'] == null
              ? null
              : DateTimeNullableWithAggregatesFilter.fromJson(
                  json['UPD_DATE'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$BOOKASSETTBLScalarWhereWithAggregatesInputToJson(
    BOOKASSETTBLScalarWhereWithAggregatesInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('AND', instance.AND?.map((e) => e.toJson()).toList());
  writeNotNull('OR', instance.OR?.map((e) => e.toJson()).toList());
  writeNotNull('NOT', instance.NOT?.map((e) => e.toJson()).toList());
  writeNotNull('SEQ', instance.seq?.toJson());
  writeNotNull('ASSET_NO', instance.assetNo?.toJson());
  writeNotNull('BOOK_NM', instance.bookNm?.toJson());
  writeNotNull('CNT', instance.cnt?.toJson());
  writeNotNull('PUBLISHER', instance.publisher?.toJson());
  writeNotNull('AMOUNT', instance.amount?.toJson());
  writeNotNull('BUY_DATE', instance.buyDate?.toJson());
  writeNotNull('MNG_DEPT', instance.mngDept?.toJson());
  writeNotNull('RENT_YN', instance.rentYn?.toJson());
  writeNotNull('RENT_USER', instance.rentUser?.toJson());
  writeNotNull('REMARKS', instance.remarks?.toJson());
  writeNotNull('USE_YN', instance.useYn?.toJson());
  writeNotNull('DEL_YN', instance.delYn?.toJson());
  writeNotNull('REG_DATE', instance.regDate?.toJson());
  writeNotNull('UPD_DATE', instance.updDate?.toJson());
  return val;
}

STMNGRMSTWhereInput _$STMNGRMSTWhereInputFromJson(Map<String, dynamic> json) =>
    STMNGRMSTWhereInput(
      AND: (json['AND'] as List<dynamic>?)
          ?.map((e) => STMNGRMSTWhereInput.fromJson(e as Map<String, dynamic>)),
      OR: (json['OR'] as List<dynamic>?)
          ?.map((e) => STMNGRMSTWhereInput.fromJson(e as Map<String, dynamic>)),
      NOT: (json['NOT'] as List<dynamic>?)
          ?.map((e) => STMNGRMSTWhereInput.fromJson(e as Map<String, dynamic>)),
      mngrId: json['MNGR_ID'] == null
          ? null
          : StringFilter.fromJson(json['MNGR_ID'] as Map<String, dynamic>),
      mngrNm: json['MNGR_NM'] == null
          ? null
          : StringFilter.fromJson(json['MNGR_NM'] as Map<String, dynamic>),
      mngrPw: json['MNGR_PW'] == null
          ? null
          : StringNullableFilter.fromJson(
              json['MNGR_PW'] as Map<String, dynamic>),
      grpCd: json['GRP_CD'] == null
          ? null
          : StringNullableFilter.fromJson(
              json['GRP_CD'] as Map<String, dynamic>),
      grade: json['GRADE'] == null
          ? null
          : StringNullableFilter.fromJson(
              json['GRADE'] as Map<String, dynamic>),
      permCd: json['PERM_CD'] == null
          ? null
          : StringFilter.fromJson(json['PERM_CD'] as Map<String, dynamic>),
      acsYn: json['ACS_YN'] == null
          ? null
          : StringNullableFilter.fromJson(
              json['ACS_YN'] as Map<String, dynamic>),
      clph: json['CLPH'] == null
          ? null
          : StringNullableFilter.fromJson(json['CLPH'] as Map<String, dynamic>),
      empNo: json['EMP_NO'] == null
          ? null
          : StringNullableFilter.fromJson(
              json['EMP_NO'] as Map<String, dynamic>),
      joinDate: json['JOIN_DATE'] == null
          ? null
          : StringFilter.fromJson(json['JOIN_DATE'] as Map<String, dynamic>),
      pwdWrongCnt: json['PWD_WRONG_CNT'] == null
          ? null
          : IntNullableFilter.fromJson(
              json['PWD_WRONG_CNT'] as Map<String, dynamic>),
      pwdWrongDate: json['PWD_WRONG_DATE'] == null
          ? null
          : StringNullableFilter.fromJson(
              json['PWD_WRONG_DATE'] as Map<String, dynamic>),
      lstLoginDate: json['LST_LOGIN_DATE'] == null
          ? null
          : StringNullableFilter.fromJson(
              json['LST_LOGIN_DATE'] as Map<String, dynamic>),
      flpth: json['FLPTH'] == null
          ? null
          : StringNullableFilter.fromJson(
              json['FLPTH'] as Map<String, dynamic>),
      fileNm: json['FILE_NM'] == null
          ? null
          : StringNullableFilter.fromJson(
              json['FILE_NM'] as Map<String, dynamic>),
      regId: json['REG_ID'] == null
          ? null
          : StringFilter.fromJson(json['REG_ID'] as Map<String, dynamic>),
      regDate: json['REG_DATE'] == null
          ? null
          : StringFilter.fromJson(json['REG_DATE'] as Map<String, dynamic>),
      editId: json['EDIT_ID'] == null
          ? null
          : StringNullableFilter.fromJson(
              json['EDIT_ID'] as Map<String, dynamic>),
      editDate: json['EDIT_DATE'] == null
          ? null
          : StringNullableFilter.fromJson(
              json['EDIT_DATE'] as Map<String, dynamic>),
      delId: json['DEL_ID'] == null
          ? null
          : StringNullableFilter.fromJson(
              json['DEL_ID'] as Map<String, dynamic>),
      delDate: json['DEL_DATE'] == null
          ? null
          : StringNullableFilter.fromJson(
              json['DEL_DATE'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$STMNGRMSTWhereInputToJson(STMNGRMSTWhereInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('AND', instance.AND?.map((e) => e.toJson()).toList());
  writeNotNull('OR', instance.OR?.map((e) => e.toJson()).toList());
  writeNotNull('NOT', instance.NOT?.map((e) => e.toJson()).toList());
  writeNotNull('MNGR_ID', instance.mngrId?.toJson());
  writeNotNull('MNGR_NM', instance.mngrNm?.toJson());
  writeNotNull('MNGR_PW', instance.mngrPw?.toJson());
  writeNotNull('GRP_CD', instance.grpCd?.toJson());
  writeNotNull('GRADE', instance.grade?.toJson());
  writeNotNull('PERM_CD', instance.permCd?.toJson());
  writeNotNull('ACS_YN', instance.acsYn?.toJson());
  writeNotNull('CLPH', instance.clph?.toJson());
  writeNotNull('EMP_NO', instance.empNo?.toJson());
  writeNotNull('JOIN_DATE', instance.joinDate?.toJson());
  writeNotNull('PWD_WRONG_CNT', instance.pwdWrongCnt?.toJson());
  writeNotNull('PWD_WRONG_DATE', instance.pwdWrongDate?.toJson());
  writeNotNull('LST_LOGIN_DATE', instance.lstLoginDate?.toJson());
  writeNotNull('FLPTH', instance.flpth?.toJson());
  writeNotNull('FILE_NM', instance.fileNm?.toJson());
  writeNotNull('REG_ID', instance.regId?.toJson());
  writeNotNull('REG_DATE', instance.regDate?.toJson());
  writeNotNull('EDIT_ID', instance.editId?.toJson());
  writeNotNull('EDIT_DATE', instance.editDate?.toJson());
  writeNotNull('DEL_ID', instance.delId?.toJson());
  writeNotNull('DEL_DATE', instance.delDate?.toJson());
  return val;
}

STMNGRMSTOrderByWithRelationInput _$STMNGRMSTOrderByWithRelationInputFromJson(
        Map<String, dynamic> json) =>
    STMNGRMSTOrderByWithRelationInput(
      mngrId: $enumDecodeNullable(_$SortOrderEnumMap, json['MNGR_ID']),
      mngrNm: $enumDecodeNullable(_$SortOrderEnumMap, json['MNGR_NM']),
      mngrPw: $enumDecodeNullable(_$SortOrderEnumMap, json['MNGR_PW']),
      grpCd: $enumDecodeNullable(_$SortOrderEnumMap, json['GRP_CD']),
      grade: $enumDecodeNullable(_$SortOrderEnumMap, json['GRADE']),
      permCd: $enumDecodeNullable(_$SortOrderEnumMap, json['PERM_CD']),
      acsYn: $enumDecodeNullable(_$SortOrderEnumMap, json['ACS_YN']),
      clph: $enumDecodeNullable(_$SortOrderEnumMap, json['CLPH']),
      empNo: $enumDecodeNullable(_$SortOrderEnumMap, json['EMP_NO']),
      joinDate: $enumDecodeNullable(_$SortOrderEnumMap, json['JOIN_DATE']),
      pwdWrongCnt:
          $enumDecodeNullable(_$SortOrderEnumMap, json['PWD_WRONG_CNT']),
      pwdWrongDate:
          $enumDecodeNullable(_$SortOrderEnumMap, json['PWD_WRONG_DATE']),
      lstLoginDate:
          $enumDecodeNullable(_$SortOrderEnumMap, json['LST_LOGIN_DATE']),
      flpth: $enumDecodeNullable(_$SortOrderEnumMap, json['FLPTH']),
      fileNm: $enumDecodeNullable(_$SortOrderEnumMap, json['FILE_NM']),
      regId: $enumDecodeNullable(_$SortOrderEnumMap, json['REG_ID']),
      regDate: $enumDecodeNullable(_$SortOrderEnumMap, json['REG_DATE']),
      editId: $enumDecodeNullable(_$SortOrderEnumMap, json['EDIT_ID']),
      editDate: $enumDecodeNullable(_$SortOrderEnumMap, json['EDIT_DATE']),
      delId: $enumDecodeNullable(_$SortOrderEnumMap, json['DEL_ID']),
      delDate: $enumDecodeNullable(_$SortOrderEnumMap, json['DEL_DATE']),
    );

Map<String, dynamic> _$STMNGRMSTOrderByWithRelationInputToJson(
    STMNGRMSTOrderByWithRelationInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('MNGR_ID', _$SortOrderEnumMap[instance.mngrId]);
  writeNotNull('MNGR_NM', _$SortOrderEnumMap[instance.mngrNm]);
  writeNotNull('MNGR_PW', _$SortOrderEnumMap[instance.mngrPw]);
  writeNotNull('GRP_CD', _$SortOrderEnumMap[instance.grpCd]);
  writeNotNull('GRADE', _$SortOrderEnumMap[instance.grade]);
  writeNotNull('PERM_CD', _$SortOrderEnumMap[instance.permCd]);
  writeNotNull('ACS_YN', _$SortOrderEnumMap[instance.acsYn]);
  writeNotNull('CLPH', _$SortOrderEnumMap[instance.clph]);
  writeNotNull('EMP_NO', _$SortOrderEnumMap[instance.empNo]);
  writeNotNull('JOIN_DATE', _$SortOrderEnumMap[instance.joinDate]);
  writeNotNull('PWD_WRONG_CNT', _$SortOrderEnumMap[instance.pwdWrongCnt]);
  writeNotNull('PWD_WRONG_DATE', _$SortOrderEnumMap[instance.pwdWrongDate]);
  writeNotNull('LST_LOGIN_DATE', _$SortOrderEnumMap[instance.lstLoginDate]);
  writeNotNull('FLPTH', _$SortOrderEnumMap[instance.flpth]);
  writeNotNull('FILE_NM', _$SortOrderEnumMap[instance.fileNm]);
  writeNotNull('REG_ID', _$SortOrderEnumMap[instance.regId]);
  writeNotNull('REG_DATE', _$SortOrderEnumMap[instance.regDate]);
  writeNotNull('EDIT_ID', _$SortOrderEnumMap[instance.editId]);
  writeNotNull('EDIT_DATE', _$SortOrderEnumMap[instance.editDate]);
  writeNotNull('DEL_ID', _$SortOrderEnumMap[instance.delId]);
  writeNotNull('DEL_DATE', _$SortOrderEnumMap[instance.delDate]);
  return val;
}

STMNGRMSTWhereUniqueInput _$STMNGRMSTWhereUniqueInputFromJson(
        Map<String, dynamic> json) =>
    STMNGRMSTWhereUniqueInput(
      mngrId: json['MNGR_ID'] as String?,
    );

Map<String, dynamic> _$STMNGRMSTWhereUniqueInputToJson(
    STMNGRMSTWhereUniqueInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('MNGR_ID', instance.mngrId);
  return val;
}

STMNGRMSTOrderByWithAggregationInput
    _$STMNGRMSTOrderByWithAggregationInputFromJson(Map<String, dynamic> json) =>
        STMNGRMSTOrderByWithAggregationInput(
          mngrId: $enumDecodeNullable(_$SortOrderEnumMap, json['MNGR_ID']),
          mngrNm: $enumDecodeNullable(_$SortOrderEnumMap, json['MNGR_NM']),
          mngrPw: $enumDecodeNullable(_$SortOrderEnumMap, json['MNGR_PW']),
          grpCd: $enumDecodeNullable(_$SortOrderEnumMap, json['GRP_CD']),
          grade: $enumDecodeNullable(_$SortOrderEnumMap, json['GRADE']),
          permCd: $enumDecodeNullable(_$SortOrderEnumMap, json['PERM_CD']),
          acsYn: $enumDecodeNullable(_$SortOrderEnumMap, json['ACS_YN']),
          clph: $enumDecodeNullable(_$SortOrderEnumMap, json['CLPH']),
          empNo: $enumDecodeNullable(_$SortOrderEnumMap, json['EMP_NO']),
          joinDate: $enumDecodeNullable(_$SortOrderEnumMap, json['JOIN_DATE']),
          pwdWrongCnt:
              $enumDecodeNullable(_$SortOrderEnumMap, json['PWD_WRONG_CNT']),
          pwdWrongDate:
              $enumDecodeNullable(_$SortOrderEnumMap, json['PWD_WRONG_DATE']),
          lstLoginDate:
              $enumDecodeNullable(_$SortOrderEnumMap, json['LST_LOGIN_DATE']),
          flpth: $enumDecodeNullable(_$SortOrderEnumMap, json['FLPTH']),
          fileNm: $enumDecodeNullable(_$SortOrderEnumMap, json['FILE_NM']),
          regId: $enumDecodeNullable(_$SortOrderEnumMap, json['REG_ID']),
          regDate: $enumDecodeNullable(_$SortOrderEnumMap, json['REG_DATE']),
          editId: $enumDecodeNullable(_$SortOrderEnumMap, json['EDIT_ID']),
          editDate: $enumDecodeNullable(_$SortOrderEnumMap, json['EDIT_DATE']),
          delId: $enumDecodeNullable(_$SortOrderEnumMap, json['DEL_ID']),
          delDate: $enumDecodeNullable(_$SortOrderEnumMap, json['DEL_DATE']),
          $count: json['_count'] == null
              ? null
              : STMNGRMSTCountOrderByAggregateInput.fromJson(
                  json['_count'] as Map<String, dynamic>),
          $avg: json['_avg'] == null
              ? null
              : STMNGRMSTAvgOrderByAggregateInput.fromJson(
                  json['_avg'] as Map<String, dynamic>),
          $max: json['_max'] == null
              ? null
              : STMNGRMSTMaxOrderByAggregateInput.fromJson(
                  json['_max'] as Map<String, dynamic>),
          $min: json['_min'] == null
              ? null
              : STMNGRMSTMinOrderByAggregateInput.fromJson(
                  json['_min'] as Map<String, dynamic>),
          $sum: json['_sum'] == null
              ? null
              : STMNGRMSTSumOrderByAggregateInput.fromJson(
                  json['_sum'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$STMNGRMSTOrderByWithAggregationInputToJson(
    STMNGRMSTOrderByWithAggregationInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('MNGR_ID', _$SortOrderEnumMap[instance.mngrId]);
  writeNotNull('MNGR_NM', _$SortOrderEnumMap[instance.mngrNm]);
  writeNotNull('MNGR_PW', _$SortOrderEnumMap[instance.mngrPw]);
  writeNotNull('GRP_CD', _$SortOrderEnumMap[instance.grpCd]);
  writeNotNull('GRADE', _$SortOrderEnumMap[instance.grade]);
  writeNotNull('PERM_CD', _$SortOrderEnumMap[instance.permCd]);
  writeNotNull('ACS_YN', _$SortOrderEnumMap[instance.acsYn]);
  writeNotNull('CLPH', _$SortOrderEnumMap[instance.clph]);
  writeNotNull('EMP_NO', _$SortOrderEnumMap[instance.empNo]);
  writeNotNull('JOIN_DATE', _$SortOrderEnumMap[instance.joinDate]);
  writeNotNull('PWD_WRONG_CNT', _$SortOrderEnumMap[instance.pwdWrongCnt]);
  writeNotNull('PWD_WRONG_DATE', _$SortOrderEnumMap[instance.pwdWrongDate]);
  writeNotNull('LST_LOGIN_DATE', _$SortOrderEnumMap[instance.lstLoginDate]);
  writeNotNull('FLPTH', _$SortOrderEnumMap[instance.flpth]);
  writeNotNull('FILE_NM', _$SortOrderEnumMap[instance.fileNm]);
  writeNotNull('REG_ID', _$SortOrderEnumMap[instance.regId]);
  writeNotNull('REG_DATE', _$SortOrderEnumMap[instance.regDate]);
  writeNotNull('EDIT_ID', _$SortOrderEnumMap[instance.editId]);
  writeNotNull('EDIT_DATE', _$SortOrderEnumMap[instance.editDate]);
  writeNotNull('DEL_ID', _$SortOrderEnumMap[instance.delId]);
  writeNotNull('DEL_DATE', _$SortOrderEnumMap[instance.delDate]);
  writeNotNull('_count', instance.$count?.toJson());
  writeNotNull('_avg', instance.$avg?.toJson());
  writeNotNull('_max', instance.$max?.toJson());
  writeNotNull('_min', instance.$min?.toJson());
  writeNotNull('_sum', instance.$sum?.toJson());
  return val;
}

STMNGRMSTScalarWhereWithAggregatesInput
    _$STMNGRMSTScalarWhereWithAggregatesInputFromJson(
            Map<String, dynamic> json) =>
        STMNGRMSTScalarWhereWithAggregatesInput(
          AND: (json['AND'] as List<dynamic>?)?.map((e) =>
              STMNGRMSTScalarWhereWithAggregatesInput.fromJson(
                  e as Map<String, dynamic>)),
          OR: (json['OR'] as List<dynamic>?)?.map((e) =>
              STMNGRMSTScalarWhereWithAggregatesInput.fromJson(
                  e as Map<String, dynamic>)),
          NOT: (json['NOT'] as List<dynamic>?)?.map((e) =>
              STMNGRMSTScalarWhereWithAggregatesInput.fromJson(
                  e as Map<String, dynamic>)),
          mngrId: json['MNGR_ID'] == null
              ? null
              : StringWithAggregatesFilter.fromJson(
                  json['MNGR_ID'] as Map<String, dynamic>),
          mngrNm: json['MNGR_NM'] == null
              ? null
              : StringWithAggregatesFilter.fromJson(
                  json['MNGR_NM'] as Map<String, dynamic>),
          mngrPw: json['MNGR_PW'] == null
              ? null
              : StringNullableWithAggregatesFilter.fromJson(
                  json['MNGR_PW'] as Map<String, dynamic>),
          grpCd: json['GRP_CD'] == null
              ? null
              : StringNullableWithAggregatesFilter.fromJson(
                  json['GRP_CD'] as Map<String, dynamic>),
          grade: json['GRADE'] == null
              ? null
              : StringNullableWithAggregatesFilter.fromJson(
                  json['GRADE'] as Map<String, dynamic>),
          permCd: json['PERM_CD'] == null
              ? null
              : StringWithAggregatesFilter.fromJson(
                  json['PERM_CD'] as Map<String, dynamic>),
          acsYn: json['ACS_YN'] == null
              ? null
              : StringNullableWithAggregatesFilter.fromJson(
                  json['ACS_YN'] as Map<String, dynamic>),
          clph: json['CLPH'] == null
              ? null
              : StringNullableWithAggregatesFilter.fromJson(
                  json['CLPH'] as Map<String, dynamic>),
          empNo: json['EMP_NO'] == null
              ? null
              : StringNullableWithAggregatesFilter.fromJson(
                  json['EMP_NO'] as Map<String, dynamic>),
          joinDate: json['JOIN_DATE'] == null
              ? null
              : StringWithAggregatesFilter.fromJson(
                  json['JOIN_DATE'] as Map<String, dynamic>),
          pwdWrongCnt: json['PWD_WRONG_CNT'] == null
              ? null
              : IntNullableWithAggregatesFilter.fromJson(
                  json['PWD_WRONG_CNT'] as Map<String, dynamic>),
          pwdWrongDate: json['PWD_WRONG_DATE'] == null
              ? null
              : StringNullableWithAggregatesFilter.fromJson(
                  json['PWD_WRONG_DATE'] as Map<String, dynamic>),
          lstLoginDate: json['LST_LOGIN_DATE'] == null
              ? null
              : StringNullableWithAggregatesFilter.fromJson(
                  json['LST_LOGIN_DATE'] as Map<String, dynamic>),
          flpth: json['FLPTH'] == null
              ? null
              : StringNullableWithAggregatesFilter.fromJson(
                  json['FLPTH'] as Map<String, dynamic>),
          fileNm: json['FILE_NM'] == null
              ? null
              : StringNullableWithAggregatesFilter.fromJson(
                  json['FILE_NM'] as Map<String, dynamic>),
          regId: json['REG_ID'] == null
              ? null
              : StringWithAggregatesFilter.fromJson(
                  json['REG_ID'] as Map<String, dynamic>),
          regDate: json['REG_DATE'] == null
              ? null
              : StringWithAggregatesFilter.fromJson(
                  json['REG_DATE'] as Map<String, dynamic>),
          editId: json['EDIT_ID'] == null
              ? null
              : StringNullableWithAggregatesFilter.fromJson(
                  json['EDIT_ID'] as Map<String, dynamic>),
          editDate: json['EDIT_DATE'] == null
              ? null
              : StringNullableWithAggregatesFilter.fromJson(
                  json['EDIT_DATE'] as Map<String, dynamic>),
          delId: json['DEL_ID'] == null
              ? null
              : StringNullableWithAggregatesFilter.fromJson(
                  json['DEL_ID'] as Map<String, dynamic>),
          delDate: json['DEL_DATE'] == null
              ? null
              : StringNullableWithAggregatesFilter.fromJson(
                  json['DEL_DATE'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$STMNGRMSTScalarWhereWithAggregatesInputToJson(
    STMNGRMSTScalarWhereWithAggregatesInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('AND', instance.AND?.map((e) => e.toJson()).toList());
  writeNotNull('OR', instance.OR?.map((e) => e.toJson()).toList());
  writeNotNull('NOT', instance.NOT?.map((e) => e.toJson()).toList());
  writeNotNull('MNGR_ID', instance.mngrId?.toJson());
  writeNotNull('MNGR_NM', instance.mngrNm?.toJson());
  writeNotNull('MNGR_PW', instance.mngrPw?.toJson());
  writeNotNull('GRP_CD', instance.grpCd?.toJson());
  writeNotNull('GRADE', instance.grade?.toJson());
  writeNotNull('PERM_CD', instance.permCd?.toJson());
  writeNotNull('ACS_YN', instance.acsYn?.toJson());
  writeNotNull('CLPH', instance.clph?.toJson());
  writeNotNull('EMP_NO', instance.empNo?.toJson());
  writeNotNull('JOIN_DATE', instance.joinDate?.toJson());
  writeNotNull('PWD_WRONG_CNT', instance.pwdWrongCnt?.toJson());
  writeNotNull('PWD_WRONG_DATE', instance.pwdWrongDate?.toJson());
  writeNotNull('LST_LOGIN_DATE', instance.lstLoginDate?.toJson());
  writeNotNull('FLPTH', instance.flpth?.toJson());
  writeNotNull('FILE_NM', instance.fileNm?.toJson());
  writeNotNull('REG_ID', instance.regId?.toJson());
  writeNotNull('REG_DATE', instance.regDate?.toJson());
  writeNotNull('EDIT_ID', instance.editId?.toJson());
  writeNotNull('EDIT_DATE', instance.editDate?.toJson());
  writeNotNull('DEL_ID', instance.delId?.toJson());
  writeNotNull('DEL_DATE', instance.delDate?.toJson());
  return val;
}

BOOKASSETTBLCreateInput _$BOOKASSETTBLCreateInputFromJson(
        Map<String, dynamic> json) =>
    BOOKASSETTBLCreateInput(
      seq: json['SEQ'] == null ? null : BigInt.parse(json['SEQ'] as String),
      assetNo: json['ASSET_NO'] as String,
      bookNm: json['BOOK_NM'] as String?,
      cnt: json['CNT'] as int?,
      publisher: json['PUBLISHER'] as String?,
      amount: json['AMOUNT'] as int?,
      buyDate: json['BUY_DATE'] as String?,
      mngDept: json['MNG_DEPT'] as String?,
      rentYn: json['RENT_YN'] as String?,
      rentUser: json['RENT_USER'] as String?,
      remarks: json['REMARKS'] as String?,
      useYn: json['USE_YN'] as String?,
      delYn: json['DEL_YN'] as String?,
      regDate: _$JsonConverterFromJson<String, DateTime>(
          json['REG_DATE'], const DateTimeJsonConverter().fromJson),
      updDate: _$JsonConverterFromJson<String, DateTime>(
          json['UPD_DATE'], const DateTimeJsonConverter().fromJson),
    );

Map<String, dynamic> _$BOOKASSETTBLCreateInputToJson(
    BOOKASSETTBLCreateInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('SEQ', instance.seq?.toString());
  val['ASSET_NO'] = instance.assetNo;
  writeNotNull('BOOK_NM', instance.bookNm);
  writeNotNull('CNT', instance.cnt);
  writeNotNull('PUBLISHER', instance.publisher);
  writeNotNull('AMOUNT', instance.amount);
  writeNotNull('BUY_DATE', instance.buyDate);
  writeNotNull('MNG_DEPT', instance.mngDept);
  writeNotNull('RENT_YN', instance.rentYn);
  writeNotNull('RENT_USER', instance.rentUser);
  writeNotNull('REMARKS', instance.remarks);
  writeNotNull('USE_YN', instance.useYn);
  writeNotNull('DEL_YN', instance.delYn);
  writeNotNull(
      'REG_DATE',
      _$JsonConverterToJson<String, DateTime>(
          instance.regDate, const DateTimeJsonConverter().toJson));
  writeNotNull(
      'UPD_DATE',
      _$JsonConverterToJson<String, DateTime>(
          instance.updDate, const DateTimeJsonConverter().toJson));
  return val;
}

Value? _$JsonConverterFromJson<Json, Value>(
  Object? json,
  Value? Function(Json json) fromJson,
) =>
    json == null ? null : fromJson(json as Json);

Json? _$JsonConverterToJson<Json, Value>(
  Value? value,
  Json? Function(Value value) toJson,
) =>
    value == null ? null : toJson(value);

BOOKASSETTBLUncheckedCreateInput _$BOOKASSETTBLUncheckedCreateInputFromJson(
        Map<String, dynamic> json) =>
    BOOKASSETTBLUncheckedCreateInput(
      seq: json['SEQ'] == null ? null : BigInt.parse(json['SEQ'] as String),
      assetNo: json['ASSET_NO'] as String,
      bookNm: json['BOOK_NM'] as String?,
      cnt: json['CNT'] as int?,
      publisher: json['PUBLISHER'] as String?,
      amount: json['AMOUNT'] as int?,
      buyDate: json['BUY_DATE'] as String?,
      mngDept: json['MNG_DEPT'] as String?,
      rentYn: json['RENT_YN'] as String?,
      rentUser: json['RENT_USER'] as String?,
      remarks: json['REMARKS'] as String?,
      useYn: json['USE_YN'] as String?,
      delYn: json['DEL_YN'] as String?,
      regDate: _$JsonConverterFromJson<String, DateTime>(
          json['REG_DATE'], const DateTimeJsonConverter().fromJson),
      updDate: _$JsonConverterFromJson<String, DateTime>(
          json['UPD_DATE'], const DateTimeJsonConverter().fromJson),
    );

Map<String, dynamic> _$BOOKASSETTBLUncheckedCreateInputToJson(
    BOOKASSETTBLUncheckedCreateInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('SEQ', instance.seq?.toString());
  val['ASSET_NO'] = instance.assetNo;
  writeNotNull('BOOK_NM', instance.bookNm);
  writeNotNull('CNT', instance.cnt);
  writeNotNull('PUBLISHER', instance.publisher);
  writeNotNull('AMOUNT', instance.amount);
  writeNotNull('BUY_DATE', instance.buyDate);
  writeNotNull('MNG_DEPT', instance.mngDept);
  writeNotNull('RENT_YN', instance.rentYn);
  writeNotNull('RENT_USER', instance.rentUser);
  writeNotNull('REMARKS', instance.remarks);
  writeNotNull('USE_YN', instance.useYn);
  writeNotNull('DEL_YN', instance.delYn);
  writeNotNull(
      'REG_DATE',
      _$JsonConverterToJson<String, DateTime>(
          instance.regDate, const DateTimeJsonConverter().toJson));
  writeNotNull(
      'UPD_DATE',
      _$JsonConverterToJson<String, DateTime>(
          instance.updDate, const DateTimeJsonConverter().toJson));
  return val;
}

BOOKASSETTBLUpdateInput _$BOOKASSETTBLUpdateInputFromJson(
        Map<String, dynamic> json) =>
    BOOKASSETTBLUpdateInput(
      seq: json['SEQ'] == null
          ? null
          : BigIntFieldUpdateOperationsInput.fromJson(
              json['SEQ'] as Map<String, dynamic>),
      assetNo: json['ASSET_NO'] == null
          ? null
          : StringFieldUpdateOperationsInput.fromJson(
              json['ASSET_NO'] as Map<String, dynamic>),
      bookNm: json['BOOK_NM'] == null
          ? null
          : NullableStringFieldUpdateOperationsInput.fromJson(
              json['BOOK_NM'] as Map<String, dynamic>),
      cnt: json['CNT'] == null
          ? null
          : NullableIntFieldUpdateOperationsInput.fromJson(
              json['CNT'] as Map<String, dynamic>),
      publisher: json['PUBLISHER'] == null
          ? null
          : NullableStringFieldUpdateOperationsInput.fromJson(
              json['PUBLISHER'] as Map<String, dynamic>),
      amount: json['AMOUNT'] == null
          ? null
          : NullableIntFieldUpdateOperationsInput.fromJson(
              json['AMOUNT'] as Map<String, dynamic>),
      buyDate: json['BUY_DATE'] == null
          ? null
          : NullableStringFieldUpdateOperationsInput.fromJson(
              json['BUY_DATE'] as Map<String, dynamic>),
      mngDept: json['MNG_DEPT'] == null
          ? null
          : NullableStringFieldUpdateOperationsInput.fromJson(
              json['MNG_DEPT'] as Map<String, dynamic>),
      rentYn: json['RENT_YN'] == null
          ? null
          : NullableStringFieldUpdateOperationsInput.fromJson(
              json['RENT_YN'] as Map<String, dynamic>),
      rentUser: json['RENT_USER'] == null
          ? null
          : NullableStringFieldUpdateOperationsInput.fromJson(
              json['RENT_USER'] as Map<String, dynamic>),
      remarks: json['REMARKS'] == null
          ? null
          : NullableStringFieldUpdateOperationsInput.fromJson(
              json['REMARKS'] as Map<String, dynamic>),
      useYn: json['USE_YN'] == null
          ? null
          : StringFieldUpdateOperationsInput.fromJson(
              json['USE_YN'] as Map<String, dynamic>),
      delYn: json['DEL_YN'] == null
          ? null
          : StringFieldUpdateOperationsInput.fromJson(
              json['DEL_YN'] as Map<String, dynamic>),
      regDate: json['REG_DATE'] == null
          ? null
          : DateTimeFieldUpdateOperationsInput.fromJson(
              json['REG_DATE'] as Map<String, dynamic>),
      updDate: json['UPD_DATE'] == null
          ? null
          : NullableDateTimeFieldUpdateOperationsInput.fromJson(
              json['UPD_DATE'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$BOOKASSETTBLUpdateInputToJson(
    BOOKASSETTBLUpdateInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('SEQ', instance.seq?.toJson());
  writeNotNull('ASSET_NO', instance.assetNo?.toJson());
  writeNotNull('BOOK_NM', instance.bookNm?.toJson());
  writeNotNull('CNT', instance.cnt?.toJson());
  writeNotNull('PUBLISHER', instance.publisher?.toJson());
  writeNotNull('AMOUNT', instance.amount?.toJson());
  writeNotNull('BUY_DATE', instance.buyDate?.toJson());
  writeNotNull('MNG_DEPT', instance.mngDept?.toJson());
  writeNotNull('RENT_YN', instance.rentYn?.toJson());
  writeNotNull('RENT_USER', instance.rentUser?.toJson());
  writeNotNull('REMARKS', instance.remarks?.toJson());
  writeNotNull('USE_YN', instance.useYn?.toJson());
  writeNotNull('DEL_YN', instance.delYn?.toJson());
  writeNotNull('REG_DATE', instance.regDate?.toJson());
  writeNotNull('UPD_DATE', instance.updDate?.toJson());
  return val;
}

BOOKASSETTBLUncheckedUpdateInput _$BOOKASSETTBLUncheckedUpdateInputFromJson(
        Map<String, dynamic> json) =>
    BOOKASSETTBLUncheckedUpdateInput(
      seq: json['SEQ'] == null
          ? null
          : BigIntFieldUpdateOperationsInput.fromJson(
              json['SEQ'] as Map<String, dynamic>),
      assetNo: json['ASSET_NO'] == null
          ? null
          : StringFieldUpdateOperationsInput.fromJson(
              json['ASSET_NO'] as Map<String, dynamic>),
      bookNm: json['BOOK_NM'] == null
          ? null
          : NullableStringFieldUpdateOperationsInput.fromJson(
              json['BOOK_NM'] as Map<String, dynamic>),
      cnt: json['CNT'] == null
          ? null
          : NullableIntFieldUpdateOperationsInput.fromJson(
              json['CNT'] as Map<String, dynamic>),
      publisher: json['PUBLISHER'] == null
          ? null
          : NullableStringFieldUpdateOperationsInput.fromJson(
              json['PUBLISHER'] as Map<String, dynamic>),
      amount: json['AMOUNT'] == null
          ? null
          : NullableIntFieldUpdateOperationsInput.fromJson(
              json['AMOUNT'] as Map<String, dynamic>),
      buyDate: json['BUY_DATE'] == null
          ? null
          : NullableStringFieldUpdateOperationsInput.fromJson(
              json['BUY_DATE'] as Map<String, dynamic>),
      mngDept: json['MNG_DEPT'] == null
          ? null
          : NullableStringFieldUpdateOperationsInput.fromJson(
              json['MNG_DEPT'] as Map<String, dynamic>),
      rentYn: json['RENT_YN'] == null
          ? null
          : NullableStringFieldUpdateOperationsInput.fromJson(
              json['RENT_YN'] as Map<String, dynamic>),
      rentUser: json['RENT_USER'] == null
          ? null
          : NullableStringFieldUpdateOperationsInput.fromJson(
              json['RENT_USER'] as Map<String, dynamic>),
      remarks: json['REMARKS'] == null
          ? null
          : NullableStringFieldUpdateOperationsInput.fromJson(
              json['REMARKS'] as Map<String, dynamic>),
      useYn: json['USE_YN'] == null
          ? null
          : StringFieldUpdateOperationsInput.fromJson(
              json['USE_YN'] as Map<String, dynamic>),
      delYn: json['DEL_YN'] == null
          ? null
          : StringFieldUpdateOperationsInput.fromJson(
              json['DEL_YN'] as Map<String, dynamic>),
      regDate: json['REG_DATE'] == null
          ? null
          : DateTimeFieldUpdateOperationsInput.fromJson(
              json['REG_DATE'] as Map<String, dynamic>),
      updDate: json['UPD_DATE'] == null
          ? null
          : NullableDateTimeFieldUpdateOperationsInput.fromJson(
              json['UPD_DATE'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$BOOKASSETTBLUncheckedUpdateInputToJson(
    BOOKASSETTBLUncheckedUpdateInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('SEQ', instance.seq?.toJson());
  writeNotNull('ASSET_NO', instance.assetNo?.toJson());
  writeNotNull('BOOK_NM', instance.bookNm?.toJson());
  writeNotNull('CNT', instance.cnt?.toJson());
  writeNotNull('PUBLISHER', instance.publisher?.toJson());
  writeNotNull('AMOUNT', instance.amount?.toJson());
  writeNotNull('BUY_DATE', instance.buyDate?.toJson());
  writeNotNull('MNG_DEPT', instance.mngDept?.toJson());
  writeNotNull('RENT_YN', instance.rentYn?.toJson());
  writeNotNull('RENT_USER', instance.rentUser?.toJson());
  writeNotNull('REMARKS', instance.remarks?.toJson());
  writeNotNull('USE_YN', instance.useYn?.toJson());
  writeNotNull('DEL_YN', instance.delYn?.toJson());
  writeNotNull('REG_DATE', instance.regDate?.toJson());
  writeNotNull('UPD_DATE', instance.updDate?.toJson());
  return val;
}

BOOKASSETTBLCreateManyInput _$BOOKASSETTBLCreateManyInputFromJson(
        Map<String, dynamic> json) =>
    BOOKASSETTBLCreateManyInput(
      seq: json['SEQ'] == null ? null : BigInt.parse(json['SEQ'] as String),
      assetNo: json['ASSET_NO'] as String,
      bookNm: json['BOOK_NM'] as String?,
      cnt: json['CNT'] as int?,
      publisher: json['PUBLISHER'] as String?,
      amount: json['AMOUNT'] as int?,
      buyDate: json['BUY_DATE'] as String?,
      mngDept: json['MNG_DEPT'] as String?,
      rentYn: json['RENT_YN'] as String?,
      rentUser: json['RENT_USER'] as String?,
      remarks: json['REMARKS'] as String?,
      useYn: json['USE_YN'] as String?,
      delYn: json['DEL_YN'] as String?,
      regDate: _$JsonConverterFromJson<String, DateTime>(
          json['REG_DATE'], const DateTimeJsonConverter().fromJson),
      updDate: _$JsonConverterFromJson<String, DateTime>(
          json['UPD_DATE'], const DateTimeJsonConverter().fromJson),
    );

Map<String, dynamic> _$BOOKASSETTBLCreateManyInputToJson(
    BOOKASSETTBLCreateManyInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('SEQ', instance.seq?.toString());
  val['ASSET_NO'] = instance.assetNo;
  writeNotNull('BOOK_NM', instance.bookNm);
  writeNotNull('CNT', instance.cnt);
  writeNotNull('PUBLISHER', instance.publisher);
  writeNotNull('AMOUNT', instance.amount);
  writeNotNull('BUY_DATE', instance.buyDate);
  writeNotNull('MNG_DEPT', instance.mngDept);
  writeNotNull('RENT_YN', instance.rentYn);
  writeNotNull('RENT_USER', instance.rentUser);
  writeNotNull('REMARKS', instance.remarks);
  writeNotNull('USE_YN', instance.useYn);
  writeNotNull('DEL_YN', instance.delYn);
  writeNotNull(
      'REG_DATE',
      _$JsonConverterToJson<String, DateTime>(
          instance.regDate, const DateTimeJsonConverter().toJson));
  writeNotNull(
      'UPD_DATE',
      _$JsonConverterToJson<String, DateTime>(
          instance.updDate, const DateTimeJsonConverter().toJson));
  return val;
}

BOOKASSETTBLUpdateManyMutationInput
    _$BOOKASSETTBLUpdateManyMutationInputFromJson(Map<String, dynamic> json) =>
        BOOKASSETTBLUpdateManyMutationInput(
          seq: json['SEQ'] == null
              ? null
              : BigIntFieldUpdateOperationsInput.fromJson(
                  json['SEQ'] as Map<String, dynamic>),
          assetNo: json['ASSET_NO'] == null
              ? null
              : StringFieldUpdateOperationsInput.fromJson(
                  json['ASSET_NO'] as Map<String, dynamic>),
          bookNm: json['BOOK_NM'] == null
              ? null
              : NullableStringFieldUpdateOperationsInput.fromJson(
                  json['BOOK_NM'] as Map<String, dynamic>),
          cnt: json['CNT'] == null
              ? null
              : NullableIntFieldUpdateOperationsInput.fromJson(
                  json['CNT'] as Map<String, dynamic>),
          publisher: json['PUBLISHER'] == null
              ? null
              : NullableStringFieldUpdateOperationsInput.fromJson(
                  json['PUBLISHER'] as Map<String, dynamic>),
          amount: json['AMOUNT'] == null
              ? null
              : NullableIntFieldUpdateOperationsInput.fromJson(
                  json['AMOUNT'] as Map<String, dynamic>),
          buyDate: json['BUY_DATE'] == null
              ? null
              : NullableStringFieldUpdateOperationsInput.fromJson(
                  json['BUY_DATE'] as Map<String, dynamic>),
          mngDept: json['MNG_DEPT'] == null
              ? null
              : NullableStringFieldUpdateOperationsInput.fromJson(
                  json['MNG_DEPT'] as Map<String, dynamic>),
          rentYn: json['RENT_YN'] == null
              ? null
              : NullableStringFieldUpdateOperationsInput.fromJson(
                  json['RENT_YN'] as Map<String, dynamic>),
          rentUser: json['RENT_USER'] == null
              ? null
              : NullableStringFieldUpdateOperationsInput.fromJson(
                  json['RENT_USER'] as Map<String, dynamic>),
          remarks: json['REMARKS'] == null
              ? null
              : NullableStringFieldUpdateOperationsInput.fromJson(
                  json['REMARKS'] as Map<String, dynamic>),
          useYn: json['USE_YN'] == null
              ? null
              : StringFieldUpdateOperationsInput.fromJson(
                  json['USE_YN'] as Map<String, dynamic>),
          delYn: json['DEL_YN'] == null
              ? null
              : StringFieldUpdateOperationsInput.fromJson(
                  json['DEL_YN'] as Map<String, dynamic>),
          regDate: json['REG_DATE'] == null
              ? null
              : DateTimeFieldUpdateOperationsInput.fromJson(
                  json['REG_DATE'] as Map<String, dynamic>),
          updDate: json['UPD_DATE'] == null
              ? null
              : NullableDateTimeFieldUpdateOperationsInput.fromJson(
                  json['UPD_DATE'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$BOOKASSETTBLUpdateManyMutationInputToJson(
    BOOKASSETTBLUpdateManyMutationInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('SEQ', instance.seq?.toJson());
  writeNotNull('ASSET_NO', instance.assetNo?.toJson());
  writeNotNull('BOOK_NM', instance.bookNm?.toJson());
  writeNotNull('CNT', instance.cnt?.toJson());
  writeNotNull('PUBLISHER', instance.publisher?.toJson());
  writeNotNull('AMOUNT', instance.amount?.toJson());
  writeNotNull('BUY_DATE', instance.buyDate?.toJson());
  writeNotNull('MNG_DEPT', instance.mngDept?.toJson());
  writeNotNull('RENT_YN', instance.rentYn?.toJson());
  writeNotNull('RENT_USER', instance.rentUser?.toJson());
  writeNotNull('REMARKS', instance.remarks?.toJson());
  writeNotNull('USE_YN', instance.useYn?.toJson());
  writeNotNull('DEL_YN', instance.delYn?.toJson());
  writeNotNull('REG_DATE', instance.regDate?.toJson());
  writeNotNull('UPD_DATE', instance.updDate?.toJson());
  return val;
}

BOOKASSETTBLUncheckedUpdateManyInput
    _$BOOKASSETTBLUncheckedUpdateManyInputFromJson(Map<String, dynamic> json) =>
        BOOKASSETTBLUncheckedUpdateManyInput(
          seq: json['SEQ'] == null
              ? null
              : BigIntFieldUpdateOperationsInput.fromJson(
                  json['SEQ'] as Map<String, dynamic>),
          assetNo: json['ASSET_NO'] == null
              ? null
              : StringFieldUpdateOperationsInput.fromJson(
                  json['ASSET_NO'] as Map<String, dynamic>),
          bookNm: json['BOOK_NM'] == null
              ? null
              : NullableStringFieldUpdateOperationsInput.fromJson(
                  json['BOOK_NM'] as Map<String, dynamic>),
          cnt: json['CNT'] == null
              ? null
              : NullableIntFieldUpdateOperationsInput.fromJson(
                  json['CNT'] as Map<String, dynamic>),
          publisher: json['PUBLISHER'] == null
              ? null
              : NullableStringFieldUpdateOperationsInput.fromJson(
                  json['PUBLISHER'] as Map<String, dynamic>),
          amount: json['AMOUNT'] == null
              ? null
              : NullableIntFieldUpdateOperationsInput.fromJson(
                  json['AMOUNT'] as Map<String, dynamic>),
          buyDate: json['BUY_DATE'] == null
              ? null
              : NullableStringFieldUpdateOperationsInput.fromJson(
                  json['BUY_DATE'] as Map<String, dynamic>),
          mngDept: json['MNG_DEPT'] == null
              ? null
              : NullableStringFieldUpdateOperationsInput.fromJson(
                  json['MNG_DEPT'] as Map<String, dynamic>),
          rentYn: json['RENT_YN'] == null
              ? null
              : NullableStringFieldUpdateOperationsInput.fromJson(
                  json['RENT_YN'] as Map<String, dynamic>),
          rentUser: json['RENT_USER'] == null
              ? null
              : NullableStringFieldUpdateOperationsInput.fromJson(
                  json['RENT_USER'] as Map<String, dynamic>),
          remarks: json['REMARKS'] == null
              ? null
              : NullableStringFieldUpdateOperationsInput.fromJson(
                  json['REMARKS'] as Map<String, dynamic>),
          useYn: json['USE_YN'] == null
              ? null
              : StringFieldUpdateOperationsInput.fromJson(
                  json['USE_YN'] as Map<String, dynamic>),
          delYn: json['DEL_YN'] == null
              ? null
              : StringFieldUpdateOperationsInput.fromJson(
                  json['DEL_YN'] as Map<String, dynamic>),
          regDate: json['REG_DATE'] == null
              ? null
              : DateTimeFieldUpdateOperationsInput.fromJson(
                  json['REG_DATE'] as Map<String, dynamic>),
          updDate: json['UPD_DATE'] == null
              ? null
              : NullableDateTimeFieldUpdateOperationsInput.fromJson(
                  json['UPD_DATE'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$BOOKASSETTBLUncheckedUpdateManyInputToJson(
    BOOKASSETTBLUncheckedUpdateManyInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('SEQ', instance.seq?.toJson());
  writeNotNull('ASSET_NO', instance.assetNo?.toJson());
  writeNotNull('BOOK_NM', instance.bookNm?.toJson());
  writeNotNull('CNT', instance.cnt?.toJson());
  writeNotNull('PUBLISHER', instance.publisher?.toJson());
  writeNotNull('AMOUNT', instance.amount?.toJson());
  writeNotNull('BUY_DATE', instance.buyDate?.toJson());
  writeNotNull('MNG_DEPT', instance.mngDept?.toJson());
  writeNotNull('RENT_YN', instance.rentYn?.toJson());
  writeNotNull('RENT_USER', instance.rentUser?.toJson());
  writeNotNull('REMARKS', instance.remarks?.toJson());
  writeNotNull('USE_YN', instance.useYn?.toJson());
  writeNotNull('DEL_YN', instance.delYn?.toJson());
  writeNotNull('REG_DATE', instance.regDate?.toJson());
  writeNotNull('UPD_DATE', instance.updDate?.toJson());
  return val;
}

STMNGRMSTCreateInput _$STMNGRMSTCreateInputFromJson(
        Map<String, dynamic> json) =>
    STMNGRMSTCreateInput(
      mngrId: json['MNGR_ID'] as String,
      mngrNm: json['MNGR_NM'] as String,
      mngrPw: json['MNGR_PW'] as String?,
      grpCd: json['GRP_CD'] as String?,
      grade: json['GRADE'] as String?,
      permCd: json['PERM_CD'] as String,
      acsYn: json['ACS_YN'] as String?,
      clph: json['CLPH'] as String?,
      empNo: json['EMP_NO'] as String?,
      joinDate: json['JOIN_DATE'] as String?,
      pwdWrongCnt: json['PWD_WRONG_CNT'] as int?,
      pwdWrongDate: json['PWD_WRONG_DATE'] as String?,
      lstLoginDate: json['LST_LOGIN_DATE'] as String?,
      flpth: json['FLPTH'] as String?,
      fileNm: json['FILE_NM'] as String?,
      regId: json['REG_ID'] as String,
      regDate: json['REG_DATE'] as String,
      editId: json['EDIT_ID'] as String?,
      editDate: json['EDIT_DATE'] as String?,
      delId: json['DEL_ID'] as String?,
      delDate: json['DEL_DATE'] as String?,
    );

Map<String, dynamic> _$STMNGRMSTCreateInputToJson(
    STMNGRMSTCreateInput instance) {
  final val = <String, dynamic>{
    'MNGR_ID': instance.mngrId,
    'MNGR_NM': instance.mngrNm,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('MNGR_PW', instance.mngrPw);
  writeNotNull('GRP_CD', instance.grpCd);
  writeNotNull('GRADE', instance.grade);
  val['PERM_CD'] = instance.permCd;
  writeNotNull('ACS_YN', instance.acsYn);
  writeNotNull('CLPH', instance.clph);
  writeNotNull('EMP_NO', instance.empNo);
  writeNotNull('JOIN_DATE', instance.joinDate);
  writeNotNull('PWD_WRONG_CNT', instance.pwdWrongCnt);
  writeNotNull('PWD_WRONG_DATE', instance.pwdWrongDate);
  writeNotNull('LST_LOGIN_DATE', instance.lstLoginDate);
  writeNotNull('FLPTH', instance.flpth);
  writeNotNull('FILE_NM', instance.fileNm);
  val['REG_ID'] = instance.regId;
  val['REG_DATE'] = instance.regDate;
  writeNotNull('EDIT_ID', instance.editId);
  writeNotNull('EDIT_DATE', instance.editDate);
  writeNotNull('DEL_ID', instance.delId);
  writeNotNull('DEL_DATE', instance.delDate);
  return val;
}

STMNGRMSTUncheckedCreateInput _$STMNGRMSTUncheckedCreateInputFromJson(
        Map<String, dynamic> json) =>
    STMNGRMSTUncheckedCreateInput(
      mngrId: json['MNGR_ID'] as String,
      mngrNm: json['MNGR_NM'] as String,
      mngrPw: json['MNGR_PW'] as String?,
      grpCd: json['GRP_CD'] as String?,
      grade: json['GRADE'] as String?,
      permCd: json['PERM_CD'] as String,
      acsYn: json['ACS_YN'] as String?,
      clph: json['CLPH'] as String?,
      empNo: json['EMP_NO'] as String?,
      joinDate: json['JOIN_DATE'] as String?,
      pwdWrongCnt: json['PWD_WRONG_CNT'] as int?,
      pwdWrongDate: json['PWD_WRONG_DATE'] as String?,
      lstLoginDate: json['LST_LOGIN_DATE'] as String?,
      flpth: json['FLPTH'] as String?,
      fileNm: json['FILE_NM'] as String?,
      regId: json['REG_ID'] as String,
      regDate: json['REG_DATE'] as String,
      editId: json['EDIT_ID'] as String?,
      editDate: json['EDIT_DATE'] as String?,
      delId: json['DEL_ID'] as String?,
      delDate: json['DEL_DATE'] as String?,
    );

Map<String, dynamic> _$STMNGRMSTUncheckedCreateInputToJson(
    STMNGRMSTUncheckedCreateInput instance) {
  final val = <String, dynamic>{
    'MNGR_ID': instance.mngrId,
    'MNGR_NM': instance.mngrNm,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('MNGR_PW', instance.mngrPw);
  writeNotNull('GRP_CD', instance.grpCd);
  writeNotNull('GRADE', instance.grade);
  val['PERM_CD'] = instance.permCd;
  writeNotNull('ACS_YN', instance.acsYn);
  writeNotNull('CLPH', instance.clph);
  writeNotNull('EMP_NO', instance.empNo);
  writeNotNull('JOIN_DATE', instance.joinDate);
  writeNotNull('PWD_WRONG_CNT', instance.pwdWrongCnt);
  writeNotNull('PWD_WRONG_DATE', instance.pwdWrongDate);
  writeNotNull('LST_LOGIN_DATE', instance.lstLoginDate);
  writeNotNull('FLPTH', instance.flpth);
  writeNotNull('FILE_NM', instance.fileNm);
  val['REG_ID'] = instance.regId;
  val['REG_DATE'] = instance.regDate;
  writeNotNull('EDIT_ID', instance.editId);
  writeNotNull('EDIT_DATE', instance.editDate);
  writeNotNull('DEL_ID', instance.delId);
  writeNotNull('DEL_DATE', instance.delDate);
  return val;
}

STMNGRMSTUpdateInput _$STMNGRMSTUpdateInputFromJson(
        Map<String, dynamic> json) =>
    STMNGRMSTUpdateInput(
      mngrId: json['MNGR_ID'] == null
          ? null
          : StringFieldUpdateOperationsInput.fromJson(
              json['MNGR_ID'] as Map<String, dynamic>),
      mngrNm: json['MNGR_NM'] == null
          ? null
          : StringFieldUpdateOperationsInput.fromJson(
              json['MNGR_NM'] as Map<String, dynamic>),
      mngrPw: json['MNGR_PW'] == null
          ? null
          : NullableStringFieldUpdateOperationsInput.fromJson(
              json['MNGR_PW'] as Map<String, dynamic>),
      grpCd: json['GRP_CD'] == null
          ? null
          : NullableStringFieldUpdateOperationsInput.fromJson(
              json['GRP_CD'] as Map<String, dynamic>),
      grade: json['GRADE'] == null
          ? null
          : NullableStringFieldUpdateOperationsInput.fromJson(
              json['GRADE'] as Map<String, dynamic>),
      permCd: json['PERM_CD'] == null
          ? null
          : StringFieldUpdateOperationsInput.fromJson(
              json['PERM_CD'] as Map<String, dynamic>),
      acsYn: json['ACS_YN'] == null
          ? null
          : NullableStringFieldUpdateOperationsInput.fromJson(
              json['ACS_YN'] as Map<String, dynamic>),
      clph: json['CLPH'] == null
          ? null
          : NullableStringFieldUpdateOperationsInput.fromJson(
              json['CLPH'] as Map<String, dynamic>),
      empNo: json['EMP_NO'] == null
          ? null
          : NullableStringFieldUpdateOperationsInput.fromJson(
              json['EMP_NO'] as Map<String, dynamic>),
      joinDate: json['JOIN_DATE'] == null
          ? null
          : StringFieldUpdateOperationsInput.fromJson(
              json['JOIN_DATE'] as Map<String, dynamic>),
      pwdWrongCnt: json['PWD_WRONG_CNT'] == null
          ? null
          : NullableIntFieldUpdateOperationsInput.fromJson(
              json['PWD_WRONG_CNT'] as Map<String, dynamic>),
      pwdWrongDate: json['PWD_WRONG_DATE'] == null
          ? null
          : NullableStringFieldUpdateOperationsInput.fromJson(
              json['PWD_WRONG_DATE'] as Map<String, dynamic>),
      lstLoginDate: json['LST_LOGIN_DATE'] == null
          ? null
          : NullableStringFieldUpdateOperationsInput.fromJson(
              json['LST_LOGIN_DATE'] as Map<String, dynamic>),
      flpth: json['FLPTH'] == null
          ? null
          : NullableStringFieldUpdateOperationsInput.fromJson(
              json['FLPTH'] as Map<String, dynamic>),
      fileNm: json['FILE_NM'] == null
          ? null
          : NullableStringFieldUpdateOperationsInput.fromJson(
              json['FILE_NM'] as Map<String, dynamic>),
      regId: json['REG_ID'] == null
          ? null
          : StringFieldUpdateOperationsInput.fromJson(
              json['REG_ID'] as Map<String, dynamic>),
      regDate: json['REG_DATE'] == null
          ? null
          : StringFieldUpdateOperationsInput.fromJson(
              json['REG_DATE'] as Map<String, dynamic>),
      editId: json['EDIT_ID'] == null
          ? null
          : NullableStringFieldUpdateOperationsInput.fromJson(
              json['EDIT_ID'] as Map<String, dynamic>),
      editDate: json['EDIT_DATE'] == null
          ? null
          : NullableStringFieldUpdateOperationsInput.fromJson(
              json['EDIT_DATE'] as Map<String, dynamic>),
      delId: json['DEL_ID'] == null
          ? null
          : NullableStringFieldUpdateOperationsInput.fromJson(
              json['DEL_ID'] as Map<String, dynamic>),
      delDate: json['DEL_DATE'] == null
          ? null
          : NullableStringFieldUpdateOperationsInput.fromJson(
              json['DEL_DATE'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$STMNGRMSTUpdateInputToJson(
    STMNGRMSTUpdateInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('MNGR_ID', instance.mngrId?.toJson());
  writeNotNull('MNGR_NM', instance.mngrNm?.toJson());
  writeNotNull('MNGR_PW', instance.mngrPw?.toJson());
  writeNotNull('GRP_CD', instance.grpCd?.toJson());
  writeNotNull('GRADE', instance.grade?.toJson());
  writeNotNull('PERM_CD', instance.permCd?.toJson());
  writeNotNull('ACS_YN', instance.acsYn?.toJson());
  writeNotNull('CLPH', instance.clph?.toJson());
  writeNotNull('EMP_NO', instance.empNo?.toJson());
  writeNotNull('JOIN_DATE', instance.joinDate?.toJson());
  writeNotNull('PWD_WRONG_CNT', instance.pwdWrongCnt?.toJson());
  writeNotNull('PWD_WRONG_DATE', instance.pwdWrongDate?.toJson());
  writeNotNull('LST_LOGIN_DATE', instance.lstLoginDate?.toJson());
  writeNotNull('FLPTH', instance.flpth?.toJson());
  writeNotNull('FILE_NM', instance.fileNm?.toJson());
  writeNotNull('REG_ID', instance.regId?.toJson());
  writeNotNull('REG_DATE', instance.regDate?.toJson());
  writeNotNull('EDIT_ID', instance.editId?.toJson());
  writeNotNull('EDIT_DATE', instance.editDate?.toJson());
  writeNotNull('DEL_ID', instance.delId?.toJson());
  writeNotNull('DEL_DATE', instance.delDate?.toJson());
  return val;
}

STMNGRMSTUncheckedUpdateInput _$STMNGRMSTUncheckedUpdateInputFromJson(
        Map<String, dynamic> json) =>
    STMNGRMSTUncheckedUpdateInput(
      mngrId: json['MNGR_ID'] == null
          ? null
          : StringFieldUpdateOperationsInput.fromJson(
              json['MNGR_ID'] as Map<String, dynamic>),
      mngrNm: json['MNGR_NM'] == null
          ? null
          : StringFieldUpdateOperationsInput.fromJson(
              json['MNGR_NM'] as Map<String, dynamic>),
      mngrPw: json['MNGR_PW'] == null
          ? null
          : NullableStringFieldUpdateOperationsInput.fromJson(
              json['MNGR_PW'] as Map<String, dynamic>),
      grpCd: json['GRP_CD'] == null
          ? null
          : NullableStringFieldUpdateOperationsInput.fromJson(
              json['GRP_CD'] as Map<String, dynamic>),
      grade: json['GRADE'] == null
          ? null
          : NullableStringFieldUpdateOperationsInput.fromJson(
              json['GRADE'] as Map<String, dynamic>),
      permCd: json['PERM_CD'] == null
          ? null
          : StringFieldUpdateOperationsInput.fromJson(
              json['PERM_CD'] as Map<String, dynamic>),
      acsYn: json['ACS_YN'] == null
          ? null
          : NullableStringFieldUpdateOperationsInput.fromJson(
              json['ACS_YN'] as Map<String, dynamic>),
      clph: json['CLPH'] == null
          ? null
          : NullableStringFieldUpdateOperationsInput.fromJson(
              json['CLPH'] as Map<String, dynamic>),
      empNo: json['EMP_NO'] == null
          ? null
          : NullableStringFieldUpdateOperationsInput.fromJson(
              json['EMP_NO'] as Map<String, dynamic>),
      joinDate: json['JOIN_DATE'] == null
          ? null
          : StringFieldUpdateOperationsInput.fromJson(
              json['JOIN_DATE'] as Map<String, dynamic>),
      pwdWrongCnt: json['PWD_WRONG_CNT'] == null
          ? null
          : NullableIntFieldUpdateOperationsInput.fromJson(
              json['PWD_WRONG_CNT'] as Map<String, dynamic>),
      pwdWrongDate: json['PWD_WRONG_DATE'] == null
          ? null
          : NullableStringFieldUpdateOperationsInput.fromJson(
              json['PWD_WRONG_DATE'] as Map<String, dynamic>),
      lstLoginDate: json['LST_LOGIN_DATE'] == null
          ? null
          : NullableStringFieldUpdateOperationsInput.fromJson(
              json['LST_LOGIN_DATE'] as Map<String, dynamic>),
      flpth: json['FLPTH'] == null
          ? null
          : NullableStringFieldUpdateOperationsInput.fromJson(
              json['FLPTH'] as Map<String, dynamic>),
      fileNm: json['FILE_NM'] == null
          ? null
          : NullableStringFieldUpdateOperationsInput.fromJson(
              json['FILE_NM'] as Map<String, dynamic>),
      regId: json['REG_ID'] == null
          ? null
          : StringFieldUpdateOperationsInput.fromJson(
              json['REG_ID'] as Map<String, dynamic>),
      regDate: json['REG_DATE'] == null
          ? null
          : StringFieldUpdateOperationsInput.fromJson(
              json['REG_DATE'] as Map<String, dynamic>),
      editId: json['EDIT_ID'] == null
          ? null
          : NullableStringFieldUpdateOperationsInput.fromJson(
              json['EDIT_ID'] as Map<String, dynamic>),
      editDate: json['EDIT_DATE'] == null
          ? null
          : NullableStringFieldUpdateOperationsInput.fromJson(
              json['EDIT_DATE'] as Map<String, dynamic>),
      delId: json['DEL_ID'] == null
          ? null
          : NullableStringFieldUpdateOperationsInput.fromJson(
              json['DEL_ID'] as Map<String, dynamic>),
      delDate: json['DEL_DATE'] == null
          ? null
          : NullableStringFieldUpdateOperationsInput.fromJson(
              json['DEL_DATE'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$STMNGRMSTUncheckedUpdateInputToJson(
    STMNGRMSTUncheckedUpdateInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('MNGR_ID', instance.mngrId?.toJson());
  writeNotNull('MNGR_NM', instance.mngrNm?.toJson());
  writeNotNull('MNGR_PW', instance.mngrPw?.toJson());
  writeNotNull('GRP_CD', instance.grpCd?.toJson());
  writeNotNull('GRADE', instance.grade?.toJson());
  writeNotNull('PERM_CD', instance.permCd?.toJson());
  writeNotNull('ACS_YN', instance.acsYn?.toJson());
  writeNotNull('CLPH', instance.clph?.toJson());
  writeNotNull('EMP_NO', instance.empNo?.toJson());
  writeNotNull('JOIN_DATE', instance.joinDate?.toJson());
  writeNotNull('PWD_WRONG_CNT', instance.pwdWrongCnt?.toJson());
  writeNotNull('PWD_WRONG_DATE', instance.pwdWrongDate?.toJson());
  writeNotNull('LST_LOGIN_DATE', instance.lstLoginDate?.toJson());
  writeNotNull('FLPTH', instance.flpth?.toJson());
  writeNotNull('FILE_NM', instance.fileNm?.toJson());
  writeNotNull('REG_ID', instance.regId?.toJson());
  writeNotNull('REG_DATE', instance.regDate?.toJson());
  writeNotNull('EDIT_ID', instance.editId?.toJson());
  writeNotNull('EDIT_DATE', instance.editDate?.toJson());
  writeNotNull('DEL_ID', instance.delId?.toJson());
  writeNotNull('DEL_DATE', instance.delDate?.toJson());
  return val;
}

STMNGRMSTCreateManyInput _$STMNGRMSTCreateManyInputFromJson(
        Map<String, dynamic> json) =>
    STMNGRMSTCreateManyInput(
      mngrId: json['MNGR_ID'] as String,
      mngrNm: json['MNGR_NM'] as String,
      mngrPw: json['MNGR_PW'] as String?,
      grpCd: json['GRP_CD'] as String?,
      grade: json['GRADE'] as String?,
      permCd: json['PERM_CD'] as String,
      acsYn: json['ACS_YN'] as String?,
      clph: json['CLPH'] as String?,
      empNo: json['EMP_NO'] as String?,
      joinDate: json['JOIN_DATE'] as String?,
      pwdWrongCnt: json['PWD_WRONG_CNT'] as int?,
      pwdWrongDate: json['PWD_WRONG_DATE'] as String?,
      lstLoginDate: json['LST_LOGIN_DATE'] as String?,
      flpth: json['FLPTH'] as String?,
      fileNm: json['FILE_NM'] as String?,
      regId: json['REG_ID'] as String,
      regDate: json['REG_DATE'] as String,
      editId: json['EDIT_ID'] as String?,
      editDate: json['EDIT_DATE'] as String?,
      delId: json['DEL_ID'] as String?,
      delDate: json['DEL_DATE'] as String?,
    );

Map<String, dynamic> _$STMNGRMSTCreateManyInputToJson(
    STMNGRMSTCreateManyInput instance) {
  final val = <String, dynamic>{
    'MNGR_ID': instance.mngrId,
    'MNGR_NM': instance.mngrNm,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('MNGR_PW', instance.mngrPw);
  writeNotNull('GRP_CD', instance.grpCd);
  writeNotNull('GRADE', instance.grade);
  val['PERM_CD'] = instance.permCd;
  writeNotNull('ACS_YN', instance.acsYn);
  writeNotNull('CLPH', instance.clph);
  writeNotNull('EMP_NO', instance.empNo);
  writeNotNull('JOIN_DATE', instance.joinDate);
  writeNotNull('PWD_WRONG_CNT', instance.pwdWrongCnt);
  writeNotNull('PWD_WRONG_DATE', instance.pwdWrongDate);
  writeNotNull('LST_LOGIN_DATE', instance.lstLoginDate);
  writeNotNull('FLPTH', instance.flpth);
  writeNotNull('FILE_NM', instance.fileNm);
  val['REG_ID'] = instance.regId;
  val['REG_DATE'] = instance.regDate;
  writeNotNull('EDIT_ID', instance.editId);
  writeNotNull('EDIT_DATE', instance.editDate);
  writeNotNull('DEL_ID', instance.delId);
  writeNotNull('DEL_DATE', instance.delDate);
  return val;
}

STMNGRMSTUpdateManyMutationInput _$STMNGRMSTUpdateManyMutationInputFromJson(
        Map<String, dynamic> json) =>
    STMNGRMSTUpdateManyMutationInput(
      mngrId: json['MNGR_ID'] == null
          ? null
          : StringFieldUpdateOperationsInput.fromJson(
              json['MNGR_ID'] as Map<String, dynamic>),
      mngrNm: json['MNGR_NM'] == null
          ? null
          : StringFieldUpdateOperationsInput.fromJson(
              json['MNGR_NM'] as Map<String, dynamic>),
      mngrPw: json['MNGR_PW'] == null
          ? null
          : NullableStringFieldUpdateOperationsInput.fromJson(
              json['MNGR_PW'] as Map<String, dynamic>),
      grpCd: json['GRP_CD'] == null
          ? null
          : NullableStringFieldUpdateOperationsInput.fromJson(
              json['GRP_CD'] as Map<String, dynamic>),
      grade: json['GRADE'] == null
          ? null
          : NullableStringFieldUpdateOperationsInput.fromJson(
              json['GRADE'] as Map<String, dynamic>),
      permCd: json['PERM_CD'] == null
          ? null
          : StringFieldUpdateOperationsInput.fromJson(
              json['PERM_CD'] as Map<String, dynamic>),
      acsYn: json['ACS_YN'] == null
          ? null
          : NullableStringFieldUpdateOperationsInput.fromJson(
              json['ACS_YN'] as Map<String, dynamic>),
      clph: json['CLPH'] == null
          ? null
          : NullableStringFieldUpdateOperationsInput.fromJson(
              json['CLPH'] as Map<String, dynamic>),
      empNo: json['EMP_NO'] == null
          ? null
          : NullableStringFieldUpdateOperationsInput.fromJson(
              json['EMP_NO'] as Map<String, dynamic>),
      joinDate: json['JOIN_DATE'] == null
          ? null
          : StringFieldUpdateOperationsInput.fromJson(
              json['JOIN_DATE'] as Map<String, dynamic>),
      pwdWrongCnt: json['PWD_WRONG_CNT'] == null
          ? null
          : NullableIntFieldUpdateOperationsInput.fromJson(
              json['PWD_WRONG_CNT'] as Map<String, dynamic>),
      pwdWrongDate: json['PWD_WRONG_DATE'] == null
          ? null
          : NullableStringFieldUpdateOperationsInput.fromJson(
              json['PWD_WRONG_DATE'] as Map<String, dynamic>),
      lstLoginDate: json['LST_LOGIN_DATE'] == null
          ? null
          : NullableStringFieldUpdateOperationsInput.fromJson(
              json['LST_LOGIN_DATE'] as Map<String, dynamic>),
      flpth: json['FLPTH'] == null
          ? null
          : NullableStringFieldUpdateOperationsInput.fromJson(
              json['FLPTH'] as Map<String, dynamic>),
      fileNm: json['FILE_NM'] == null
          ? null
          : NullableStringFieldUpdateOperationsInput.fromJson(
              json['FILE_NM'] as Map<String, dynamic>),
      regId: json['REG_ID'] == null
          ? null
          : StringFieldUpdateOperationsInput.fromJson(
              json['REG_ID'] as Map<String, dynamic>),
      regDate: json['REG_DATE'] == null
          ? null
          : StringFieldUpdateOperationsInput.fromJson(
              json['REG_DATE'] as Map<String, dynamic>),
      editId: json['EDIT_ID'] == null
          ? null
          : NullableStringFieldUpdateOperationsInput.fromJson(
              json['EDIT_ID'] as Map<String, dynamic>),
      editDate: json['EDIT_DATE'] == null
          ? null
          : NullableStringFieldUpdateOperationsInput.fromJson(
              json['EDIT_DATE'] as Map<String, dynamic>),
      delId: json['DEL_ID'] == null
          ? null
          : NullableStringFieldUpdateOperationsInput.fromJson(
              json['DEL_ID'] as Map<String, dynamic>),
      delDate: json['DEL_DATE'] == null
          ? null
          : NullableStringFieldUpdateOperationsInput.fromJson(
              json['DEL_DATE'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$STMNGRMSTUpdateManyMutationInputToJson(
    STMNGRMSTUpdateManyMutationInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('MNGR_ID', instance.mngrId?.toJson());
  writeNotNull('MNGR_NM', instance.mngrNm?.toJson());
  writeNotNull('MNGR_PW', instance.mngrPw?.toJson());
  writeNotNull('GRP_CD', instance.grpCd?.toJson());
  writeNotNull('GRADE', instance.grade?.toJson());
  writeNotNull('PERM_CD', instance.permCd?.toJson());
  writeNotNull('ACS_YN', instance.acsYn?.toJson());
  writeNotNull('CLPH', instance.clph?.toJson());
  writeNotNull('EMP_NO', instance.empNo?.toJson());
  writeNotNull('JOIN_DATE', instance.joinDate?.toJson());
  writeNotNull('PWD_WRONG_CNT', instance.pwdWrongCnt?.toJson());
  writeNotNull('PWD_WRONG_DATE', instance.pwdWrongDate?.toJson());
  writeNotNull('LST_LOGIN_DATE', instance.lstLoginDate?.toJson());
  writeNotNull('FLPTH', instance.flpth?.toJson());
  writeNotNull('FILE_NM', instance.fileNm?.toJson());
  writeNotNull('REG_ID', instance.regId?.toJson());
  writeNotNull('REG_DATE', instance.regDate?.toJson());
  writeNotNull('EDIT_ID', instance.editId?.toJson());
  writeNotNull('EDIT_DATE', instance.editDate?.toJson());
  writeNotNull('DEL_ID', instance.delId?.toJson());
  writeNotNull('DEL_DATE', instance.delDate?.toJson());
  return val;
}

STMNGRMSTUncheckedUpdateManyInput _$STMNGRMSTUncheckedUpdateManyInputFromJson(
        Map<String, dynamic> json) =>
    STMNGRMSTUncheckedUpdateManyInput(
      mngrId: json['MNGR_ID'] == null
          ? null
          : StringFieldUpdateOperationsInput.fromJson(
              json['MNGR_ID'] as Map<String, dynamic>),
      mngrNm: json['MNGR_NM'] == null
          ? null
          : StringFieldUpdateOperationsInput.fromJson(
              json['MNGR_NM'] as Map<String, dynamic>),
      mngrPw: json['MNGR_PW'] == null
          ? null
          : NullableStringFieldUpdateOperationsInput.fromJson(
              json['MNGR_PW'] as Map<String, dynamic>),
      grpCd: json['GRP_CD'] == null
          ? null
          : NullableStringFieldUpdateOperationsInput.fromJson(
              json['GRP_CD'] as Map<String, dynamic>),
      grade: json['GRADE'] == null
          ? null
          : NullableStringFieldUpdateOperationsInput.fromJson(
              json['GRADE'] as Map<String, dynamic>),
      permCd: json['PERM_CD'] == null
          ? null
          : StringFieldUpdateOperationsInput.fromJson(
              json['PERM_CD'] as Map<String, dynamic>),
      acsYn: json['ACS_YN'] == null
          ? null
          : NullableStringFieldUpdateOperationsInput.fromJson(
              json['ACS_YN'] as Map<String, dynamic>),
      clph: json['CLPH'] == null
          ? null
          : NullableStringFieldUpdateOperationsInput.fromJson(
              json['CLPH'] as Map<String, dynamic>),
      empNo: json['EMP_NO'] == null
          ? null
          : NullableStringFieldUpdateOperationsInput.fromJson(
              json['EMP_NO'] as Map<String, dynamic>),
      joinDate: json['JOIN_DATE'] == null
          ? null
          : StringFieldUpdateOperationsInput.fromJson(
              json['JOIN_DATE'] as Map<String, dynamic>),
      pwdWrongCnt: json['PWD_WRONG_CNT'] == null
          ? null
          : NullableIntFieldUpdateOperationsInput.fromJson(
              json['PWD_WRONG_CNT'] as Map<String, dynamic>),
      pwdWrongDate: json['PWD_WRONG_DATE'] == null
          ? null
          : NullableStringFieldUpdateOperationsInput.fromJson(
              json['PWD_WRONG_DATE'] as Map<String, dynamic>),
      lstLoginDate: json['LST_LOGIN_DATE'] == null
          ? null
          : NullableStringFieldUpdateOperationsInput.fromJson(
              json['LST_LOGIN_DATE'] as Map<String, dynamic>),
      flpth: json['FLPTH'] == null
          ? null
          : NullableStringFieldUpdateOperationsInput.fromJson(
              json['FLPTH'] as Map<String, dynamic>),
      fileNm: json['FILE_NM'] == null
          ? null
          : NullableStringFieldUpdateOperationsInput.fromJson(
              json['FILE_NM'] as Map<String, dynamic>),
      regId: json['REG_ID'] == null
          ? null
          : StringFieldUpdateOperationsInput.fromJson(
              json['REG_ID'] as Map<String, dynamic>),
      regDate: json['REG_DATE'] == null
          ? null
          : StringFieldUpdateOperationsInput.fromJson(
              json['REG_DATE'] as Map<String, dynamic>),
      editId: json['EDIT_ID'] == null
          ? null
          : NullableStringFieldUpdateOperationsInput.fromJson(
              json['EDIT_ID'] as Map<String, dynamic>),
      editDate: json['EDIT_DATE'] == null
          ? null
          : NullableStringFieldUpdateOperationsInput.fromJson(
              json['EDIT_DATE'] as Map<String, dynamic>),
      delId: json['DEL_ID'] == null
          ? null
          : NullableStringFieldUpdateOperationsInput.fromJson(
              json['DEL_ID'] as Map<String, dynamic>),
      delDate: json['DEL_DATE'] == null
          ? null
          : NullableStringFieldUpdateOperationsInput.fromJson(
              json['DEL_DATE'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$STMNGRMSTUncheckedUpdateManyInputToJson(
    STMNGRMSTUncheckedUpdateManyInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('MNGR_ID', instance.mngrId?.toJson());
  writeNotNull('MNGR_NM', instance.mngrNm?.toJson());
  writeNotNull('MNGR_PW', instance.mngrPw?.toJson());
  writeNotNull('GRP_CD', instance.grpCd?.toJson());
  writeNotNull('GRADE', instance.grade?.toJson());
  writeNotNull('PERM_CD', instance.permCd?.toJson());
  writeNotNull('ACS_YN', instance.acsYn?.toJson());
  writeNotNull('CLPH', instance.clph?.toJson());
  writeNotNull('EMP_NO', instance.empNo?.toJson());
  writeNotNull('JOIN_DATE', instance.joinDate?.toJson());
  writeNotNull('PWD_WRONG_CNT', instance.pwdWrongCnt?.toJson());
  writeNotNull('PWD_WRONG_DATE', instance.pwdWrongDate?.toJson());
  writeNotNull('LST_LOGIN_DATE', instance.lstLoginDate?.toJson());
  writeNotNull('FLPTH', instance.flpth?.toJson());
  writeNotNull('FILE_NM', instance.fileNm?.toJson());
  writeNotNull('REG_ID', instance.regId?.toJson());
  writeNotNull('REG_DATE', instance.regDate?.toJson());
  writeNotNull('EDIT_ID', instance.editId?.toJson());
  writeNotNull('EDIT_DATE', instance.editDate?.toJson());
  writeNotNull('DEL_ID', instance.delId?.toJson());
  writeNotNull('DEL_DATE', instance.delDate?.toJson());
  return val;
}

BigIntFilter _$BigIntFilterFromJson(Map<String, dynamic> json) => BigIntFilter(
      equals: json['equals'] == null
          ? null
          : BigInt.parse(json['equals'] as String),
      $in:
          (json['in'] as List<dynamic>?)?.map((e) => BigInt.parse(e as String)),
      notIn: (json['notIn'] as List<dynamic>?)
          ?.map((e) => BigInt.parse(e as String)),
      lt: json['lt'] == null ? null : BigInt.parse(json['lt'] as String),
      lte: json['lte'] == null ? null : BigInt.parse(json['lte'] as String),
      gt: json['gt'] == null ? null : BigInt.parse(json['gt'] as String),
      gte: json['gte'] == null ? null : BigInt.parse(json['gte'] as String),
      not: json['not'] == null
          ? null
          : NestedBigIntFilter.fromJson(json['not'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$BigIntFilterToJson(BigIntFilter instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('equals', instance.equals?.toString());
  writeNotNull('in', instance.$in?.map((e) => e.toString()).toList());
  writeNotNull('notIn', instance.notIn?.map((e) => e.toString()).toList());
  writeNotNull('lt', instance.lt?.toString());
  writeNotNull('lte', instance.lte?.toString());
  writeNotNull('gt', instance.gt?.toString());
  writeNotNull('gte', instance.gte?.toString());
  writeNotNull('not', instance.not?.toJson());
  return val;
}

StringFilter _$StringFilterFromJson(Map<String, dynamic> json) => StringFilter(
      equals: json['equals'] as String?,
      $in: (json['in'] as List<dynamic>?)?.map((e) => e as String),
      notIn: (json['notIn'] as List<dynamic>?)?.map((e) => e as String),
      lt: json['lt'] as String?,
      lte: json['lte'] as String?,
      gt: json['gt'] as String?,
      gte: json['gte'] as String?,
      contains: json['contains'] as String?,
      startsWith: json['startsWith'] as String?,
      endsWith: json['endsWith'] as String?,
      not: json['not'] == null
          ? null
          : NestedStringFilter.fromJson(json['not'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$StringFilterToJson(StringFilter instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('equals', instance.equals);
  writeNotNull('in', instance.$in?.toList());
  writeNotNull('notIn', instance.notIn?.toList());
  writeNotNull('lt', instance.lt);
  writeNotNull('lte', instance.lte);
  writeNotNull('gt', instance.gt);
  writeNotNull('gte', instance.gte);
  writeNotNull('contains', instance.contains);
  writeNotNull('startsWith', instance.startsWith);
  writeNotNull('endsWith', instance.endsWith);
  writeNotNull('not', instance.not?.toJson());
  return val;
}

StringNullableFilter _$StringNullableFilterFromJson(
        Map<String, dynamic> json) =>
    StringNullableFilter(
      equals: json['equals'] as String?,
      $in: (json['in'] as List<dynamic>?)?.map((e) => e as String),
      notIn: (json['notIn'] as List<dynamic>?)?.map((e) => e as String),
      lt: json['lt'] as String?,
      lte: json['lte'] as String?,
      gt: json['gt'] as String?,
      gte: json['gte'] as String?,
      contains: json['contains'] as String?,
      startsWith: json['startsWith'] as String?,
      endsWith: json['endsWith'] as String?,
      not: json['not'] == null
          ? null
          : NestedStringNullableFilter.fromJson(
              json['not'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$StringNullableFilterToJson(
    StringNullableFilter instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('equals', instance.equals);
  writeNotNull('in', instance.$in?.toList());
  writeNotNull('notIn', instance.notIn?.toList());
  writeNotNull('lt', instance.lt);
  writeNotNull('lte', instance.lte);
  writeNotNull('gt', instance.gt);
  writeNotNull('gte', instance.gte);
  writeNotNull('contains', instance.contains);
  writeNotNull('startsWith', instance.startsWith);
  writeNotNull('endsWith', instance.endsWith);
  writeNotNull('not', instance.not?.toJson());
  return val;
}

IntNullableFilter _$IntNullableFilterFromJson(Map<String, dynamic> json) =>
    IntNullableFilter(
      equals: json['equals'] as int?,
      $in: (json['in'] as List<dynamic>?)?.map((e) => e as int),
      notIn: (json['notIn'] as List<dynamic>?)?.map((e) => e as int),
      lt: json['lt'] as int?,
      lte: json['lte'] as int?,
      gt: json['gt'] as int?,
      gte: json['gte'] as int?,
      not: json['not'] == null
          ? null
          : NestedIntNullableFilter.fromJson(
              json['not'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$IntNullableFilterToJson(IntNullableFilter instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('equals', instance.equals);
  writeNotNull('in', instance.$in?.toList());
  writeNotNull('notIn', instance.notIn?.toList());
  writeNotNull('lt', instance.lt);
  writeNotNull('lte', instance.lte);
  writeNotNull('gt', instance.gt);
  writeNotNull('gte', instance.gte);
  writeNotNull('not', instance.not?.toJson());
  return val;
}

DateTimeFilter _$DateTimeFilterFromJson(Map<String, dynamic> json) =>
    DateTimeFilter(
      equals: _$JsonConverterFromJson<String, DateTime>(
          json['equals'], const DateTimeJsonConverter().fromJson),
      $in: (json['in'] as List<dynamic>?)
          ?.map((e) => const DateTimeJsonConverter().fromJson(e as String)),
      notIn: (json['notIn'] as List<dynamic>?)
          ?.map((e) => const DateTimeJsonConverter().fromJson(e as String)),
      lt: _$JsonConverterFromJson<String, DateTime>(
          json['lt'], const DateTimeJsonConverter().fromJson),
      lte: _$JsonConverterFromJson<String, DateTime>(
          json['lte'], const DateTimeJsonConverter().fromJson),
      gt: _$JsonConverterFromJson<String, DateTime>(
          json['gt'], const DateTimeJsonConverter().fromJson),
      gte: _$JsonConverterFromJson<String, DateTime>(
          json['gte'], const DateTimeJsonConverter().fromJson),
      not: json['not'] == null
          ? null
          : NestedDateTimeFilter.fromJson(json['not'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$DateTimeFilterToJson(DateTimeFilter instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull(
      'equals',
      _$JsonConverterToJson<String, DateTime>(
          instance.equals, const DateTimeJsonConverter().toJson));
  writeNotNull(
      'in', instance.$in?.map(const DateTimeJsonConverter().toJson).toList());
  writeNotNull('notIn',
      instance.notIn?.map(const DateTimeJsonConverter().toJson).toList());
  writeNotNull(
      'lt',
      _$JsonConverterToJson<String, DateTime>(
          instance.lt, const DateTimeJsonConverter().toJson));
  writeNotNull(
      'lte',
      _$JsonConverterToJson<String, DateTime>(
          instance.lte, const DateTimeJsonConverter().toJson));
  writeNotNull(
      'gt',
      _$JsonConverterToJson<String, DateTime>(
          instance.gt, const DateTimeJsonConverter().toJson));
  writeNotNull(
      'gte',
      _$JsonConverterToJson<String, DateTime>(
          instance.gte, const DateTimeJsonConverter().toJson));
  writeNotNull('not', instance.not?.toJson());
  return val;
}

DateTimeNullableFilter _$DateTimeNullableFilterFromJson(
        Map<String, dynamic> json) =>
    DateTimeNullableFilter(
      equals: _$JsonConverterFromJson<String, DateTime>(
          json['equals'], const DateTimeJsonConverter().fromJson),
      $in: (json['in'] as List<dynamic>?)
          ?.map((e) => const DateTimeJsonConverter().fromJson(e as String)),
      notIn: (json['notIn'] as List<dynamic>?)
          ?.map((e) => const DateTimeJsonConverter().fromJson(e as String)),
      lt: _$JsonConverterFromJson<String, DateTime>(
          json['lt'], const DateTimeJsonConverter().fromJson),
      lte: _$JsonConverterFromJson<String, DateTime>(
          json['lte'], const DateTimeJsonConverter().fromJson),
      gt: _$JsonConverterFromJson<String, DateTime>(
          json['gt'], const DateTimeJsonConverter().fromJson),
      gte: _$JsonConverterFromJson<String, DateTime>(
          json['gte'], const DateTimeJsonConverter().fromJson),
      not: json['not'] == null
          ? null
          : NestedDateTimeNullableFilter.fromJson(
              json['not'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$DateTimeNullableFilterToJson(
    DateTimeNullableFilter instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull(
      'equals',
      _$JsonConverterToJson<String, DateTime>(
          instance.equals, const DateTimeJsonConverter().toJson));
  writeNotNull(
      'in', instance.$in?.map(const DateTimeJsonConverter().toJson).toList());
  writeNotNull('notIn',
      instance.notIn?.map(const DateTimeJsonConverter().toJson).toList());
  writeNotNull(
      'lt',
      _$JsonConverterToJson<String, DateTime>(
          instance.lt, const DateTimeJsonConverter().toJson));
  writeNotNull(
      'lte',
      _$JsonConverterToJson<String, DateTime>(
          instance.lte, const DateTimeJsonConverter().toJson));
  writeNotNull(
      'gt',
      _$JsonConverterToJson<String, DateTime>(
          instance.gt, const DateTimeJsonConverter().toJson));
  writeNotNull(
      'gte',
      _$JsonConverterToJson<String, DateTime>(
          instance.gte, const DateTimeJsonConverter().toJson));
  writeNotNull('not', instance.not?.toJson());
  return val;
}

SortOrderInput _$SortOrderInputFromJson(Map<String, dynamic> json) =>
    SortOrderInput(
      sort: $enumDecode(_$SortOrderEnumMap, json['sort']),
      nulls: $enumDecodeNullable(_$NullsOrderEnumMap, json['nulls']),
    );

Map<String, dynamic> _$SortOrderInputToJson(SortOrderInput instance) {
  final val = <String, dynamic>{
    'sort': _$SortOrderEnumMap[instance.sort]!,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('nulls', _$NullsOrderEnumMap[instance.nulls]);
  return val;
}

const _$NullsOrderEnumMap = {
  NullsOrder.first: 'first',
  NullsOrder.last: 'last',
};

BOOKASSETTBLCountOrderByAggregateInput
    _$BOOKASSETTBLCountOrderByAggregateInputFromJson(
            Map<String, dynamic> json) =>
        BOOKASSETTBLCountOrderByAggregateInput(
          seq: $enumDecodeNullable(_$SortOrderEnumMap, json['SEQ']),
          assetNo: $enumDecodeNullable(_$SortOrderEnumMap, json['ASSET_NO']),
          bookNm: $enumDecodeNullable(_$SortOrderEnumMap, json['BOOK_NM']),
          cnt: $enumDecodeNullable(_$SortOrderEnumMap, json['CNT']),
          publisher: $enumDecodeNullable(_$SortOrderEnumMap, json['PUBLISHER']),
          amount: $enumDecodeNullable(_$SortOrderEnumMap, json['AMOUNT']),
          buyDate: $enumDecodeNullable(_$SortOrderEnumMap, json['BUY_DATE']),
          mngDept: $enumDecodeNullable(_$SortOrderEnumMap, json['MNG_DEPT']),
          rentYn: $enumDecodeNullable(_$SortOrderEnumMap, json['RENT_YN']),
          rentUser: $enumDecodeNullable(_$SortOrderEnumMap, json['RENT_USER']),
          remarks: $enumDecodeNullable(_$SortOrderEnumMap, json['REMARKS']),
          useYn: $enumDecodeNullable(_$SortOrderEnumMap, json['USE_YN']),
          delYn: $enumDecodeNullable(_$SortOrderEnumMap, json['DEL_YN']),
          regDate: $enumDecodeNullable(_$SortOrderEnumMap, json['REG_DATE']),
          updDate: $enumDecodeNullable(_$SortOrderEnumMap, json['UPD_DATE']),
        );

Map<String, dynamic> _$BOOKASSETTBLCountOrderByAggregateInputToJson(
    BOOKASSETTBLCountOrderByAggregateInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('SEQ', _$SortOrderEnumMap[instance.seq]);
  writeNotNull('ASSET_NO', _$SortOrderEnumMap[instance.assetNo]);
  writeNotNull('BOOK_NM', _$SortOrderEnumMap[instance.bookNm]);
  writeNotNull('CNT', _$SortOrderEnumMap[instance.cnt]);
  writeNotNull('PUBLISHER', _$SortOrderEnumMap[instance.publisher]);
  writeNotNull('AMOUNT', _$SortOrderEnumMap[instance.amount]);
  writeNotNull('BUY_DATE', _$SortOrderEnumMap[instance.buyDate]);
  writeNotNull('MNG_DEPT', _$SortOrderEnumMap[instance.mngDept]);
  writeNotNull('RENT_YN', _$SortOrderEnumMap[instance.rentYn]);
  writeNotNull('RENT_USER', _$SortOrderEnumMap[instance.rentUser]);
  writeNotNull('REMARKS', _$SortOrderEnumMap[instance.remarks]);
  writeNotNull('USE_YN', _$SortOrderEnumMap[instance.useYn]);
  writeNotNull('DEL_YN', _$SortOrderEnumMap[instance.delYn]);
  writeNotNull('REG_DATE', _$SortOrderEnumMap[instance.regDate]);
  writeNotNull('UPD_DATE', _$SortOrderEnumMap[instance.updDate]);
  return val;
}

BOOKASSETTBLAvgOrderByAggregateInput
    _$BOOKASSETTBLAvgOrderByAggregateInputFromJson(Map<String, dynamic> json) =>
        BOOKASSETTBLAvgOrderByAggregateInput(
          seq: $enumDecodeNullable(_$SortOrderEnumMap, json['SEQ']),
          cnt: $enumDecodeNullable(_$SortOrderEnumMap, json['CNT']),
          amount: $enumDecodeNullable(_$SortOrderEnumMap, json['AMOUNT']),
        );

Map<String, dynamic> _$BOOKASSETTBLAvgOrderByAggregateInputToJson(
    BOOKASSETTBLAvgOrderByAggregateInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('SEQ', _$SortOrderEnumMap[instance.seq]);
  writeNotNull('CNT', _$SortOrderEnumMap[instance.cnt]);
  writeNotNull('AMOUNT', _$SortOrderEnumMap[instance.amount]);
  return val;
}

BOOKASSETTBLMaxOrderByAggregateInput
    _$BOOKASSETTBLMaxOrderByAggregateInputFromJson(Map<String, dynamic> json) =>
        BOOKASSETTBLMaxOrderByAggregateInput(
          seq: $enumDecodeNullable(_$SortOrderEnumMap, json['SEQ']),
          assetNo: $enumDecodeNullable(_$SortOrderEnumMap, json['ASSET_NO']),
          bookNm: $enumDecodeNullable(_$SortOrderEnumMap, json['BOOK_NM']),
          cnt: $enumDecodeNullable(_$SortOrderEnumMap, json['CNT']),
          publisher: $enumDecodeNullable(_$SortOrderEnumMap, json['PUBLISHER']),
          amount: $enumDecodeNullable(_$SortOrderEnumMap, json['AMOUNT']),
          buyDate: $enumDecodeNullable(_$SortOrderEnumMap, json['BUY_DATE']),
          mngDept: $enumDecodeNullable(_$SortOrderEnumMap, json['MNG_DEPT']),
          rentYn: $enumDecodeNullable(_$SortOrderEnumMap, json['RENT_YN']),
          rentUser: $enumDecodeNullable(_$SortOrderEnumMap, json['RENT_USER']),
          remarks: $enumDecodeNullable(_$SortOrderEnumMap, json['REMARKS']),
          useYn: $enumDecodeNullable(_$SortOrderEnumMap, json['USE_YN']),
          delYn: $enumDecodeNullable(_$SortOrderEnumMap, json['DEL_YN']),
          regDate: $enumDecodeNullable(_$SortOrderEnumMap, json['REG_DATE']),
          updDate: $enumDecodeNullable(_$SortOrderEnumMap, json['UPD_DATE']),
        );

Map<String, dynamic> _$BOOKASSETTBLMaxOrderByAggregateInputToJson(
    BOOKASSETTBLMaxOrderByAggregateInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('SEQ', _$SortOrderEnumMap[instance.seq]);
  writeNotNull('ASSET_NO', _$SortOrderEnumMap[instance.assetNo]);
  writeNotNull('BOOK_NM', _$SortOrderEnumMap[instance.bookNm]);
  writeNotNull('CNT', _$SortOrderEnumMap[instance.cnt]);
  writeNotNull('PUBLISHER', _$SortOrderEnumMap[instance.publisher]);
  writeNotNull('AMOUNT', _$SortOrderEnumMap[instance.amount]);
  writeNotNull('BUY_DATE', _$SortOrderEnumMap[instance.buyDate]);
  writeNotNull('MNG_DEPT', _$SortOrderEnumMap[instance.mngDept]);
  writeNotNull('RENT_YN', _$SortOrderEnumMap[instance.rentYn]);
  writeNotNull('RENT_USER', _$SortOrderEnumMap[instance.rentUser]);
  writeNotNull('REMARKS', _$SortOrderEnumMap[instance.remarks]);
  writeNotNull('USE_YN', _$SortOrderEnumMap[instance.useYn]);
  writeNotNull('DEL_YN', _$SortOrderEnumMap[instance.delYn]);
  writeNotNull('REG_DATE', _$SortOrderEnumMap[instance.regDate]);
  writeNotNull('UPD_DATE', _$SortOrderEnumMap[instance.updDate]);
  return val;
}

BOOKASSETTBLMinOrderByAggregateInput
    _$BOOKASSETTBLMinOrderByAggregateInputFromJson(Map<String, dynamic> json) =>
        BOOKASSETTBLMinOrderByAggregateInput(
          seq: $enumDecodeNullable(_$SortOrderEnumMap, json['SEQ']),
          assetNo: $enumDecodeNullable(_$SortOrderEnumMap, json['ASSET_NO']),
          bookNm: $enumDecodeNullable(_$SortOrderEnumMap, json['BOOK_NM']),
          cnt: $enumDecodeNullable(_$SortOrderEnumMap, json['CNT']),
          publisher: $enumDecodeNullable(_$SortOrderEnumMap, json['PUBLISHER']),
          amount: $enumDecodeNullable(_$SortOrderEnumMap, json['AMOUNT']),
          buyDate: $enumDecodeNullable(_$SortOrderEnumMap, json['BUY_DATE']),
          mngDept: $enumDecodeNullable(_$SortOrderEnumMap, json['MNG_DEPT']),
          rentYn: $enumDecodeNullable(_$SortOrderEnumMap, json['RENT_YN']),
          rentUser: $enumDecodeNullable(_$SortOrderEnumMap, json['RENT_USER']),
          remarks: $enumDecodeNullable(_$SortOrderEnumMap, json['REMARKS']),
          useYn: $enumDecodeNullable(_$SortOrderEnumMap, json['USE_YN']),
          delYn: $enumDecodeNullable(_$SortOrderEnumMap, json['DEL_YN']),
          regDate: $enumDecodeNullable(_$SortOrderEnumMap, json['REG_DATE']),
          updDate: $enumDecodeNullable(_$SortOrderEnumMap, json['UPD_DATE']),
        );

Map<String, dynamic> _$BOOKASSETTBLMinOrderByAggregateInputToJson(
    BOOKASSETTBLMinOrderByAggregateInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('SEQ', _$SortOrderEnumMap[instance.seq]);
  writeNotNull('ASSET_NO', _$SortOrderEnumMap[instance.assetNo]);
  writeNotNull('BOOK_NM', _$SortOrderEnumMap[instance.bookNm]);
  writeNotNull('CNT', _$SortOrderEnumMap[instance.cnt]);
  writeNotNull('PUBLISHER', _$SortOrderEnumMap[instance.publisher]);
  writeNotNull('AMOUNT', _$SortOrderEnumMap[instance.amount]);
  writeNotNull('BUY_DATE', _$SortOrderEnumMap[instance.buyDate]);
  writeNotNull('MNG_DEPT', _$SortOrderEnumMap[instance.mngDept]);
  writeNotNull('RENT_YN', _$SortOrderEnumMap[instance.rentYn]);
  writeNotNull('RENT_USER', _$SortOrderEnumMap[instance.rentUser]);
  writeNotNull('REMARKS', _$SortOrderEnumMap[instance.remarks]);
  writeNotNull('USE_YN', _$SortOrderEnumMap[instance.useYn]);
  writeNotNull('DEL_YN', _$SortOrderEnumMap[instance.delYn]);
  writeNotNull('REG_DATE', _$SortOrderEnumMap[instance.regDate]);
  writeNotNull('UPD_DATE', _$SortOrderEnumMap[instance.updDate]);
  return val;
}

BOOKASSETTBLSumOrderByAggregateInput
    _$BOOKASSETTBLSumOrderByAggregateInputFromJson(Map<String, dynamic> json) =>
        BOOKASSETTBLSumOrderByAggregateInput(
          seq: $enumDecodeNullable(_$SortOrderEnumMap, json['SEQ']),
          cnt: $enumDecodeNullable(_$SortOrderEnumMap, json['CNT']),
          amount: $enumDecodeNullable(_$SortOrderEnumMap, json['AMOUNT']),
        );

Map<String, dynamic> _$BOOKASSETTBLSumOrderByAggregateInputToJson(
    BOOKASSETTBLSumOrderByAggregateInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('SEQ', _$SortOrderEnumMap[instance.seq]);
  writeNotNull('CNT', _$SortOrderEnumMap[instance.cnt]);
  writeNotNull('AMOUNT', _$SortOrderEnumMap[instance.amount]);
  return val;
}

BigIntWithAggregatesFilter _$BigIntWithAggregatesFilterFromJson(
        Map<String, dynamic> json) =>
    BigIntWithAggregatesFilter(
      equals: json['equals'] == null
          ? null
          : BigInt.parse(json['equals'] as String),
      $in:
          (json['in'] as List<dynamic>?)?.map((e) => BigInt.parse(e as String)),
      notIn: (json['notIn'] as List<dynamic>?)
          ?.map((e) => BigInt.parse(e as String)),
      lt: json['lt'] == null ? null : BigInt.parse(json['lt'] as String),
      lte: json['lte'] == null ? null : BigInt.parse(json['lte'] as String),
      gt: json['gt'] == null ? null : BigInt.parse(json['gt'] as String),
      gte: json['gte'] == null ? null : BigInt.parse(json['gte'] as String),
      not: json['not'] == null
          ? null
          : NestedBigIntWithAggregatesFilter.fromJson(
              json['not'] as Map<String, dynamic>),
      $count: json['_count'] == null
          ? null
          : NestedIntFilter.fromJson(json['_count'] as Map<String, dynamic>),
      $avg: json['_avg'] == null
          ? null
          : NestedFloatFilter.fromJson(json['_avg'] as Map<String, dynamic>),
      $sum: json['_sum'] == null
          ? null
          : NestedBigIntFilter.fromJson(json['_sum'] as Map<String, dynamic>),
      $min: json['_min'] == null
          ? null
          : NestedBigIntFilter.fromJson(json['_min'] as Map<String, dynamic>),
      $max: json['_max'] == null
          ? null
          : NestedBigIntFilter.fromJson(json['_max'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$BigIntWithAggregatesFilterToJson(
    BigIntWithAggregatesFilter instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('equals', instance.equals?.toString());
  writeNotNull('in', instance.$in?.map((e) => e.toString()).toList());
  writeNotNull('notIn', instance.notIn?.map((e) => e.toString()).toList());
  writeNotNull('lt', instance.lt?.toString());
  writeNotNull('lte', instance.lte?.toString());
  writeNotNull('gt', instance.gt?.toString());
  writeNotNull('gte', instance.gte?.toString());
  writeNotNull('not', instance.not?.toJson());
  writeNotNull('_count', instance.$count?.toJson());
  writeNotNull('_avg', instance.$avg?.toJson());
  writeNotNull('_sum', instance.$sum?.toJson());
  writeNotNull('_min', instance.$min?.toJson());
  writeNotNull('_max', instance.$max?.toJson());
  return val;
}

StringWithAggregatesFilter _$StringWithAggregatesFilterFromJson(
        Map<String, dynamic> json) =>
    StringWithAggregatesFilter(
      equals: json['equals'] as String?,
      $in: (json['in'] as List<dynamic>?)?.map((e) => e as String),
      notIn: (json['notIn'] as List<dynamic>?)?.map((e) => e as String),
      lt: json['lt'] as String?,
      lte: json['lte'] as String?,
      gt: json['gt'] as String?,
      gte: json['gte'] as String?,
      contains: json['contains'] as String?,
      startsWith: json['startsWith'] as String?,
      endsWith: json['endsWith'] as String?,
      not: json['not'] == null
          ? null
          : NestedStringWithAggregatesFilter.fromJson(
              json['not'] as Map<String, dynamic>),
      $count: json['_count'] == null
          ? null
          : NestedIntFilter.fromJson(json['_count'] as Map<String, dynamic>),
      $min: json['_min'] == null
          ? null
          : NestedStringFilter.fromJson(json['_min'] as Map<String, dynamic>),
      $max: json['_max'] == null
          ? null
          : NestedStringFilter.fromJson(json['_max'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$StringWithAggregatesFilterToJson(
    StringWithAggregatesFilter instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('equals', instance.equals);
  writeNotNull('in', instance.$in?.toList());
  writeNotNull('notIn', instance.notIn?.toList());
  writeNotNull('lt', instance.lt);
  writeNotNull('lte', instance.lte);
  writeNotNull('gt', instance.gt);
  writeNotNull('gte', instance.gte);
  writeNotNull('contains', instance.contains);
  writeNotNull('startsWith', instance.startsWith);
  writeNotNull('endsWith', instance.endsWith);
  writeNotNull('not', instance.not?.toJson());
  writeNotNull('_count', instance.$count?.toJson());
  writeNotNull('_min', instance.$min?.toJson());
  writeNotNull('_max', instance.$max?.toJson());
  return val;
}

StringNullableWithAggregatesFilter _$StringNullableWithAggregatesFilterFromJson(
        Map<String, dynamic> json) =>
    StringNullableWithAggregatesFilter(
      equals: json['equals'] as String?,
      $in: (json['in'] as List<dynamic>?)?.map((e) => e as String),
      notIn: (json['notIn'] as List<dynamic>?)?.map((e) => e as String),
      lt: json['lt'] as String?,
      lte: json['lte'] as String?,
      gt: json['gt'] as String?,
      gte: json['gte'] as String?,
      contains: json['contains'] as String?,
      startsWith: json['startsWith'] as String?,
      endsWith: json['endsWith'] as String?,
      not: json['not'] == null
          ? null
          : NestedStringNullableWithAggregatesFilter.fromJson(
              json['not'] as Map<String, dynamic>),
      $count: json['_count'] == null
          ? null
          : NestedIntNullableFilter.fromJson(
              json['_count'] as Map<String, dynamic>),
      $min: json['_min'] == null
          ? null
          : NestedStringNullableFilter.fromJson(
              json['_min'] as Map<String, dynamic>),
      $max: json['_max'] == null
          ? null
          : NestedStringNullableFilter.fromJson(
              json['_max'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$StringNullableWithAggregatesFilterToJson(
    StringNullableWithAggregatesFilter instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('equals', instance.equals);
  writeNotNull('in', instance.$in?.toList());
  writeNotNull('notIn', instance.notIn?.toList());
  writeNotNull('lt', instance.lt);
  writeNotNull('lte', instance.lte);
  writeNotNull('gt', instance.gt);
  writeNotNull('gte', instance.gte);
  writeNotNull('contains', instance.contains);
  writeNotNull('startsWith', instance.startsWith);
  writeNotNull('endsWith', instance.endsWith);
  writeNotNull('not', instance.not?.toJson());
  writeNotNull('_count', instance.$count?.toJson());
  writeNotNull('_min', instance.$min?.toJson());
  writeNotNull('_max', instance.$max?.toJson());
  return val;
}

IntNullableWithAggregatesFilter _$IntNullableWithAggregatesFilterFromJson(
        Map<String, dynamic> json) =>
    IntNullableWithAggregatesFilter(
      equals: json['equals'] as int?,
      $in: (json['in'] as List<dynamic>?)?.map((e) => e as int),
      notIn: (json['notIn'] as List<dynamic>?)?.map((e) => e as int),
      lt: json['lt'] as int?,
      lte: json['lte'] as int?,
      gt: json['gt'] as int?,
      gte: json['gte'] as int?,
      not: json['not'] == null
          ? null
          : NestedIntNullableWithAggregatesFilter.fromJson(
              json['not'] as Map<String, dynamic>),
      $count: json['_count'] == null
          ? null
          : NestedIntNullableFilter.fromJson(
              json['_count'] as Map<String, dynamic>),
      $avg: json['_avg'] == null
          ? null
          : NestedFloatNullableFilter.fromJson(
              json['_avg'] as Map<String, dynamic>),
      $sum: json['_sum'] == null
          ? null
          : NestedIntNullableFilter.fromJson(
              json['_sum'] as Map<String, dynamic>),
      $min: json['_min'] == null
          ? null
          : NestedIntNullableFilter.fromJson(
              json['_min'] as Map<String, dynamic>),
      $max: json['_max'] == null
          ? null
          : NestedIntNullableFilter.fromJson(
              json['_max'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$IntNullableWithAggregatesFilterToJson(
    IntNullableWithAggregatesFilter instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('equals', instance.equals);
  writeNotNull('in', instance.$in?.toList());
  writeNotNull('notIn', instance.notIn?.toList());
  writeNotNull('lt', instance.lt);
  writeNotNull('lte', instance.lte);
  writeNotNull('gt', instance.gt);
  writeNotNull('gte', instance.gte);
  writeNotNull('not', instance.not?.toJson());
  writeNotNull('_count', instance.$count?.toJson());
  writeNotNull('_avg', instance.$avg?.toJson());
  writeNotNull('_sum', instance.$sum?.toJson());
  writeNotNull('_min', instance.$min?.toJson());
  writeNotNull('_max', instance.$max?.toJson());
  return val;
}

DateTimeWithAggregatesFilter _$DateTimeWithAggregatesFilterFromJson(
        Map<String, dynamic> json) =>
    DateTimeWithAggregatesFilter(
      equals: _$JsonConverterFromJson<String, DateTime>(
          json['equals'], const DateTimeJsonConverter().fromJson),
      $in: (json['in'] as List<dynamic>?)
          ?.map((e) => const DateTimeJsonConverter().fromJson(e as String)),
      notIn: (json['notIn'] as List<dynamic>?)
          ?.map((e) => const DateTimeJsonConverter().fromJson(e as String)),
      lt: _$JsonConverterFromJson<String, DateTime>(
          json['lt'], const DateTimeJsonConverter().fromJson),
      lte: _$JsonConverterFromJson<String, DateTime>(
          json['lte'], const DateTimeJsonConverter().fromJson),
      gt: _$JsonConverterFromJson<String, DateTime>(
          json['gt'], const DateTimeJsonConverter().fromJson),
      gte: _$JsonConverterFromJson<String, DateTime>(
          json['gte'], const DateTimeJsonConverter().fromJson),
      not: json['not'] == null
          ? null
          : NestedDateTimeWithAggregatesFilter.fromJson(
              json['not'] as Map<String, dynamic>),
      $count: json['_count'] == null
          ? null
          : NestedIntFilter.fromJson(json['_count'] as Map<String, dynamic>),
      $min: json['_min'] == null
          ? null
          : NestedDateTimeFilter.fromJson(json['_min'] as Map<String, dynamic>),
      $max: json['_max'] == null
          ? null
          : NestedDateTimeFilter.fromJson(json['_max'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$DateTimeWithAggregatesFilterToJson(
    DateTimeWithAggregatesFilter instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull(
      'equals',
      _$JsonConverterToJson<String, DateTime>(
          instance.equals, const DateTimeJsonConverter().toJson));
  writeNotNull(
      'in', instance.$in?.map(const DateTimeJsonConverter().toJson).toList());
  writeNotNull('notIn',
      instance.notIn?.map(const DateTimeJsonConverter().toJson).toList());
  writeNotNull(
      'lt',
      _$JsonConverterToJson<String, DateTime>(
          instance.lt, const DateTimeJsonConverter().toJson));
  writeNotNull(
      'lte',
      _$JsonConverterToJson<String, DateTime>(
          instance.lte, const DateTimeJsonConverter().toJson));
  writeNotNull(
      'gt',
      _$JsonConverterToJson<String, DateTime>(
          instance.gt, const DateTimeJsonConverter().toJson));
  writeNotNull(
      'gte',
      _$JsonConverterToJson<String, DateTime>(
          instance.gte, const DateTimeJsonConverter().toJson));
  writeNotNull('not', instance.not?.toJson());
  writeNotNull('_count', instance.$count?.toJson());
  writeNotNull('_min', instance.$min?.toJson());
  writeNotNull('_max', instance.$max?.toJson());
  return val;
}

DateTimeNullableWithAggregatesFilter
    _$DateTimeNullableWithAggregatesFilterFromJson(Map<String, dynamic> json) =>
        DateTimeNullableWithAggregatesFilter(
          equals: _$JsonConverterFromJson<String, DateTime>(
              json['equals'], const DateTimeJsonConverter().fromJson),
          $in: (json['in'] as List<dynamic>?)
              ?.map((e) => const DateTimeJsonConverter().fromJson(e as String)),
          notIn: (json['notIn'] as List<dynamic>?)
              ?.map((e) => const DateTimeJsonConverter().fromJson(e as String)),
          lt: _$JsonConverterFromJson<String, DateTime>(
              json['lt'], const DateTimeJsonConverter().fromJson),
          lte: _$JsonConverterFromJson<String, DateTime>(
              json['lte'], const DateTimeJsonConverter().fromJson),
          gt: _$JsonConverterFromJson<String, DateTime>(
              json['gt'], const DateTimeJsonConverter().fromJson),
          gte: _$JsonConverterFromJson<String, DateTime>(
              json['gte'], const DateTimeJsonConverter().fromJson),
          not: json['not'] == null
              ? null
              : NestedDateTimeNullableWithAggregatesFilter.fromJson(
                  json['not'] as Map<String, dynamic>),
          $count: json['_count'] == null
              ? null
              : NestedIntNullableFilter.fromJson(
                  json['_count'] as Map<String, dynamic>),
          $min: json['_min'] == null
              ? null
              : NestedDateTimeNullableFilter.fromJson(
                  json['_min'] as Map<String, dynamic>),
          $max: json['_max'] == null
              ? null
              : NestedDateTimeNullableFilter.fromJson(
                  json['_max'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$DateTimeNullableWithAggregatesFilterToJson(
    DateTimeNullableWithAggregatesFilter instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull(
      'equals',
      _$JsonConverterToJson<String, DateTime>(
          instance.equals, const DateTimeJsonConverter().toJson));
  writeNotNull(
      'in', instance.$in?.map(const DateTimeJsonConverter().toJson).toList());
  writeNotNull('notIn',
      instance.notIn?.map(const DateTimeJsonConverter().toJson).toList());
  writeNotNull(
      'lt',
      _$JsonConverterToJson<String, DateTime>(
          instance.lt, const DateTimeJsonConverter().toJson));
  writeNotNull(
      'lte',
      _$JsonConverterToJson<String, DateTime>(
          instance.lte, const DateTimeJsonConverter().toJson));
  writeNotNull(
      'gt',
      _$JsonConverterToJson<String, DateTime>(
          instance.gt, const DateTimeJsonConverter().toJson));
  writeNotNull(
      'gte',
      _$JsonConverterToJson<String, DateTime>(
          instance.gte, const DateTimeJsonConverter().toJson));
  writeNotNull('not', instance.not?.toJson());
  writeNotNull('_count', instance.$count?.toJson());
  writeNotNull('_min', instance.$min?.toJson());
  writeNotNull('_max', instance.$max?.toJson());
  return val;
}

STMNGRMSTCountOrderByAggregateInput
    _$STMNGRMSTCountOrderByAggregateInputFromJson(Map<String, dynamic> json) =>
        STMNGRMSTCountOrderByAggregateInput(
          mngrId: $enumDecodeNullable(_$SortOrderEnumMap, json['MNGR_ID']),
          mngrNm: $enumDecodeNullable(_$SortOrderEnumMap, json['MNGR_NM']),
          mngrPw: $enumDecodeNullable(_$SortOrderEnumMap, json['MNGR_PW']),
          grpCd: $enumDecodeNullable(_$SortOrderEnumMap, json['GRP_CD']),
          grade: $enumDecodeNullable(_$SortOrderEnumMap, json['GRADE']),
          permCd: $enumDecodeNullable(_$SortOrderEnumMap, json['PERM_CD']),
          acsYn: $enumDecodeNullable(_$SortOrderEnumMap, json['ACS_YN']),
          clph: $enumDecodeNullable(_$SortOrderEnumMap, json['CLPH']),
          empNo: $enumDecodeNullable(_$SortOrderEnumMap, json['EMP_NO']),
          joinDate: $enumDecodeNullable(_$SortOrderEnumMap, json['JOIN_DATE']),
          pwdWrongCnt:
              $enumDecodeNullable(_$SortOrderEnumMap, json['PWD_WRONG_CNT']),
          pwdWrongDate:
              $enumDecodeNullable(_$SortOrderEnumMap, json['PWD_WRONG_DATE']),
          lstLoginDate:
              $enumDecodeNullable(_$SortOrderEnumMap, json['LST_LOGIN_DATE']),
          flpth: $enumDecodeNullable(_$SortOrderEnumMap, json['FLPTH']),
          fileNm: $enumDecodeNullable(_$SortOrderEnumMap, json['FILE_NM']),
          regId: $enumDecodeNullable(_$SortOrderEnumMap, json['REG_ID']),
          regDate: $enumDecodeNullable(_$SortOrderEnumMap, json['REG_DATE']),
          editId: $enumDecodeNullable(_$SortOrderEnumMap, json['EDIT_ID']),
          editDate: $enumDecodeNullable(_$SortOrderEnumMap, json['EDIT_DATE']),
          delId: $enumDecodeNullable(_$SortOrderEnumMap, json['DEL_ID']),
          delDate: $enumDecodeNullable(_$SortOrderEnumMap, json['DEL_DATE']),
        );

Map<String, dynamic> _$STMNGRMSTCountOrderByAggregateInputToJson(
    STMNGRMSTCountOrderByAggregateInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('MNGR_ID', _$SortOrderEnumMap[instance.mngrId]);
  writeNotNull('MNGR_NM', _$SortOrderEnumMap[instance.mngrNm]);
  writeNotNull('MNGR_PW', _$SortOrderEnumMap[instance.mngrPw]);
  writeNotNull('GRP_CD', _$SortOrderEnumMap[instance.grpCd]);
  writeNotNull('GRADE', _$SortOrderEnumMap[instance.grade]);
  writeNotNull('PERM_CD', _$SortOrderEnumMap[instance.permCd]);
  writeNotNull('ACS_YN', _$SortOrderEnumMap[instance.acsYn]);
  writeNotNull('CLPH', _$SortOrderEnumMap[instance.clph]);
  writeNotNull('EMP_NO', _$SortOrderEnumMap[instance.empNo]);
  writeNotNull('JOIN_DATE', _$SortOrderEnumMap[instance.joinDate]);
  writeNotNull('PWD_WRONG_CNT', _$SortOrderEnumMap[instance.pwdWrongCnt]);
  writeNotNull('PWD_WRONG_DATE', _$SortOrderEnumMap[instance.pwdWrongDate]);
  writeNotNull('LST_LOGIN_DATE', _$SortOrderEnumMap[instance.lstLoginDate]);
  writeNotNull('FLPTH', _$SortOrderEnumMap[instance.flpth]);
  writeNotNull('FILE_NM', _$SortOrderEnumMap[instance.fileNm]);
  writeNotNull('REG_ID', _$SortOrderEnumMap[instance.regId]);
  writeNotNull('REG_DATE', _$SortOrderEnumMap[instance.regDate]);
  writeNotNull('EDIT_ID', _$SortOrderEnumMap[instance.editId]);
  writeNotNull('EDIT_DATE', _$SortOrderEnumMap[instance.editDate]);
  writeNotNull('DEL_ID', _$SortOrderEnumMap[instance.delId]);
  writeNotNull('DEL_DATE', _$SortOrderEnumMap[instance.delDate]);
  return val;
}

STMNGRMSTAvgOrderByAggregateInput _$STMNGRMSTAvgOrderByAggregateInputFromJson(
        Map<String, dynamic> json) =>
    STMNGRMSTAvgOrderByAggregateInput(
      pwdWrongCnt:
          $enumDecodeNullable(_$SortOrderEnumMap, json['PWD_WRONG_CNT']),
    );

Map<String, dynamic> _$STMNGRMSTAvgOrderByAggregateInputToJson(
    STMNGRMSTAvgOrderByAggregateInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('PWD_WRONG_CNT', _$SortOrderEnumMap[instance.pwdWrongCnt]);
  return val;
}

STMNGRMSTMaxOrderByAggregateInput _$STMNGRMSTMaxOrderByAggregateInputFromJson(
        Map<String, dynamic> json) =>
    STMNGRMSTMaxOrderByAggregateInput(
      mngrId: $enumDecodeNullable(_$SortOrderEnumMap, json['MNGR_ID']),
      mngrNm: $enumDecodeNullable(_$SortOrderEnumMap, json['MNGR_NM']),
      mngrPw: $enumDecodeNullable(_$SortOrderEnumMap, json['MNGR_PW']),
      grpCd: $enumDecodeNullable(_$SortOrderEnumMap, json['GRP_CD']),
      grade: $enumDecodeNullable(_$SortOrderEnumMap, json['GRADE']),
      permCd: $enumDecodeNullable(_$SortOrderEnumMap, json['PERM_CD']),
      acsYn: $enumDecodeNullable(_$SortOrderEnumMap, json['ACS_YN']),
      clph: $enumDecodeNullable(_$SortOrderEnumMap, json['CLPH']),
      empNo: $enumDecodeNullable(_$SortOrderEnumMap, json['EMP_NO']),
      joinDate: $enumDecodeNullable(_$SortOrderEnumMap, json['JOIN_DATE']),
      pwdWrongCnt:
          $enumDecodeNullable(_$SortOrderEnumMap, json['PWD_WRONG_CNT']),
      pwdWrongDate:
          $enumDecodeNullable(_$SortOrderEnumMap, json['PWD_WRONG_DATE']),
      lstLoginDate:
          $enumDecodeNullable(_$SortOrderEnumMap, json['LST_LOGIN_DATE']),
      flpth: $enumDecodeNullable(_$SortOrderEnumMap, json['FLPTH']),
      fileNm: $enumDecodeNullable(_$SortOrderEnumMap, json['FILE_NM']),
      regId: $enumDecodeNullable(_$SortOrderEnumMap, json['REG_ID']),
      regDate: $enumDecodeNullable(_$SortOrderEnumMap, json['REG_DATE']),
      editId: $enumDecodeNullable(_$SortOrderEnumMap, json['EDIT_ID']),
      editDate: $enumDecodeNullable(_$SortOrderEnumMap, json['EDIT_DATE']),
      delId: $enumDecodeNullable(_$SortOrderEnumMap, json['DEL_ID']),
      delDate: $enumDecodeNullable(_$SortOrderEnumMap, json['DEL_DATE']),
    );

Map<String, dynamic> _$STMNGRMSTMaxOrderByAggregateInputToJson(
    STMNGRMSTMaxOrderByAggregateInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('MNGR_ID', _$SortOrderEnumMap[instance.mngrId]);
  writeNotNull('MNGR_NM', _$SortOrderEnumMap[instance.mngrNm]);
  writeNotNull('MNGR_PW', _$SortOrderEnumMap[instance.mngrPw]);
  writeNotNull('GRP_CD', _$SortOrderEnumMap[instance.grpCd]);
  writeNotNull('GRADE', _$SortOrderEnumMap[instance.grade]);
  writeNotNull('PERM_CD', _$SortOrderEnumMap[instance.permCd]);
  writeNotNull('ACS_YN', _$SortOrderEnumMap[instance.acsYn]);
  writeNotNull('CLPH', _$SortOrderEnumMap[instance.clph]);
  writeNotNull('EMP_NO', _$SortOrderEnumMap[instance.empNo]);
  writeNotNull('JOIN_DATE', _$SortOrderEnumMap[instance.joinDate]);
  writeNotNull('PWD_WRONG_CNT', _$SortOrderEnumMap[instance.pwdWrongCnt]);
  writeNotNull('PWD_WRONG_DATE', _$SortOrderEnumMap[instance.pwdWrongDate]);
  writeNotNull('LST_LOGIN_DATE', _$SortOrderEnumMap[instance.lstLoginDate]);
  writeNotNull('FLPTH', _$SortOrderEnumMap[instance.flpth]);
  writeNotNull('FILE_NM', _$SortOrderEnumMap[instance.fileNm]);
  writeNotNull('REG_ID', _$SortOrderEnumMap[instance.regId]);
  writeNotNull('REG_DATE', _$SortOrderEnumMap[instance.regDate]);
  writeNotNull('EDIT_ID', _$SortOrderEnumMap[instance.editId]);
  writeNotNull('EDIT_DATE', _$SortOrderEnumMap[instance.editDate]);
  writeNotNull('DEL_ID', _$SortOrderEnumMap[instance.delId]);
  writeNotNull('DEL_DATE', _$SortOrderEnumMap[instance.delDate]);
  return val;
}

STMNGRMSTMinOrderByAggregateInput _$STMNGRMSTMinOrderByAggregateInputFromJson(
        Map<String, dynamic> json) =>
    STMNGRMSTMinOrderByAggregateInput(
      mngrId: $enumDecodeNullable(_$SortOrderEnumMap, json['MNGR_ID']),
      mngrNm: $enumDecodeNullable(_$SortOrderEnumMap, json['MNGR_NM']),
      mngrPw: $enumDecodeNullable(_$SortOrderEnumMap, json['MNGR_PW']),
      grpCd: $enumDecodeNullable(_$SortOrderEnumMap, json['GRP_CD']),
      grade: $enumDecodeNullable(_$SortOrderEnumMap, json['GRADE']),
      permCd: $enumDecodeNullable(_$SortOrderEnumMap, json['PERM_CD']),
      acsYn: $enumDecodeNullable(_$SortOrderEnumMap, json['ACS_YN']),
      clph: $enumDecodeNullable(_$SortOrderEnumMap, json['CLPH']),
      empNo: $enumDecodeNullable(_$SortOrderEnumMap, json['EMP_NO']),
      joinDate: $enumDecodeNullable(_$SortOrderEnumMap, json['JOIN_DATE']),
      pwdWrongCnt:
          $enumDecodeNullable(_$SortOrderEnumMap, json['PWD_WRONG_CNT']),
      pwdWrongDate:
          $enumDecodeNullable(_$SortOrderEnumMap, json['PWD_WRONG_DATE']),
      lstLoginDate:
          $enumDecodeNullable(_$SortOrderEnumMap, json['LST_LOGIN_DATE']),
      flpth: $enumDecodeNullable(_$SortOrderEnumMap, json['FLPTH']),
      fileNm: $enumDecodeNullable(_$SortOrderEnumMap, json['FILE_NM']),
      regId: $enumDecodeNullable(_$SortOrderEnumMap, json['REG_ID']),
      regDate: $enumDecodeNullable(_$SortOrderEnumMap, json['REG_DATE']),
      editId: $enumDecodeNullable(_$SortOrderEnumMap, json['EDIT_ID']),
      editDate: $enumDecodeNullable(_$SortOrderEnumMap, json['EDIT_DATE']),
      delId: $enumDecodeNullable(_$SortOrderEnumMap, json['DEL_ID']),
      delDate: $enumDecodeNullable(_$SortOrderEnumMap, json['DEL_DATE']),
    );

Map<String, dynamic> _$STMNGRMSTMinOrderByAggregateInputToJson(
    STMNGRMSTMinOrderByAggregateInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('MNGR_ID', _$SortOrderEnumMap[instance.mngrId]);
  writeNotNull('MNGR_NM', _$SortOrderEnumMap[instance.mngrNm]);
  writeNotNull('MNGR_PW', _$SortOrderEnumMap[instance.mngrPw]);
  writeNotNull('GRP_CD', _$SortOrderEnumMap[instance.grpCd]);
  writeNotNull('GRADE', _$SortOrderEnumMap[instance.grade]);
  writeNotNull('PERM_CD', _$SortOrderEnumMap[instance.permCd]);
  writeNotNull('ACS_YN', _$SortOrderEnumMap[instance.acsYn]);
  writeNotNull('CLPH', _$SortOrderEnumMap[instance.clph]);
  writeNotNull('EMP_NO', _$SortOrderEnumMap[instance.empNo]);
  writeNotNull('JOIN_DATE', _$SortOrderEnumMap[instance.joinDate]);
  writeNotNull('PWD_WRONG_CNT', _$SortOrderEnumMap[instance.pwdWrongCnt]);
  writeNotNull('PWD_WRONG_DATE', _$SortOrderEnumMap[instance.pwdWrongDate]);
  writeNotNull('LST_LOGIN_DATE', _$SortOrderEnumMap[instance.lstLoginDate]);
  writeNotNull('FLPTH', _$SortOrderEnumMap[instance.flpth]);
  writeNotNull('FILE_NM', _$SortOrderEnumMap[instance.fileNm]);
  writeNotNull('REG_ID', _$SortOrderEnumMap[instance.regId]);
  writeNotNull('REG_DATE', _$SortOrderEnumMap[instance.regDate]);
  writeNotNull('EDIT_ID', _$SortOrderEnumMap[instance.editId]);
  writeNotNull('EDIT_DATE', _$SortOrderEnumMap[instance.editDate]);
  writeNotNull('DEL_ID', _$SortOrderEnumMap[instance.delId]);
  writeNotNull('DEL_DATE', _$SortOrderEnumMap[instance.delDate]);
  return val;
}

STMNGRMSTSumOrderByAggregateInput _$STMNGRMSTSumOrderByAggregateInputFromJson(
        Map<String, dynamic> json) =>
    STMNGRMSTSumOrderByAggregateInput(
      pwdWrongCnt:
          $enumDecodeNullable(_$SortOrderEnumMap, json['PWD_WRONG_CNT']),
    );

Map<String, dynamic> _$STMNGRMSTSumOrderByAggregateInputToJson(
    STMNGRMSTSumOrderByAggregateInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('PWD_WRONG_CNT', _$SortOrderEnumMap[instance.pwdWrongCnt]);
  return val;
}

BigIntFieldUpdateOperationsInput _$BigIntFieldUpdateOperationsInputFromJson(
        Map<String, dynamic> json) =>
    BigIntFieldUpdateOperationsInput(
      set: json['set'] == null ? null : BigInt.parse(json['set'] as String),
      increment: json['increment'] == null
          ? null
          : BigInt.parse(json['increment'] as String),
      decrement: json['decrement'] == null
          ? null
          : BigInt.parse(json['decrement'] as String),
      multiply: json['multiply'] == null
          ? null
          : BigInt.parse(json['multiply'] as String),
      divide: json['divide'] == null
          ? null
          : BigInt.parse(json['divide'] as String),
    );

Map<String, dynamic> _$BigIntFieldUpdateOperationsInputToJson(
    BigIntFieldUpdateOperationsInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('set', instance.set?.toString());
  writeNotNull('increment', instance.increment?.toString());
  writeNotNull('decrement', instance.decrement?.toString());
  writeNotNull('multiply', instance.multiply?.toString());
  writeNotNull('divide', instance.divide?.toString());
  return val;
}

StringFieldUpdateOperationsInput _$StringFieldUpdateOperationsInputFromJson(
        Map<String, dynamic> json) =>
    StringFieldUpdateOperationsInput(
      set: json['set'] as String?,
    );

Map<String, dynamic> _$StringFieldUpdateOperationsInputToJson(
    StringFieldUpdateOperationsInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('set', instance.set);
  return val;
}

NullableStringFieldUpdateOperationsInput
    _$NullableStringFieldUpdateOperationsInputFromJson(
            Map<String, dynamic> json) =>
        NullableStringFieldUpdateOperationsInput(
          set: json['set'] as String?,
        );

Map<String, dynamic> _$NullableStringFieldUpdateOperationsInputToJson(
    NullableStringFieldUpdateOperationsInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('set', instance.set);
  return val;
}

NullableIntFieldUpdateOperationsInput
    _$NullableIntFieldUpdateOperationsInputFromJson(
            Map<String, dynamic> json) =>
        NullableIntFieldUpdateOperationsInput(
          set: json['set'] as int?,
          increment: json['increment'] as int?,
          decrement: json['decrement'] as int?,
          multiply: json['multiply'] as int?,
          divide: json['divide'] as int?,
        );

Map<String, dynamic> _$NullableIntFieldUpdateOperationsInputToJson(
    NullableIntFieldUpdateOperationsInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('set', instance.set);
  writeNotNull('increment', instance.increment);
  writeNotNull('decrement', instance.decrement);
  writeNotNull('multiply', instance.multiply);
  writeNotNull('divide', instance.divide);
  return val;
}

DateTimeFieldUpdateOperationsInput _$DateTimeFieldUpdateOperationsInputFromJson(
        Map<String, dynamic> json) =>
    DateTimeFieldUpdateOperationsInput(
      set: _$JsonConverterFromJson<String, DateTime>(
          json['set'], const DateTimeJsonConverter().fromJson),
    );

Map<String, dynamic> _$DateTimeFieldUpdateOperationsInputToJson(
    DateTimeFieldUpdateOperationsInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull(
      'set',
      _$JsonConverterToJson<String, DateTime>(
          instance.set, const DateTimeJsonConverter().toJson));
  return val;
}

NullableDateTimeFieldUpdateOperationsInput
    _$NullableDateTimeFieldUpdateOperationsInputFromJson(
            Map<String, dynamic> json) =>
        NullableDateTimeFieldUpdateOperationsInput(
          set: _$JsonConverterFromJson<String, DateTime>(
              json['set'], const DateTimeJsonConverter().fromJson),
        );

Map<String, dynamic> _$NullableDateTimeFieldUpdateOperationsInputToJson(
    NullableDateTimeFieldUpdateOperationsInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull(
      'set',
      _$JsonConverterToJson<String, DateTime>(
          instance.set, const DateTimeJsonConverter().toJson));
  return val;
}

NestedBigIntFilter _$NestedBigIntFilterFromJson(Map<String, dynamic> json) =>
    NestedBigIntFilter(
      equals: json['equals'] == null
          ? null
          : BigInt.parse(json['equals'] as String),
      $in:
          (json['in'] as List<dynamic>?)?.map((e) => BigInt.parse(e as String)),
      notIn: (json['notIn'] as List<dynamic>?)
          ?.map((e) => BigInt.parse(e as String)),
      lt: json['lt'] == null ? null : BigInt.parse(json['lt'] as String),
      lte: json['lte'] == null ? null : BigInt.parse(json['lte'] as String),
      gt: json['gt'] == null ? null : BigInt.parse(json['gt'] as String),
      gte: json['gte'] == null ? null : BigInt.parse(json['gte'] as String),
      not: json['not'] == null
          ? null
          : NestedBigIntFilter.fromJson(json['not'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$NestedBigIntFilterToJson(NestedBigIntFilter instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('equals', instance.equals?.toString());
  writeNotNull('in', instance.$in?.map((e) => e.toString()).toList());
  writeNotNull('notIn', instance.notIn?.map((e) => e.toString()).toList());
  writeNotNull('lt', instance.lt?.toString());
  writeNotNull('lte', instance.lte?.toString());
  writeNotNull('gt', instance.gt?.toString());
  writeNotNull('gte', instance.gte?.toString());
  writeNotNull('not', instance.not?.toJson());
  return val;
}

NestedStringFilter _$NestedStringFilterFromJson(Map<String, dynamic> json) =>
    NestedStringFilter(
      equals: json['equals'] as String?,
      $in: (json['in'] as List<dynamic>?)?.map((e) => e as String),
      notIn: (json['notIn'] as List<dynamic>?)?.map((e) => e as String),
      lt: json['lt'] as String?,
      lte: json['lte'] as String?,
      gt: json['gt'] as String?,
      gte: json['gte'] as String?,
      contains: json['contains'] as String?,
      startsWith: json['startsWith'] as String?,
      endsWith: json['endsWith'] as String?,
      not: json['not'] == null
          ? null
          : NestedStringFilter.fromJson(json['not'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$NestedStringFilterToJson(NestedStringFilter instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('equals', instance.equals);
  writeNotNull('in', instance.$in?.toList());
  writeNotNull('notIn', instance.notIn?.toList());
  writeNotNull('lt', instance.lt);
  writeNotNull('lte', instance.lte);
  writeNotNull('gt', instance.gt);
  writeNotNull('gte', instance.gte);
  writeNotNull('contains', instance.contains);
  writeNotNull('startsWith', instance.startsWith);
  writeNotNull('endsWith', instance.endsWith);
  writeNotNull('not', instance.not?.toJson());
  return val;
}

NestedStringNullableFilter _$NestedStringNullableFilterFromJson(
        Map<String, dynamic> json) =>
    NestedStringNullableFilter(
      equals: json['equals'] as String?,
      $in: (json['in'] as List<dynamic>?)?.map((e) => e as String),
      notIn: (json['notIn'] as List<dynamic>?)?.map((e) => e as String),
      lt: json['lt'] as String?,
      lte: json['lte'] as String?,
      gt: json['gt'] as String?,
      gte: json['gte'] as String?,
      contains: json['contains'] as String?,
      startsWith: json['startsWith'] as String?,
      endsWith: json['endsWith'] as String?,
      not: json['not'] == null
          ? null
          : NestedStringNullableFilter.fromJson(
              json['not'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$NestedStringNullableFilterToJson(
    NestedStringNullableFilter instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('equals', instance.equals);
  writeNotNull('in', instance.$in?.toList());
  writeNotNull('notIn', instance.notIn?.toList());
  writeNotNull('lt', instance.lt);
  writeNotNull('lte', instance.lte);
  writeNotNull('gt', instance.gt);
  writeNotNull('gte', instance.gte);
  writeNotNull('contains', instance.contains);
  writeNotNull('startsWith', instance.startsWith);
  writeNotNull('endsWith', instance.endsWith);
  writeNotNull('not', instance.not?.toJson());
  return val;
}

NestedIntNullableFilter _$NestedIntNullableFilterFromJson(
        Map<String, dynamic> json) =>
    NestedIntNullableFilter(
      equals: json['equals'] as int?,
      $in: (json['in'] as List<dynamic>?)?.map((e) => e as int),
      notIn: (json['notIn'] as List<dynamic>?)?.map((e) => e as int),
      lt: json['lt'] as int?,
      lte: json['lte'] as int?,
      gt: json['gt'] as int?,
      gte: json['gte'] as int?,
      not: json['not'] == null
          ? null
          : NestedIntNullableFilter.fromJson(
              json['not'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$NestedIntNullableFilterToJson(
    NestedIntNullableFilter instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('equals', instance.equals);
  writeNotNull('in', instance.$in?.toList());
  writeNotNull('notIn', instance.notIn?.toList());
  writeNotNull('lt', instance.lt);
  writeNotNull('lte', instance.lte);
  writeNotNull('gt', instance.gt);
  writeNotNull('gte', instance.gte);
  writeNotNull('not', instance.not?.toJson());
  return val;
}

NestedDateTimeFilter _$NestedDateTimeFilterFromJson(
        Map<String, dynamic> json) =>
    NestedDateTimeFilter(
      equals: _$JsonConverterFromJson<String, DateTime>(
          json['equals'], const DateTimeJsonConverter().fromJson),
      $in: (json['in'] as List<dynamic>?)
          ?.map((e) => const DateTimeJsonConverter().fromJson(e as String)),
      notIn: (json['notIn'] as List<dynamic>?)
          ?.map((e) => const DateTimeJsonConverter().fromJson(e as String)),
      lt: _$JsonConverterFromJson<String, DateTime>(
          json['lt'], const DateTimeJsonConverter().fromJson),
      lte: _$JsonConverterFromJson<String, DateTime>(
          json['lte'], const DateTimeJsonConverter().fromJson),
      gt: _$JsonConverterFromJson<String, DateTime>(
          json['gt'], const DateTimeJsonConverter().fromJson),
      gte: _$JsonConverterFromJson<String, DateTime>(
          json['gte'], const DateTimeJsonConverter().fromJson),
      not: json['not'] == null
          ? null
          : NestedDateTimeFilter.fromJson(json['not'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$NestedDateTimeFilterToJson(
    NestedDateTimeFilter instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull(
      'equals',
      _$JsonConverterToJson<String, DateTime>(
          instance.equals, const DateTimeJsonConverter().toJson));
  writeNotNull(
      'in', instance.$in?.map(const DateTimeJsonConverter().toJson).toList());
  writeNotNull('notIn',
      instance.notIn?.map(const DateTimeJsonConverter().toJson).toList());
  writeNotNull(
      'lt',
      _$JsonConverterToJson<String, DateTime>(
          instance.lt, const DateTimeJsonConverter().toJson));
  writeNotNull(
      'lte',
      _$JsonConverterToJson<String, DateTime>(
          instance.lte, const DateTimeJsonConverter().toJson));
  writeNotNull(
      'gt',
      _$JsonConverterToJson<String, DateTime>(
          instance.gt, const DateTimeJsonConverter().toJson));
  writeNotNull(
      'gte',
      _$JsonConverterToJson<String, DateTime>(
          instance.gte, const DateTimeJsonConverter().toJson));
  writeNotNull('not', instance.not?.toJson());
  return val;
}

NestedDateTimeNullableFilter _$NestedDateTimeNullableFilterFromJson(
        Map<String, dynamic> json) =>
    NestedDateTimeNullableFilter(
      equals: _$JsonConverterFromJson<String, DateTime>(
          json['equals'], const DateTimeJsonConverter().fromJson),
      $in: (json['in'] as List<dynamic>?)
          ?.map((e) => const DateTimeJsonConverter().fromJson(e as String)),
      notIn: (json['notIn'] as List<dynamic>?)
          ?.map((e) => const DateTimeJsonConverter().fromJson(e as String)),
      lt: _$JsonConverterFromJson<String, DateTime>(
          json['lt'], const DateTimeJsonConverter().fromJson),
      lte: _$JsonConverterFromJson<String, DateTime>(
          json['lte'], const DateTimeJsonConverter().fromJson),
      gt: _$JsonConverterFromJson<String, DateTime>(
          json['gt'], const DateTimeJsonConverter().fromJson),
      gte: _$JsonConverterFromJson<String, DateTime>(
          json['gte'], const DateTimeJsonConverter().fromJson),
      not: json['not'] == null
          ? null
          : NestedDateTimeNullableFilter.fromJson(
              json['not'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$NestedDateTimeNullableFilterToJson(
    NestedDateTimeNullableFilter instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull(
      'equals',
      _$JsonConverterToJson<String, DateTime>(
          instance.equals, const DateTimeJsonConverter().toJson));
  writeNotNull(
      'in', instance.$in?.map(const DateTimeJsonConverter().toJson).toList());
  writeNotNull('notIn',
      instance.notIn?.map(const DateTimeJsonConverter().toJson).toList());
  writeNotNull(
      'lt',
      _$JsonConverterToJson<String, DateTime>(
          instance.lt, const DateTimeJsonConverter().toJson));
  writeNotNull(
      'lte',
      _$JsonConverterToJson<String, DateTime>(
          instance.lte, const DateTimeJsonConverter().toJson));
  writeNotNull(
      'gt',
      _$JsonConverterToJson<String, DateTime>(
          instance.gt, const DateTimeJsonConverter().toJson));
  writeNotNull(
      'gte',
      _$JsonConverterToJson<String, DateTime>(
          instance.gte, const DateTimeJsonConverter().toJson));
  writeNotNull('not', instance.not?.toJson());
  return val;
}

NestedBigIntWithAggregatesFilter _$NestedBigIntWithAggregatesFilterFromJson(
        Map<String, dynamic> json) =>
    NestedBigIntWithAggregatesFilter(
      equals: json['equals'] == null
          ? null
          : BigInt.parse(json['equals'] as String),
      $in:
          (json['in'] as List<dynamic>?)?.map((e) => BigInt.parse(e as String)),
      notIn: (json['notIn'] as List<dynamic>?)
          ?.map((e) => BigInt.parse(e as String)),
      lt: json['lt'] == null ? null : BigInt.parse(json['lt'] as String),
      lte: json['lte'] == null ? null : BigInt.parse(json['lte'] as String),
      gt: json['gt'] == null ? null : BigInt.parse(json['gt'] as String),
      gte: json['gte'] == null ? null : BigInt.parse(json['gte'] as String),
      not: json['not'] == null
          ? null
          : NestedBigIntWithAggregatesFilter.fromJson(
              json['not'] as Map<String, dynamic>),
      $count: json['_count'] == null
          ? null
          : NestedIntFilter.fromJson(json['_count'] as Map<String, dynamic>),
      $avg: json['_avg'] == null
          ? null
          : NestedFloatFilter.fromJson(json['_avg'] as Map<String, dynamic>),
      $sum: json['_sum'] == null
          ? null
          : NestedBigIntFilter.fromJson(json['_sum'] as Map<String, dynamic>),
      $min: json['_min'] == null
          ? null
          : NestedBigIntFilter.fromJson(json['_min'] as Map<String, dynamic>),
      $max: json['_max'] == null
          ? null
          : NestedBigIntFilter.fromJson(json['_max'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$NestedBigIntWithAggregatesFilterToJson(
    NestedBigIntWithAggregatesFilter instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('equals', instance.equals?.toString());
  writeNotNull('in', instance.$in?.map((e) => e.toString()).toList());
  writeNotNull('notIn', instance.notIn?.map((e) => e.toString()).toList());
  writeNotNull('lt', instance.lt?.toString());
  writeNotNull('lte', instance.lte?.toString());
  writeNotNull('gt', instance.gt?.toString());
  writeNotNull('gte', instance.gte?.toString());
  writeNotNull('not', instance.not?.toJson());
  writeNotNull('_count', instance.$count?.toJson());
  writeNotNull('_avg', instance.$avg?.toJson());
  writeNotNull('_sum', instance.$sum?.toJson());
  writeNotNull('_min', instance.$min?.toJson());
  writeNotNull('_max', instance.$max?.toJson());
  return val;
}

NestedIntFilter _$NestedIntFilterFromJson(Map<String, dynamic> json) =>
    NestedIntFilter(
      equals: json['equals'] as int?,
      $in: (json['in'] as List<dynamic>?)?.map((e) => e as int),
      notIn: (json['notIn'] as List<dynamic>?)?.map((e) => e as int),
      lt: json['lt'] as int?,
      lte: json['lte'] as int?,
      gt: json['gt'] as int?,
      gte: json['gte'] as int?,
      not: json['not'] == null
          ? null
          : NestedIntFilter.fromJson(json['not'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$NestedIntFilterToJson(NestedIntFilter instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('equals', instance.equals);
  writeNotNull('in', instance.$in?.toList());
  writeNotNull('notIn', instance.notIn?.toList());
  writeNotNull('lt', instance.lt);
  writeNotNull('lte', instance.lte);
  writeNotNull('gt', instance.gt);
  writeNotNull('gte', instance.gte);
  writeNotNull('not', instance.not?.toJson());
  return val;
}

NestedFloatFilter _$NestedFloatFilterFromJson(Map<String, dynamic> json) =>
    NestedFloatFilter(
      equals: (json['equals'] as num?)?.toDouble(),
      $in: (json['in'] as List<dynamic>?)?.map((e) => (e as num).toDouble()),
      notIn:
          (json['notIn'] as List<dynamic>?)?.map((e) => (e as num).toDouble()),
      lt: (json['lt'] as num?)?.toDouble(),
      lte: (json['lte'] as num?)?.toDouble(),
      gt: (json['gt'] as num?)?.toDouble(),
      gte: (json['gte'] as num?)?.toDouble(),
      not: json['not'] == null
          ? null
          : NestedFloatFilter.fromJson(json['not'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$NestedFloatFilterToJson(NestedFloatFilter instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('equals', instance.equals);
  writeNotNull('in', instance.$in?.toList());
  writeNotNull('notIn', instance.notIn?.toList());
  writeNotNull('lt', instance.lt);
  writeNotNull('lte', instance.lte);
  writeNotNull('gt', instance.gt);
  writeNotNull('gte', instance.gte);
  writeNotNull('not', instance.not?.toJson());
  return val;
}

NestedStringWithAggregatesFilter _$NestedStringWithAggregatesFilterFromJson(
        Map<String, dynamic> json) =>
    NestedStringWithAggregatesFilter(
      equals: json['equals'] as String?,
      $in: (json['in'] as List<dynamic>?)?.map((e) => e as String),
      notIn: (json['notIn'] as List<dynamic>?)?.map((e) => e as String),
      lt: json['lt'] as String?,
      lte: json['lte'] as String?,
      gt: json['gt'] as String?,
      gte: json['gte'] as String?,
      contains: json['contains'] as String?,
      startsWith: json['startsWith'] as String?,
      endsWith: json['endsWith'] as String?,
      not: json['not'] == null
          ? null
          : NestedStringWithAggregatesFilter.fromJson(
              json['not'] as Map<String, dynamic>),
      $count: json['_count'] == null
          ? null
          : NestedIntFilter.fromJson(json['_count'] as Map<String, dynamic>),
      $min: json['_min'] == null
          ? null
          : NestedStringFilter.fromJson(json['_min'] as Map<String, dynamic>),
      $max: json['_max'] == null
          ? null
          : NestedStringFilter.fromJson(json['_max'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$NestedStringWithAggregatesFilterToJson(
    NestedStringWithAggregatesFilter instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('equals', instance.equals);
  writeNotNull('in', instance.$in?.toList());
  writeNotNull('notIn', instance.notIn?.toList());
  writeNotNull('lt', instance.lt);
  writeNotNull('lte', instance.lte);
  writeNotNull('gt', instance.gt);
  writeNotNull('gte', instance.gte);
  writeNotNull('contains', instance.contains);
  writeNotNull('startsWith', instance.startsWith);
  writeNotNull('endsWith', instance.endsWith);
  writeNotNull('not', instance.not?.toJson());
  writeNotNull('_count', instance.$count?.toJson());
  writeNotNull('_min', instance.$min?.toJson());
  writeNotNull('_max', instance.$max?.toJson());
  return val;
}

NestedStringNullableWithAggregatesFilter
    _$NestedStringNullableWithAggregatesFilterFromJson(
            Map<String, dynamic> json) =>
        NestedStringNullableWithAggregatesFilter(
          equals: json['equals'] as String?,
          $in: (json['in'] as List<dynamic>?)?.map((e) => e as String),
          notIn: (json['notIn'] as List<dynamic>?)?.map((e) => e as String),
          lt: json['lt'] as String?,
          lte: json['lte'] as String?,
          gt: json['gt'] as String?,
          gte: json['gte'] as String?,
          contains: json['contains'] as String?,
          startsWith: json['startsWith'] as String?,
          endsWith: json['endsWith'] as String?,
          not: json['not'] == null
              ? null
              : NestedStringNullableWithAggregatesFilter.fromJson(
                  json['not'] as Map<String, dynamic>),
          $count: json['_count'] == null
              ? null
              : NestedIntNullableFilter.fromJson(
                  json['_count'] as Map<String, dynamic>),
          $min: json['_min'] == null
              ? null
              : NestedStringNullableFilter.fromJson(
                  json['_min'] as Map<String, dynamic>),
          $max: json['_max'] == null
              ? null
              : NestedStringNullableFilter.fromJson(
                  json['_max'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$NestedStringNullableWithAggregatesFilterToJson(
    NestedStringNullableWithAggregatesFilter instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('equals', instance.equals);
  writeNotNull('in', instance.$in?.toList());
  writeNotNull('notIn', instance.notIn?.toList());
  writeNotNull('lt', instance.lt);
  writeNotNull('lte', instance.lte);
  writeNotNull('gt', instance.gt);
  writeNotNull('gte', instance.gte);
  writeNotNull('contains', instance.contains);
  writeNotNull('startsWith', instance.startsWith);
  writeNotNull('endsWith', instance.endsWith);
  writeNotNull('not', instance.not?.toJson());
  writeNotNull('_count', instance.$count?.toJson());
  writeNotNull('_min', instance.$min?.toJson());
  writeNotNull('_max', instance.$max?.toJson());
  return val;
}

NestedIntNullableWithAggregatesFilter
    _$NestedIntNullableWithAggregatesFilterFromJson(
            Map<String, dynamic> json) =>
        NestedIntNullableWithAggregatesFilter(
          equals: json['equals'] as int?,
          $in: (json['in'] as List<dynamic>?)?.map((e) => e as int),
          notIn: (json['notIn'] as List<dynamic>?)?.map((e) => e as int),
          lt: json['lt'] as int?,
          lte: json['lte'] as int?,
          gt: json['gt'] as int?,
          gte: json['gte'] as int?,
          not: json['not'] == null
              ? null
              : NestedIntNullableWithAggregatesFilter.fromJson(
                  json['not'] as Map<String, dynamic>),
          $count: json['_count'] == null
              ? null
              : NestedIntNullableFilter.fromJson(
                  json['_count'] as Map<String, dynamic>),
          $avg: json['_avg'] == null
              ? null
              : NestedFloatNullableFilter.fromJson(
                  json['_avg'] as Map<String, dynamic>),
          $sum: json['_sum'] == null
              ? null
              : NestedIntNullableFilter.fromJson(
                  json['_sum'] as Map<String, dynamic>),
          $min: json['_min'] == null
              ? null
              : NestedIntNullableFilter.fromJson(
                  json['_min'] as Map<String, dynamic>),
          $max: json['_max'] == null
              ? null
              : NestedIntNullableFilter.fromJson(
                  json['_max'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$NestedIntNullableWithAggregatesFilterToJson(
    NestedIntNullableWithAggregatesFilter instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('equals', instance.equals);
  writeNotNull('in', instance.$in?.toList());
  writeNotNull('notIn', instance.notIn?.toList());
  writeNotNull('lt', instance.lt);
  writeNotNull('lte', instance.lte);
  writeNotNull('gt', instance.gt);
  writeNotNull('gte', instance.gte);
  writeNotNull('not', instance.not?.toJson());
  writeNotNull('_count', instance.$count?.toJson());
  writeNotNull('_avg', instance.$avg?.toJson());
  writeNotNull('_sum', instance.$sum?.toJson());
  writeNotNull('_min', instance.$min?.toJson());
  writeNotNull('_max', instance.$max?.toJson());
  return val;
}

NestedFloatNullableFilter _$NestedFloatNullableFilterFromJson(
        Map<String, dynamic> json) =>
    NestedFloatNullableFilter(
      equals: (json['equals'] as num?)?.toDouble(),
      $in: (json['in'] as List<dynamic>?)?.map((e) => (e as num).toDouble()),
      notIn:
          (json['notIn'] as List<dynamic>?)?.map((e) => (e as num).toDouble()),
      lt: (json['lt'] as num?)?.toDouble(),
      lte: (json['lte'] as num?)?.toDouble(),
      gt: (json['gt'] as num?)?.toDouble(),
      gte: (json['gte'] as num?)?.toDouble(),
      not: json['not'] == null
          ? null
          : NestedFloatNullableFilter.fromJson(
              json['not'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$NestedFloatNullableFilterToJson(
    NestedFloatNullableFilter instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('equals', instance.equals);
  writeNotNull('in', instance.$in?.toList());
  writeNotNull('notIn', instance.notIn?.toList());
  writeNotNull('lt', instance.lt);
  writeNotNull('lte', instance.lte);
  writeNotNull('gt', instance.gt);
  writeNotNull('gte', instance.gte);
  writeNotNull('not', instance.not?.toJson());
  return val;
}

NestedDateTimeWithAggregatesFilter _$NestedDateTimeWithAggregatesFilterFromJson(
        Map<String, dynamic> json) =>
    NestedDateTimeWithAggregatesFilter(
      equals: _$JsonConverterFromJson<String, DateTime>(
          json['equals'], const DateTimeJsonConverter().fromJson),
      $in: (json['in'] as List<dynamic>?)
          ?.map((e) => const DateTimeJsonConverter().fromJson(e as String)),
      notIn: (json['notIn'] as List<dynamic>?)
          ?.map((e) => const DateTimeJsonConverter().fromJson(e as String)),
      lt: _$JsonConverterFromJson<String, DateTime>(
          json['lt'], const DateTimeJsonConverter().fromJson),
      lte: _$JsonConverterFromJson<String, DateTime>(
          json['lte'], const DateTimeJsonConverter().fromJson),
      gt: _$JsonConverterFromJson<String, DateTime>(
          json['gt'], const DateTimeJsonConverter().fromJson),
      gte: _$JsonConverterFromJson<String, DateTime>(
          json['gte'], const DateTimeJsonConverter().fromJson),
      not: json['not'] == null
          ? null
          : NestedDateTimeWithAggregatesFilter.fromJson(
              json['not'] as Map<String, dynamic>),
      $count: json['_count'] == null
          ? null
          : NestedIntFilter.fromJson(json['_count'] as Map<String, dynamic>),
      $min: json['_min'] == null
          ? null
          : NestedDateTimeFilter.fromJson(json['_min'] as Map<String, dynamic>),
      $max: json['_max'] == null
          ? null
          : NestedDateTimeFilter.fromJson(json['_max'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$NestedDateTimeWithAggregatesFilterToJson(
    NestedDateTimeWithAggregatesFilter instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull(
      'equals',
      _$JsonConverterToJson<String, DateTime>(
          instance.equals, const DateTimeJsonConverter().toJson));
  writeNotNull(
      'in', instance.$in?.map(const DateTimeJsonConverter().toJson).toList());
  writeNotNull('notIn',
      instance.notIn?.map(const DateTimeJsonConverter().toJson).toList());
  writeNotNull(
      'lt',
      _$JsonConverterToJson<String, DateTime>(
          instance.lt, const DateTimeJsonConverter().toJson));
  writeNotNull(
      'lte',
      _$JsonConverterToJson<String, DateTime>(
          instance.lte, const DateTimeJsonConverter().toJson));
  writeNotNull(
      'gt',
      _$JsonConverterToJson<String, DateTime>(
          instance.gt, const DateTimeJsonConverter().toJson));
  writeNotNull(
      'gte',
      _$JsonConverterToJson<String, DateTime>(
          instance.gte, const DateTimeJsonConverter().toJson));
  writeNotNull('not', instance.not?.toJson());
  writeNotNull('_count', instance.$count?.toJson());
  writeNotNull('_min', instance.$min?.toJson());
  writeNotNull('_max', instance.$max?.toJson());
  return val;
}

NestedDateTimeNullableWithAggregatesFilter
    _$NestedDateTimeNullableWithAggregatesFilterFromJson(
            Map<String, dynamic> json) =>
        NestedDateTimeNullableWithAggregatesFilter(
          equals: _$JsonConverterFromJson<String, DateTime>(
              json['equals'], const DateTimeJsonConverter().fromJson),
          $in: (json['in'] as List<dynamic>?)
              ?.map((e) => const DateTimeJsonConverter().fromJson(e as String)),
          notIn: (json['notIn'] as List<dynamic>?)
              ?.map((e) => const DateTimeJsonConverter().fromJson(e as String)),
          lt: _$JsonConverterFromJson<String, DateTime>(
              json['lt'], const DateTimeJsonConverter().fromJson),
          lte: _$JsonConverterFromJson<String, DateTime>(
              json['lte'], const DateTimeJsonConverter().fromJson),
          gt: _$JsonConverterFromJson<String, DateTime>(
              json['gt'], const DateTimeJsonConverter().fromJson),
          gte: _$JsonConverterFromJson<String, DateTime>(
              json['gte'], const DateTimeJsonConverter().fromJson),
          not: json['not'] == null
              ? null
              : NestedDateTimeNullableWithAggregatesFilter.fromJson(
                  json['not'] as Map<String, dynamic>),
          $count: json['_count'] == null
              ? null
              : NestedIntNullableFilter.fromJson(
                  json['_count'] as Map<String, dynamic>),
          $min: json['_min'] == null
              ? null
              : NestedDateTimeNullableFilter.fromJson(
                  json['_min'] as Map<String, dynamic>),
          $max: json['_max'] == null
              ? null
              : NestedDateTimeNullableFilter.fromJson(
                  json['_max'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$NestedDateTimeNullableWithAggregatesFilterToJson(
    NestedDateTimeNullableWithAggregatesFilter instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull(
      'equals',
      _$JsonConverterToJson<String, DateTime>(
          instance.equals, const DateTimeJsonConverter().toJson));
  writeNotNull(
      'in', instance.$in?.map(const DateTimeJsonConverter().toJson).toList());
  writeNotNull('notIn',
      instance.notIn?.map(const DateTimeJsonConverter().toJson).toList());
  writeNotNull(
      'lt',
      _$JsonConverterToJson<String, DateTime>(
          instance.lt, const DateTimeJsonConverter().toJson));
  writeNotNull(
      'lte',
      _$JsonConverterToJson<String, DateTime>(
          instance.lte, const DateTimeJsonConverter().toJson));
  writeNotNull(
      'gt',
      _$JsonConverterToJson<String, DateTime>(
          instance.gt, const DateTimeJsonConverter().toJson));
  writeNotNull(
      'gte',
      _$JsonConverterToJson<String, DateTime>(
          instance.gte, const DateTimeJsonConverter().toJson));
  writeNotNull('not', instance.not?.toJson());
  writeNotNull('_count', instance.$count?.toJson());
  writeNotNull('_min', instance.$min?.toJson());
  writeNotNull('_max', instance.$max?.toJson());
  return val;
}

BookAssetTbl _$BookAssetTblFromJson(Map<String, dynamic> json) => BookAssetTbl(
      seq: BigInt.parse(json['SEQ'] as String),
      assetNo: json['ASSET_NO'] as String,
      bookNm: json['BOOK_NM'] as String?,
      cnt: json['CNT'] as int?,
      publisher: json['PUBLISHER'] as String?,
      amount: json['AMOUNT'] as int?,
      buyDate: json['BUY_DATE'] as String?,
      mngDept: json['MNG_DEPT'] as String?,
      rentYn: json['RENT_YN'] as String?,
      rentUser: json['RENT_USER'] as String?,
      remarks: json['REMARKS'] as String?,
      useYn: json['USE_YN'] as String,
      delYn: json['DEL_YN'] as String,
      regDate:
          const DateTimeJsonConverter().fromJson(json['REG_DATE'] as String),
      updDate: _$JsonConverterFromJson<String, DateTime>(
          json['UPD_DATE'], const DateTimeJsonConverter().fromJson),
    );

Map<String, dynamic> _$BookAssetTblToJson(BookAssetTbl instance) {
  final val = <String, dynamic>{
    'SEQ': instance.seq.toString(),
    'ASSET_NO': instance.assetNo,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('BOOK_NM', instance.bookNm);
  writeNotNull('CNT', instance.cnt);
  writeNotNull('PUBLISHER', instance.publisher);
  writeNotNull('AMOUNT', instance.amount);
  writeNotNull('BUY_DATE', instance.buyDate);
  writeNotNull('MNG_DEPT', instance.mngDept);
  writeNotNull('RENT_YN', instance.rentYn);
  writeNotNull('RENT_USER', instance.rentUser);
  writeNotNull('REMARKS', instance.remarks);
  val['USE_YN'] = instance.useYn;
  val['DEL_YN'] = instance.delYn;
  val['REG_DATE'] = const DateTimeJsonConverter().toJson(instance.regDate);
  writeNotNull(
      'UPD_DATE',
      _$JsonConverterToJson<String, DateTime>(
          instance.updDate, const DateTimeJsonConverter().toJson));
  return val;
}

StMngrMst _$StMngrMstFromJson(Map<String, dynamic> json) => StMngrMst(
      mngrId: json['MNGR_ID'] as String,
      mngrNm: json['MNGR_NM'] as String,
      mngrPw: json['MNGR_PW'] as String?,
      grpCd: json['GRP_CD'] as String?,
      grade: json['GRADE'] as String?,
      permCd: json['PERM_CD'] as String,
      acsYn: json['ACS_YN'] as String?,
      clph: json['CLPH'] as String?,
      empNo: json['EMP_NO'] as String?,
      joinDate: json['JOIN_DATE'] as String,
      pwdWrongCnt: json['PWD_WRONG_CNT'] as int?,
      pwdWrongDate: json['PWD_WRONG_DATE'] as String?,
      lstLoginDate: json['LST_LOGIN_DATE'] as String?,
      flpth: json['FLPTH'] as String?,
      fileNm: json['FILE_NM'] as String?,
      regId: json['REG_ID'] as String,
      regDate: json['REG_DATE'] as String,
      editId: json['EDIT_ID'] as String?,
      editDate: json['EDIT_DATE'] as String?,
      delId: json['DEL_ID'] as String?,
      delDate: json['DEL_DATE'] as String?,
    );

Map<String, dynamic> _$StMngrMstToJson(StMngrMst instance) {
  final val = <String, dynamic>{
    'MNGR_ID': instance.mngrId,
    'MNGR_NM': instance.mngrNm,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('MNGR_PW', instance.mngrPw);
  writeNotNull('GRP_CD', instance.grpCd);
  writeNotNull('GRADE', instance.grade);
  val['PERM_CD'] = instance.permCd;
  writeNotNull('ACS_YN', instance.acsYn);
  writeNotNull('CLPH', instance.clph);
  writeNotNull('EMP_NO', instance.empNo);
  val['JOIN_DATE'] = instance.joinDate;
  writeNotNull('PWD_WRONG_CNT', instance.pwdWrongCnt);
  writeNotNull('PWD_WRONG_DATE', instance.pwdWrongDate);
  writeNotNull('LST_LOGIN_DATE', instance.lstLoginDate);
  writeNotNull('FLPTH', instance.flpth);
  writeNotNull('FILE_NM', instance.fileNm);
  val['REG_ID'] = instance.regId;
  val['REG_DATE'] = instance.regDate;
  writeNotNull('EDIT_ID', instance.editId);
  writeNotNull('EDIT_DATE', instance.editDate);
  writeNotNull('DEL_ID', instance.delId);
  writeNotNull('DEL_DATE', instance.delDate);
  return val;
}

BOOKASSETTBLGroupByOutputType _$BOOKASSETTBLGroupByOutputTypeFromJson(
        Map<String, dynamic> json) =>
    BOOKASSETTBLGroupByOutputType(
      seq: json['SEQ'] == null ? null : BigInt.parse(json['SEQ'] as String),
      assetNo: json['ASSET_NO'] as String?,
      bookNm: json['BOOK_NM'] as String?,
      cnt: json['CNT'] as int?,
      publisher: json['PUBLISHER'] as String?,
      amount: json['AMOUNT'] as int?,
      buyDate: json['BUY_DATE'] as String?,
      mngDept: json['MNG_DEPT'] as String?,
      rentYn: json['RENT_YN'] as String?,
      rentUser: json['RENT_USER'] as String?,
      remarks: json['REMARKS'] as String?,
      useYn: json['USE_YN'] as String?,
      delYn: json['DEL_YN'] as String?,
      regDate: _$JsonConverterFromJson<String, DateTime>(
          json['REG_DATE'], const DateTimeJsonConverter().fromJson),
      updDate: _$JsonConverterFromJson<String, DateTime>(
          json['UPD_DATE'], const DateTimeJsonConverter().fromJson),
    );

Map<String, dynamic> _$BOOKASSETTBLGroupByOutputTypeToJson(
    BOOKASSETTBLGroupByOutputType instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('SEQ', instance.seq?.toString());
  writeNotNull('ASSET_NO', instance.assetNo);
  writeNotNull('BOOK_NM', instance.bookNm);
  writeNotNull('CNT', instance.cnt);
  writeNotNull('PUBLISHER', instance.publisher);
  writeNotNull('AMOUNT', instance.amount);
  writeNotNull('BUY_DATE', instance.buyDate);
  writeNotNull('MNG_DEPT', instance.mngDept);
  writeNotNull('RENT_YN', instance.rentYn);
  writeNotNull('RENT_USER', instance.rentUser);
  writeNotNull('REMARKS', instance.remarks);
  writeNotNull('USE_YN', instance.useYn);
  writeNotNull('DEL_YN', instance.delYn);
  writeNotNull(
      'REG_DATE',
      _$JsonConverterToJson<String, DateTime>(
          instance.regDate, const DateTimeJsonConverter().toJson));
  writeNotNull(
      'UPD_DATE',
      _$JsonConverterToJson<String, DateTime>(
          instance.updDate, const DateTimeJsonConverter().toJson));
  return val;
}

STMNGRMSTGroupByOutputType _$STMNGRMSTGroupByOutputTypeFromJson(
        Map<String, dynamic> json) =>
    STMNGRMSTGroupByOutputType(
      mngrId: json['MNGR_ID'] as String?,
      mngrNm: json['MNGR_NM'] as String?,
      mngrPw: json['MNGR_PW'] as String?,
      grpCd: json['GRP_CD'] as String?,
      grade: json['GRADE'] as String?,
      permCd: json['PERM_CD'] as String?,
      acsYn: json['ACS_YN'] as String?,
      clph: json['CLPH'] as String?,
      empNo: json['EMP_NO'] as String?,
      joinDate: json['JOIN_DATE'] as String?,
      pwdWrongCnt: json['PWD_WRONG_CNT'] as int?,
      pwdWrongDate: json['PWD_WRONG_DATE'] as String?,
      lstLoginDate: json['LST_LOGIN_DATE'] as String?,
      flpth: json['FLPTH'] as String?,
      fileNm: json['FILE_NM'] as String?,
      regId: json['REG_ID'] as String?,
      regDate: json['REG_DATE'] as String?,
      editId: json['EDIT_ID'] as String?,
      editDate: json['EDIT_DATE'] as String?,
      delId: json['DEL_ID'] as String?,
      delDate: json['DEL_DATE'] as String?,
    );

Map<String, dynamic> _$STMNGRMSTGroupByOutputTypeToJson(
    STMNGRMSTGroupByOutputType instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('MNGR_ID', instance.mngrId);
  writeNotNull('MNGR_NM', instance.mngrNm);
  writeNotNull('MNGR_PW', instance.mngrPw);
  writeNotNull('GRP_CD', instance.grpCd);
  writeNotNull('GRADE', instance.grade);
  writeNotNull('PERM_CD', instance.permCd);
  writeNotNull('ACS_YN', instance.acsYn);
  writeNotNull('CLPH', instance.clph);
  writeNotNull('EMP_NO', instance.empNo);
  writeNotNull('JOIN_DATE', instance.joinDate);
  writeNotNull('PWD_WRONG_CNT', instance.pwdWrongCnt);
  writeNotNull('PWD_WRONG_DATE', instance.pwdWrongDate);
  writeNotNull('LST_LOGIN_DATE', instance.lstLoginDate);
  writeNotNull('FLPTH', instance.flpth);
  writeNotNull('FILE_NM', instance.fileNm);
  writeNotNull('REG_ID', instance.regId);
  writeNotNull('REG_DATE', instance.regDate);
  writeNotNull('EDIT_ID', instance.editId);
  writeNotNull('EDIT_DATE', instance.editDate);
  writeNotNull('DEL_ID', instance.delId);
  writeNotNull('DEL_DATE', instance.delDate);
  return val;
}

AffectedRowsOutput _$AffectedRowsOutputFromJson(Map<String, dynamic> json) =>
    AffectedRowsOutput(
      count: json['count'] as int?,
    );

Map<String, dynamic> _$AffectedRowsOutputToJson(AffectedRowsOutput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('count', instance.count);
  return val;
}

Map<String, dynamic> _$DatasourcesToJson(Datasources instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('db', instance.db);
  return val;
}
