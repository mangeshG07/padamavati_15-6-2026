// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'expire_res_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ExpireResponseModel _$ExpireResponseModelFromJson(Map<String, dynamic> json) =>
    _ExpireResponseModel(
      totalCount: (json['total_count'] as num?)?.toInt(),
      totalPages: (json['total_pages'] as num?)?.toInt(),
      currentPage: (json['current_page'] as num?)?.toInt(),
      perPage: (json['per_page'] as num?)?.toInt(),
      qrList: (json['expired_qrs'] as List<dynamic>?)
          ?.map((e) => ExpireQrModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$ExpireResponseModelToJson(
  _ExpireResponseModel instance,
) => <String, dynamic>{
  'total_count': instance.totalCount,
  'total_pages': instance.totalPages,
  'current_page': instance.currentPage,
  'per_page': instance.perPage,
  'expired_qrs': instance.qrList,
};
