// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'payment_data_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_PaymentDataModel _$PaymentDataModelFromJson(Map<String, dynamic> json) =>
    _PaymentDataModel(
      packageAmount: (json['package_amount'] as num?)?.toInt(),
      remainingAmount: (json['remaining_amount'] as num?)?.toInt(),
      paymentStatus: json['payment_status'] as String?,
      paidAmount: json['paid_amount'] as String?,
    );

Map<String, dynamic> _$PaymentDataModelToJson(_PaymentDataModel instance) =>
    <String, dynamic>{
      'package_amount': instance.packageAmount,
      'remaining_amount': instance.remainingAmount,
      'payment_status': instance.paymentStatus,
      'paid_amount': instance.paidAmount,
    };
