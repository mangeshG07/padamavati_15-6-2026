// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'payment_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_PaymentData _$PaymentDataFromJson(Map<String, dynamic> json) => _PaymentData(
  payments:
      (json['payments'] as List<dynamic>?)
          ?.map((e) => PaymentModel.fromJson(e as Map<String, dynamic>))
          .toList() ??
      const [],
);

Map<String, dynamic> _$PaymentDataToJson(_PaymentData instance) =>
    <String, dynamic>{'payments': instance.payments};
