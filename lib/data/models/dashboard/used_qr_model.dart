import 'package:freezed_annotation/freezed_annotation.dart';

part 'used_qr_model.freezed.dart';
part 'used_qr_model.g.dart';

@freezed
abstract class UsedQr with _$UsedQr {
  const factory UsedQr({
    @JsonKey(name: 'mess_valid_date') required String messValidDate,
    required String mess,
    @JsonKey(name: 'mess_type') required String messType,
    @JsonKey(name: 'scanned_at') required String scannedAt,
    @JsonKey(name: 'scanned_by') required String scannedBy,
    @JsonKey(name: 'scanned_by_name') required String scannedByName,
  }) = _UsedQr;

  factory UsedQr.fromJson(Map<String, dynamic> json) => _$UsedQrFromJson(json);
}
