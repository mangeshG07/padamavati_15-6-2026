// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'payment_overview.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_PaymentOverview _$PaymentOverviewFromJson(Map<String, dynamic> json) =>
    _PaymentOverview(
      totalPayment: (json['total_payment'] as num?)?.toInt(),
      receivedPayment: (json['received_payment'] as num?)?.toInt(),
      pendingPayment: (json['pending_payment'] as num?)?.toInt(),
    );

Map<String, dynamic> _$PaymentOverviewToJson(_PaymentOverview instance) =>
    <String, dynamic>{
      'total_payment': instance.totalPayment,
      'received_payment': instance.receivedPayment,
      'pending_payment': instance.pendingPayment,
    };
