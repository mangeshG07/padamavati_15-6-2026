// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'used_qr_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_UsedQRResponseModel _$UsedQRResponseModelFromJson(Map<String, dynamic> json) =>
    _UsedQRResponseModel(
      studentName: json['student_name'] as String?,
      totalCount: (json['total_count'] as num?)?.toInt(),
      totalPages: (json['total_pages'] as num?)?.toInt(),
      currentPage: (json['current_page'] as num?)?.toInt(),
      perPage: (json['per_page'] as num?)?.toInt(),
      usedQrs: (json['used_qrs'] as List<dynamic>?)
          ?.map((e) => UsedQr.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$UsedQRResponseModelToJson(
  _UsedQRResponseModel instance,
) => <String, dynamic>{
  'student_name': instance.studentName,
  'total_count': instance.totalCount,
  'total_pages': instance.totalPages,
  'current_page': instance.currentPage,
  'per_page': instance.perPage,
  'used_qrs': instance.usedQrs,
};
