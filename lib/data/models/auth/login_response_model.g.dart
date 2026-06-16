// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_LoginResponseModel _$LoginResponseModelFromJson(Map<String, dynamic> json) =>
    _LoginResponseModel(
      common: json['common'] == null
          ? null
          : CommonModel.fromJson(json['common'] as Map<String, dynamic>),
      android: json['android'] == null
          ? null
          : AppConfigModel.fromJson(json['android'] as Map<String, dynamic>),
      ios: json['ios'] == null
          ? null
          : AppConfigModel.fromJson(json['ios'] as Map<String, dynamic>),
      data: LoginDataModel.fromJson(json['data'] as Map<String, dynamic>),
      userLogin: json['user_login'] as bool?,
    );

Map<String, dynamic> _$LoginResponseModelToJson(_LoginResponseModel instance) =>
    <String, dynamic>{
      'common': instance.common,
      'android': instance.android,
      'ios': instance.ios,
      'data': instance.data,
      'user_login': instance.userLogin,
    };
