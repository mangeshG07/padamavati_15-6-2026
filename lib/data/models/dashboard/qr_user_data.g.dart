// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'qr_user_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_QRUserDataModel _$QRUserDataModelFromJson(Map<String, dynamic> json) =>
    _QRUserDataModel(
      userId: (json['user_id'] as num?)?.toInt(),
      name: json['name'] as String?,
      profileImage: json['profile_image'] as String?,
      gender: json['gender'] as String?,
      messType: json['mess_type'] as String?,
      messTime: json['mess_time'] as String?,
      remainingCoupons: (json['remaining_coupons'] as num?)?.toInt(),
      lastMessDay: json['last_mess_day'] as String?,
    );

Map<String, dynamic> _$QRUserDataModelToJson(_QRUserDataModel instance) =>
    <String, dynamic>{
      'user_id': instance.userId,
      'name': instance.name,
      'profile_image': instance.profileImage,
      'gender': instance.gender,
      'mess_type': instance.messType,
      'mess_time': instance.messTime,
      'remaining_coupons': instance.remainingCoupons,
      'last_mess_day': instance.lastMessDay,
    };
