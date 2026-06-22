import 'package:padmavatiupdated/core/exporters/app_export.dart';
part 'coupon_summary_model.g.dart';
part 'coupon_summary_model.freezed.dart';

@freezed
abstract class CouponSummaryModel with _$CouponSummaryModel {
  const factory CouponSummaryModel({
    @JsonKey(name: 'total_coupons') int? totalCoupons,
    @JsonKey(name: 'used_coupons') int? usedCoupons,
    @JsonKey(name: 'today_coupons') int? todayCoupons,
    @JsonKey(name: 'remaining_coupons') int? remainingCoupons,
    @JsonKey(name: 'package_end_date') String? expiryDate,
  }) = _CouponSummaryModel;

  factory CouponSummaryModel.fromJson(Map<String, dynamic> json) =>
      _$CouponSummaryModelFromJson(json);
}
