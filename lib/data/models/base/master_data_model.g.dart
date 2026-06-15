// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'master_data_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_MasterDataModel _$MasterDataModelFromJson(Map<String, dynamic> json) =>
    _MasterDataModel(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
      address: json['address'] as String?,
      image: json['image'] as String?,
    );

Map<String, dynamic> _$MasterDataModelToJson(_MasterDataModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'address': instance.address,
      'image': instance.image,
    };
