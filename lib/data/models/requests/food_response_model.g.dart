// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'food_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_FoodResponseModel _$FoodResponseModelFromJson(Map<String, dynamic> json) =>
    _FoodResponseModel(
      totalCount: (json['total_count'] as num?)?.toInt(),
      totalPages: (json['total_pages'] as num?)?.toInt(),
      currentPage: (json['current_page'] as num?)?.toInt(),
      perPage: (json['per_page'] as num?)?.toInt(),
      foodRequests: (json['special_food_requests'] as List<dynamic>?)
          ?.map((e) => FoodRequestModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$FoodResponseModelToJson(_FoodResponseModel instance) =>
    <String, dynamic>{
      'total_count': instance.totalCount,
      'total_pages': instance.totalPages,
      'current_page': instance.currentPage,
      'per_page': instance.perPage,
      'special_food_requests': instance.foodRequests,
    };
