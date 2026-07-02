// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'scanned_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ScannedResponseModel _$ScannedResponseModelFromJson(
  Map<String, dynamic> json,
) => _ScannedResponseModel(
  messTime: json['mess_time'] as String?,
  totalCount: (json['total_count'] as num?)?.toInt(),
  totalPages: (json['total_pages'] as num?)?.toInt(),
  currentPage: (json['current_page'] as num?)?.toInt(),
  perPage: (json['per_page'] as num?)?.toInt(),
  scannedUsers: (json['scanned_users'] as List<dynamic>?)
      ?.map((e) => ScannedUserModel.fromJson(e as Map<String, dynamic>))
      .toList(),
);

Map<String, dynamic> _$ScannedResponseModelToJson(
  _ScannedResponseModel instance,
) => <String, dynamic>{
  'mess_time': instance.messTime,
  'total_count': instance.totalCount,
  'total_pages': instance.totalPages,
  'current_page': instance.currentPage,
  'per_page': instance.perPage,
  'scanned_users': instance.scannedUsers,
};
