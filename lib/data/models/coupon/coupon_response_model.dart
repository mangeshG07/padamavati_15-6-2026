import 'package:padmavatiupdated/core/exporters/app_export.dart';
part 'coupon_response_model.g.dart';
part 'coupon_response_model.freezed.dart';

@freezed
abstract class CouponResponseModel with _$CouponResponseModel {
  const factory CouponResponseModel({
    @JsonKey(name: 'coupon_summary') CouponSummaryModel? couponSummary,
    @JsonKey(name: 'today_qr_codes') List<QRModel>? todayQr,
    @JsonKey(name: 'scanned_qr_codes') List<QRModel>? scannedQr,
  }) = _CouponResponseModel;

  factory CouponResponseModel.fromJson(Map<String, dynamic> json) =>
      _$CouponResponseModelFromJson(json);
}
