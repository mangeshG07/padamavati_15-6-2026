// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'coupon_summary_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_CouponSummaryModel _$CouponSummaryModelFromJson(Map<String, dynamic> json) =>
    _CouponSummaryModel(
      totalCoupons: (json['total_coupons'] as num?)?.toInt(),
      usedCoupons: (json['used_coupons'] as num?)?.toInt(),
      todayCoupons: (json['today_coupons'] as num?)?.toInt(),
      remainingCoupons: (json['remaining_coupons'] as num?)?.toInt(),
      expiryDate: json['package_end_date'] as String?,
    );

Map<String, dynamic> _$CouponSummaryModelToJson(_CouponSummaryModel instance) =>
    <String, dynamic>{
      'total_coupons': instance.totalCoupons,
      'used_coupons': instance.usedCoupons,
      'today_coupons': instance.todayCoupons,
      'remaining_coupons': instance.remainingCoupons,
      'package_end_date': instance.expiryDate,
    };
