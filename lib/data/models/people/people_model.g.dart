// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'people_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_PeopleModel _$PeopleModelFromJson(Map<String, dynamic> json) => _PeopleModel(
  code: json['code'] as String?,
  name: json['name'] as String?,
  profileImage: json['profile_image'] as String?,
);

Map<String, dynamic> _$PeopleModelToJson(_PeopleModel instance) =>
    <String, dynamic>{
      'code': instance.code,
      'name': instance.name,
      'profile_image': instance.profileImage,
    };
