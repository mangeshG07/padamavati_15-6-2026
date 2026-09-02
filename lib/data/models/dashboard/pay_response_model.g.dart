// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pay_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_PaymentResponseModel _$PaymentResponseModelFromJson(
  Map<String, dynamic> json,
) => _PaymentResponseModel(
  totalCount: (json['total_count'] as num?)?.toInt(),
  totalPages: (json['total_pages'] as num?)?.toInt(),
  currentPage: (json['current_page'] as num?)?.toInt(),
  perPage: (json['per_page'] as num?)?.toInt(),
  users: (json['users'] as List<dynamic>?)
      ?.map((e) => UserPaymentModel.fromJson(e as Map<String, dynamic>))
      .toList(),
);

Map<String, dynamic> _$PaymentResponseModelToJson(
  _PaymentResponseModel instance,
) => <String, dynamic>{
  'total_count': instance.totalCount,
  'total_pages': instance.totalPages,
  'current_page': instance.currentPage,
  'per_page': instance.perPage,
  'users': instance.users,
};
