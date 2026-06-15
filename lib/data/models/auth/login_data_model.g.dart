// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_data_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_LoginDataModel _$LoginDataModelFromJson(Map<String, dynamic> json) =>
    _LoginDataModel(
      userDetails: json['user_details'] == null
          ? null
          : UserModel.fromJson(json['user_details'] as Map<String, dynamic>),
      otpVerified: json['otp_verified'] as bool?,
      mobileNumber: json['mobile_no'] as String?,
      userExists: json['user_exists'] as bool?,
    );

Map<String, dynamic> _$LoginDataModelToJson(_LoginDataModel instance) =>
    <String, dynamic>{
      'user_details': instance.userDetails,
      'otp_verified': instance.otpVerified,
      'mobile_no': instance.mobileNumber,
      'user_exists': instance.userExists,
    };
