// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'scanned_user_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ScannedUserModel _$ScannedUserModelFromJson(Map<String, dynamic> json) =>
    _ScannedUserModel(
      studentId: (json['student_id'] as num?)?.toInt(),
      userName: json['user_name'] as String?,
      profileImage: json['profile_image'] as String?,
      messType: json['mess_type'] as String?,
      meal: json['meal'] as String?,
      scannedAt: json['scanned_at'] as String?,
      scannedBy: json['scanned_by'] as String?,
    );

Map<String, dynamic> _$ScannedUserModelToJson(_ScannedUserModel instance) =>
    <String, dynamic>{
      'student_id': instance.studentId,
      'user_name': instance.userName,
      'profile_image': instance.profileImage,
      'mess_type': instance.messType,
      'meal': instance.meal,
      'scanned_at': instance.scannedAt,
      'scanned_by': instance.scannedBy,
    };
