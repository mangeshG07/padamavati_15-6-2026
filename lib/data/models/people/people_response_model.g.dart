// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'people_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_PeopleResponseModel _$PeopleResponseModelFromJson(Map<String, dynamic> json) =>
    _PeopleResponseModel(
      totalCount: (json['total_count'] as num?)?.toInt(),
      totalPages: (json['total_pages'] as num?)?.toInt(),
      currentPage: (json['current_page'] as num?)?.toInt(),
      perPage: (json['per_page'] as num?)?.toInt(),
      users: (json['users'] as List<dynamic>?)
          ?.map((e) => PeopleModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$PeopleResponseModelToJson(
  _PeopleResponseModel instance,
) => <String, dynamic>{
  'total_count': instance.totalCount,
  'total_pages': instance.totalPages,
  'current_page': instance.currentPage,
  'per_page': instance.perPage,
  'users': instance.users,
};
