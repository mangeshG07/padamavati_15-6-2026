// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_UserModel _$UserModelFromJson(Map<String, dynamic> json) => _UserModel(
  userId: (json['user_id'] as num).toInt(),
  name: json['name'] as String,
  mobileNo: json['mobile_number'] as String?,
  mobileNum: json['mobile_no'] as String?,
  authKey: json['auth_key'] as String,
  profileImage: json['profile_image'] as String?,
  roleId: (json['role_id'] as num?)?.toInt(),
);

Map<String, dynamic> _$UserModelToJson(_UserModel instance) =>
    <String, dynamic>{
      'user_id': instance.userId,
      'name': instance.name,
      'mobile_number': instance.mobileNo,
      'mobile_no': instance.mobileNum,
      'auth_key': instance.authKey,
      'profile_image': instance.profileImage,
      'role_id': instance.roleId,
    };
