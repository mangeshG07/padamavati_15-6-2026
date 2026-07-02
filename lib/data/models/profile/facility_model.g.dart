// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'facility_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_FacilityModel _$FacilityModelFromJson(Map<String, dynamic> json) =>
    _FacilityModel(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
      image: json['image'] as String?,
      shortDescription: json['short_description'] as String?,
      description: json['description'] as String?,
    );

Map<String, dynamic> _$FacilityModelToJson(_FacilityModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'image': instance.image,
      'short_description': instance.shortDescription,
      'description': instance.description,
    };
