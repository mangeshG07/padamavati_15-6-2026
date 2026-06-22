import 'package:padmavatiupdated/core/exporters/app_export.dart';
part 'payment_model.g.dart';
part 'payment_model.freezed.dart';

@freezed
abstract class PaymentModel with _$PaymentModel {
  const factory PaymentModel({
    @JsonKey(name: 'payment_id') int? paymentId,
    String? code,
    int? amount,
    String? date,
    String? note,
    @JsonKey(name: 'receipt_url') String? receiptUrl,
    @JsonKey(name: 'payment_method') String? paymentMethod,
    @JsonKey(name: 'payment_status') String? paymentStatus,
  }) = _PaymentModel;

  factory PaymentModel.fromJson(Map<String, dynamic> json) =>
      _$PaymentModelFromJson(json);
}
