// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'requests_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_RequestsResponseModel _$RequestsResponseModelFromJson(
  Map<String, dynamic> json,
) => _RequestsResponseModel(
  type: json['type'] as String?,
  totalCount: (json['total_count'] as num?)?.toInt(),
  totalPages: (json['total_pages'] as num?)?.toInt(),
  currentPage: (json['current_page'] as num?)?.toInt(),
  perPage: (json['per_page'] as num?)?.toInt(),
  request: (json['requests'] as List<dynamic>?)
      ?.map((e) => RequestUserModel.fromJson(e as Map<String, dynamic>))
      .toList(),
);

Map<String, dynamic> _$RequestsResponseModelToJson(
  _RequestsResponseModel instance,
) => <String, dynamic>{
  'type': instance.type,
  'total_count': instance.totalCount,
  'total_pages': instance.totalPages,
  'current_page': instance.currentPage,
  'per_page': instance.perPage,
  'requests': instance.request,
};
