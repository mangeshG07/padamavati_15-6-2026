import 'package:padmavatiupdated/core/exporters/app_export.dart';
part 'scan_data_model.g.dart';
part 'scan_data_model.freezed.dart';

@freezed
abstract class ScanDataModel with _$ScanDataModel {
  const factory ScanDataModel({
    @JsonKey(name: 'meal_type') String? scanMessType,
    @JsonKey(name: 'scanned_date') String? scannedDate,
    @JsonKey(name: 'scanned_at') String? scannedAt,
  }) = _ScanDataModel;
  factory ScanDataModel.fromJson(Map<String, dynamic> json) =>
      _$ScanDataModelFromJson(json);
}
