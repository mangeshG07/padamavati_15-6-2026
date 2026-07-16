import 'package:padmavatiupdated/core/exporters/app_export.dart';

part 'pay_response_model.freezed.dart';
part 'pay_response_model.g.dart';

@freezed
abstract class PaymentResponseModel with _$PaymentResponseModel {
  const factory PaymentResponseModel({
    @JsonKey(name: 'total_count') int? totalCount,
    @JsonKey(name: 'total_pages') int? totalPages,
    @JsonKey(name: 'current_page') int? currentPage,
    @JsonKey(name: 'per_page') int? perPage,
    List<UserPaymentModel>? users,
  }) = _PaymentResponseModel;

  factory PaymentResponseModel.fromJson(Map<String, dynamic> json) =>
      _$PaymentResponseModelFromJson(json);
}
