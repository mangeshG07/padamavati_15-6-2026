// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'request_user_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_RequestUserModel _$RequestUserModelFromJson(Map<String, dynamic> json) =>
    _RequestUserModel(
      name: json['name'] as String?,
      mobileNo: json['mobile_no'] as String?,
      fromDate: json['from_date'] as String?,
      toDate: json['to_date'] as String?,
      totalDays: (json['total_days'] as num?)?.toInt(),
      id: (json['id'] as num?)?.toInt(),
      foodName: json['food_name'] as String?,
      requestedBy: json['requested_by'] as String?,
      forDate: json['for_date'] as String?,
      requestedOn: json['requested_on'] as String?,
    );

Map<String, dynamic> _$RequestUserModelToJson(_RequestUserModel instance) =>
    <String, dynamic>{
      'name': instance.name,
      'mobile_no': instance.mobileNo,
      'from_date': instance.fromDate,
      'to_date': instance.toDate,
      'total_days': instance.totalDays,
      'id': instance.id,
      'food_name': instance.foodName,
      'requested_by': instance.requestedBy,
      'for_date': instance.forDate,
      'requested_on': instance.requestedOn,
    };
