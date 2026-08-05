import 'package:padmavatiupdated/core/exporters/app_export.dart';
part 'payment_data_model.g.dart';
part 'payment_data_model.freezed.dart';

@freezed
abstract class PaymentDataModel with _$PaymentDataModel {
  const factory PaymentDataModel({
    @JsonKey(name: 'package_amount') int? packageAmount,
    @JsonKey(name: 'remaining_amount') int? remainingAmount,
    @JsonKey(name: 'payment_status') String? paymentStatus,
    @JsonKey(name: 'paid_amount') String? paidAmount,
    @JsonKey(name: 'paid_date') String? paidDate,
  }) = _PaymentDataModel;
  factory PaymentDataModel.fromJson(Map<String, dynamic> json) =>
      _$PaymentDataModelFromJson(json);
}
