// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'package_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_PackageModel _$PackageModelFromJson(Map<String, dynamic> json) =>
    _PackageModel(
      id: (json['id'] as num?)?.toInt(),
      name: json['name'] as String?,
      amount: (json['amount'] as num?)?.toInt(),
      type: json['type'] as String?,
      days: (json['days'] as num?)?.toInt(),
      gender: json['gender'] as String?,
      messTime: json['mess_time'] as String?,
    );

Map<String, dynamic> _$PackageModelToJson(_PackageModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'amount': instance.amount,
      'type': instance.type,
      'days': instance.days,
      'gender': instance.gender,
      'mess_time': instance.messTime,
    };
