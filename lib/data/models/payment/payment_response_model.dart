import 'package:padmavatiupdated/core/exporters/app_export.dart';

part 'payment_response_model.freezed.dart';
part 'payment_response_model.g.dart';

// @freezed
// abstract class PaymentResponseModel with _$PaymentResponseModel {
//   const factory PaymentResponseModel({PaymentData? data}) =
//       _PaymentResponseModel;
//
//   factory PaymentResponseModel.fromJson(Map<String, dynamic> json) =>
//       _$PaymentResponseModelFromJson(json);
// }

@freezed
abstract class PaymentData with _$PaymentData {
  const factory PaymentData({@Default([]) List<PaymentModel> payments}) =
      _PaymentData;

  factory PaymentData.fromJson(Map<String, dynamic> json) =>
      _$PaymentDataFromJson(json);
}
