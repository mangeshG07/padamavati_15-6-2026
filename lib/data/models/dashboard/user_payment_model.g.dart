// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_payment_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_UserPaymentModel _$UserPaymentModelFromJson(Map<String, dynamic> json) =>
    _UserPaymentModel(
      id: (json['id'] as num?)?.toInt(),
      name: json['student_name'] as String?,
      mobileNo: json['mobile_no'] as String?,
      code: json['transaction_code'] as String?,
      messType: json['mess_type'] as String?,
      messTime: json['mess_time'] as String?,
      startDate: json['start_date'] as String?,
      endDate: json['end_date'] as String?,
      totalAmount: json['total_amount'] as String?,
      paidAmount: json['paid_amount'] as String?,
      pendingAmount: (json['pending_amount'] as num?)?.toInt(),
      paymentStatus: json['payment_status'] as String?,
      paymentStatusText: json['payment_status_text'] as String?,
    );

Map<String, dynamic> _$UserPaymentModelToJson(_UserPaymentModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'student_name': instance.name,
      'mobile_no': instance.mobileNo,
      'transaction_code': instance.code,
      'mess_type': instance.messType,
      'mess_time': instance.messTime,
      'start_date': instance.startDate,
      'end_date': instance.endDate,
      'total_amount': instance.totalAmount,
      'paid_amount': instance.paidAmount,
      'pending_amount': instance.pendingAmount,
      'payment_status': instance.paymentStatus,
      'payment_status_text': instance.paymentStatusText,
    };
