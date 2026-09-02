// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'qr_data_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_QRDataModel _$QRDataModelFromJson(Map<String, dynamic> json) => _QRDataModel(
  totalQr: (json['total_qrs'] as num?)?.toInt(),
  usedQr: (json['used_qrs'] as num?)?.toInt(),
  pendingQr: (json['pending_qrs'] as num?)?.toInt(),
  expiredQr: (json['expired_qrs'] as num?)?.toInt(),
);

Map<String, dynamic> _$QRDataModelToJson(_QRDataModel instance) =>
    <String, dynamic>{
      'total_qrs': instance.totalQr,
      'used_qrs': instance.usedQr,
      'pending_qrs': instance.pendingQr,
      'expired_qrs': instance.expiredQr,
    };
