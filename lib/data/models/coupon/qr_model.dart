import 'package:padmavatiupdated/core/exporters/app_export.dart';
part 'qr_model.g.dart';
part 'qr_model.freezed.dart';

@freezed
abstract class QRModel with _$QRModel {
  const factory QRModel({
    @JsonKey(name: 'id') int? id,
    String? uuid,
    @JsonKey(name: 'mess_transaction_id') int? messTransactionId,
    @JsonKey(name: 'app_id') int? appId,
    @JsonKey(name: 'mess_valid_date') String? messValidDate,
    @JsonKey(name: 'mess_type') String? messType,
    @JsonKey(name: 'mess_time') String? messTime,
    String? status,
    @JsonKey(name: 'expires_at') String? expiresAt,
    @JsonKey(name: 'scanned_at') String? scannedAt,
  }) = _QRModel;

  factory QRModel.fromJson(Map<String, dynamic> json) =>
      _$QRModelFromJson(json);
}
