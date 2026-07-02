// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'qr_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_QRResponseModel _$QRResponseModelFromJson(Map<String, dynamic> json) =>
    _QRResponseModel(
      userData: json['user_data'] == null
          ? null
          : QRUserDataModel.fromJson(json['user_data'] as Map<String, dynamic>),
      paymentData: json['payment_data'] == null
          ? null
          : PaymentDataModel.fromJson(
              json['payment_data'] as Map<String, dynamic>,
            ),
      scanData: json['scan_data'] == null
          ? null
          : ScanDataModel.fromJson(json['scan_data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$QRResponseModelToJson(_QRResponseModel instance) =>
    <String, dynamic>{
      'user_data': instance.userData,
      'payment_data': instance.paymentData,
      'scan_data': instance.scanData,
    };
