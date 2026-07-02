// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'used_qr_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_UsedQr _$UsedQrFromJson(Map<String, dynamic> json) => _UsedQr(
  messValidDate: json['mess_valid_date'] as String,
  mess: json['mess'] as String,
  messType: json['mess_type'] as String,
  scannedAt: json['scanned_at'] as String,
  scannedBy: json['scanned_by'] as String,
  scannedByName: json['scanned_by_name'] as String,
);

Map<String, dynamic> _$UsedQrToJson(_UsedQr instance) => <String, dynamic>{
  'mess_valid_date': instance.messValidDate,
  'mess': instance.mess,
  'mess_type': instance.messType,
  'scanned_at': instance.scannedAt,
  'scanned_by': instance.scannedBy,
  'scanned_by_name': instance.scannedByName,
};
