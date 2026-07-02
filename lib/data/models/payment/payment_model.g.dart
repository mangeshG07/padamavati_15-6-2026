// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'payment_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_PaymentModel _$PaymentModelFromJson(Map<String, dynamic> json) =>
    _PaymentModel(
      paymentId: (json['payment_id'] as num?)?.toInt(),
      code: json['code'] as String?,
      amount: (json['amount'] as num?)?.toInt(),
      date: json['date'] as String?,
      note: json['note'] as String?,
      receiptUrl: json['receipt_url'] as String?,
      paymentMethod: json['payment_method'] as String?,
      paymentStatus: json['payment_status'] as String?,
    );

Map<String, dynamic> _$PaymentModelToJson(_PaymentModel instance) =>
    <String, dynamic>{
      'payment_id': instance.paymentId,
      'code': instance.code,
      'amount': instance.amount,
      'date': instance.date,
      'note': instance.note,
      'receipt_url': instance.receiptUrl,
      'payment_method': instance.paymentMethod,
      'payment_status': instance.paymentStatus,
    };
