// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'expire_qr_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ExpireQrModel _$ExpireQrModelFromJson(Map<String, dynamic> json) =>
    _ExpireQrModel(
      name: json['student_name'] as String?,
      mealTime: json['meal_time'] as String?,
      expiredAt: json['expired_at'] as String?,
      status: json['status'] as String?,
    );

Map<String, dynamic> _$ExpireQrModelToJson(_ExpireQrModel instance) =>
    <String, dynamic>{
      'student_name': instance.name,
      'meal_time': instance.mealTime,
      'expired_at': instance.expiredAt,
      'status': instance.status,
    };
