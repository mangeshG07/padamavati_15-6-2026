import 'package:padmavatiupdated/core/exporters/app_export.dart';

part 'qr_response_model.g.dart';
part 'qr_response_model.freezed.dart';

@freezed
abstract class QRResponseModel with _$QRResponseModel {
  const factory QRResponseModel({
    @JsonKey(name: 'user_data') QRUserDataModel? userData,
    @JsonKey(name: 'payment_data') PaymentDataModel? paymentData,
    @JsonKey(name: 'qr_data') QRDataModel? qrData,
    @JsonKey(name: 'scan_data') ScanDataModel? scanData,
  }) = _QRResponseModel;
  factory QRResponseModel.fromJson(Map<String, dynamic> json) =>
      _$QRResponseModelFromJson(json);
}
