// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'coupon_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_CouponResponseModel _$CouponResponseModelFromJson(Map<String, dynamic> json) =>
    _CouponResponseModel(
      couponSummary: json['coupon_summary'] == null
          ? null
          : CouponSummaryModel.fromJson(
              json['coupon_summary'] as Map<String, dynamic>,
            ),
      todayQr: (json['today_qr_codes'] as List<dynamic>?)
          ?.map((e) => QRModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      scannedQr: (json['scanned_qr_codes'] as List<dynamic>?)
          ?.map((e) => QRModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$CouponResponseModelToJson(
  _CouponResponseModel instance,
) => <String, dynamic>{
  'coupon_summary': instance.couponSummary,
  'today_qr_codes': instance.todayQr,
  'scanned_qr_codes': instance.scannedQr,
};
