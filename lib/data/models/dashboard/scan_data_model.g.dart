// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'scan_data_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ScanDataModel _$ScanDataModelFromJson(Map<String, dynamic> json) =>
    _ScanDataModel(
      scanMessType: json['meal_type'] as String?,
      scannedDate: json['scanned_date'] as String?,
      scannedAt: json['scanned_at'] as String?,
    );

Map<String, dynamic> _$ScanDataModelToJson(_ScanDataModel instance) =>
    <String, dynamic>{
      'meal_type': instance.scanMessType,
      'scanned_date': instance.scannedDate,
      'scanned_at': instance.scannedAt,
    };
