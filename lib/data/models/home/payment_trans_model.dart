import 'package:padmavatiupdated/core/exporters/app_export.dart';
part 'payment_trans_model.freezed.dart';
part 'payment_trans_model.g.dart';

@freezed
abstract class PaymentDetailsModel with _$PaymentDetailsModel {
  const factory PaymentDetailsModel({
    @JsonKey(name: 'transaction_id') int? transactionId,
    @JsonKey(name: 'mess_type') String? messType,
    @JsonKey(name: 'mess_type_name') String? messTypeName,
    @JsonKey(name: 'mess_time') String? messTime,
    @JsonKey(name: 'start_month') String? startMonth,
    @JsonKey(name: 'end_month') String? endMonth,
    String? duration,
    @JsonKey(name: 'start_date') String? startDate,
    @JsonKey(name: 'end_date') String? endDate,
    @JsonKey(name: 'paid_amount') String? paidAmount,
    @JsonKey(name: 'due_amount') int? dueAmount,
    @JsonKey(name: 'payment_status') String? paymentStatus,
    List<PaymentModel>? payments,
  }) = _PaymentDetailsModel;

  factory PaymentDetailsModel.fromJson(Map<String, dynamic> json) =>
      _$PaymentDetailsModelFromJson(json);
}
