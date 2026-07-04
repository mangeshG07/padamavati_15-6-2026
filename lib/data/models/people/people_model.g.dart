// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'people_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_PeopleModel _$PeopleModelFromJson(Map<String, dynamic> json) => _PeopleModel(
  code: json['code'] as String?,
  name: json['name'] as String?,
  id: (json['app_id'] as num?)?.toInt(),
  profileImage: json['profile_image'] as String?,
);

Map<String, dynamic> _$PeopleModelToJson(_PeopleModel instance) =>
    <String, dynamic>{
      'code': instance.code,
      'name': instance.name,
      'app_id': instance.id,
      'profile_image': instance.profileImage,
    };
