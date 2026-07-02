// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'qr_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_QRModel _$QRModelFromJson(Map<String, dynamic> json) => _QRModel(
  id: (json['id'] as num?)?.toInt(),
  uuid: json['uuid'] as String?,
  messTransactionId: (json['mess_transaction_id'] as num?)?.toInt(),
  appId: (json['app_id'] as num?)?.toInt(),
  messValidDate: json['mess_valid_date'] as String?,
  messType: json['mess_type'] as String?,
  messTime: json['mess_time'] as String?,
  status: json['status'] as String?,
  expiresAt: json['expires_at'] as String?,
  scannedAt: json['scanned_at'] as String?,
);

Map<String, dynamic> _$QRModelToJson(_QRModel instance) => <String, dynamic>{
  'id': instance.id,
  'uuid': instance.uuid,
  'mess_transaction_id': instance.messTransactionId,
  'app_id': instance.appId,
  'mess_valid_date': instance.messValidDate,
  'mess_type': instance.messType,
  'mess_time': instance.messTime,
  'status': instance.status,
  'expires_at': instance.expiresAt,
  'scanned_at': instance.scannedAt,
};
