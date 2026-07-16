import 'package:padmavatiupdated/core/exporters/app_export.dart';

part 'user_payment_model.g.dart';
part 'user_payment_model.freezed.dart';

@freezed
abstract class UserPaymentModel with _$UserPaymentModel {
  const factory UserPaymentModel({
    int? id,
    @JsonKey(name: "student_name") String? name,
    @JsonKey(name: "mobile_no") String? mobileNo,
    @JsonKey(name: "transaction_code") String? code,
    @JsonKey(name: "mess_type") String? messType,
    @JsonKey(name: "mess_time") String? messTime,
    @JsonKey(name: "start_date") String? startDate,
    @JsonKey(name: "end_date") String? endDate,
    @JsonKey(name: "total_amount") String? totalAmount,
    @JsonKey(name: "paid_amount") String? paidAmount,
    @JsonKey(name: "pending_amount") int? pendingAmount,
    @JsonKey(name: "payment_status") String? paymentStatus,
    @JsonKey(name: "payment_status_text") String? paymentStatusText,
  }) = _UserPaymentModel;

  factory UserPaymentModel.fromJson(Map<String, dynamic> json) =>
      _$UserPaymentModelFromJson(json);
}
