// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'base_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_BaseResponseModel<T> _$BaseResponseModelFromJson<T>(
  Map<String, dynamic> json,
  T Function(Object? json) fromJsonT,
) => _BaseResponseModel<T>(
  common: CommonModel.fromJson(json['common'] as Map<String, dynamic>),
  android: AppConfigModel.fromJson(json['android'] as Map<String, dynamic>),
  ios: AppConfigModel.fromJson(json['ios'] as Map<String, dynamic>),
  data: _$nullableGenericFromJson(json['data'], fromJsonT),
);

Map<String, dynamic> _$BaseResponseModelToJson<T>(
  _BaseResponseModel<T> instance,
  Object? Function(T value) toJsonT,
) => <String, dynamic>{
  'common': instance.common,
  'android': instance.android,
  'ios': instance.ios,
  'data': _$nullableGenericToJson(instance.data, toJsonT),
};

T? _$nullableGenericFromJson<T>(
  Object? input,
  T Function(Object? json) fromJson,
) => input == null ? null : fromJson(input);

Object? _$nullableGenericToJson<T>(
  T? input,
  Object? Function(T value) toJson,
) => input == null ? null : toJson(input);
