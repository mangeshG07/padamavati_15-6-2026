import 'package:padmavatiupdated/core/exporters/app_export.dart';
part 'payment_overview.g.dart';
part 'payment_overview.freezed.dart';

@freezed
abstract class PaymentOverview with _$PaymentOverview {
  const factory PaymentOverview({
    @JsonKey(name: 'total_payment') int? totalPayment,
    @JsonKey(name: 'received_payment') int? receivedPayment,
    @JsonKey(name: 'pending_payment') int? pendingPayment,
  }) = _PaymentOverview;

  factory PaymentOverview.fromJson(Map<String, dynamic> json) =>
      _$PaymentOverviewFromJson(json);
}
