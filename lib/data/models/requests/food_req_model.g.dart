// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'food_req_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_FoodRequestModel _$FoodRequestModelFromJson(Map<String, dynamic> json) =>
    _FoodRequestModel(
      id: (json['id'] as num?)?.toInt(),
      foodType: json['food_type_name'] as String?,
      foodName: json['food_name'] as String?,
      requestedBy: json['requested_by'] as String?,
      foodDate: json['for_date'] as String?,
      requestedOn: json['requested_on'] as String?,
      forDate: json['date'] as String?,
      requestDate: json['created_at'] as String?,
    );

Map<String, dynamic> _$FoodRequestModelToJson(_FoodRequestModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'food_type_name': instance.foodType,
      'food_name': instance.foodName,
      'requested_by': instance.requestedBy,
      'for_date': instance.foodDate,
      'requested_on': instance.requestedOn,
      'date': instance.forDate,
      'created_at': instance.requestDate,
    };
