// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'payment_trans_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_PaymentDetailsModel _$PaymentDetailsModelFromJson(Map<String, dynamic> json) =>
    _PaymentDetailsModel(
      messType: json['mess_type'] as String?,
      messTypeName: json['mess_type_name'] as String?,
      startMonth: json['start_month'] as String?,
      endMonth: json['end_month'] as String?,
      duration: json['duration'] as String?,
      startDate: json['start_date'] as String?,
      endDate: json['end_date'] as String?,
      paidAmount: json['paid_amount'] as String?,
      dueAmount: (json['due_amount'] as num?)?.toInt(),
      paymentStatus: json['payment_status'] as String?,
    );

Map<String, dynamic> _$PaymentDetailsModelToJson(
  _PaymentDetailsModel instance,
) => <String, dynamic>{
  'mess_type': instance.messType,
  'mess_type_name': instance.messTypeName,
  'start_month': instance.startMonth,
  'end_month': instance.endMonth,
  'duration': instance.duration,
  'start_date': instance.startDate,
  'end_date': instance.endDate,
  'paid_amount': instance.paidAmount,
  'due_amount': instance.dueAmount,
  'payment_status': instance.paymentStatus,
};
