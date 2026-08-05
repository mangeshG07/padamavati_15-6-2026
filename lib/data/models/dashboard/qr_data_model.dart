import 'package:padmavatiupdated/core/exporters/app_export.dart';
part 'qr_data_model.g.dart';
part 'qr_data_model.freezed.dart';

@freezed
abstract class QRDataModel with _$QRDataModel {
  const factory QRDataModel({
    @JsonKey(name: 'total_qrs') int? totalQr,
    @JsonKey(name: 'used_qrs') int? usedQr,
    @JsonKey(name: 'pending_qrs') int? pendingQr,
    @JsonKey(name: 'expired_qrs') int? expiredQr,
  }) = _QRDataModel;
  factory QRDataModel.fromJson(Map<String, dynamic> json) =>
      _$QRDataModelFromJson(json);
}
