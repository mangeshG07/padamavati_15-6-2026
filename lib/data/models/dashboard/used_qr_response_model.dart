import 'package:padmavatiupdated/core/exporters/app_export.dart';

part 'used_qr_response_model.freezed.dart';
part 'used_qr_response_model.g.dart';

@freezed
abstract class UsedQRResponseModel with _$UsedQRResponseModel {
  const factory UsedQRResponseModel({
    @JsonKey(name: 'student_name') String? studentName,
    @JsonKey(name: 'total_count') int? totalCount,
    @JsonKey(name: 'total_pages') int? totalPages,
    @JsonKey(name: 'current_page') int? currentPage,
    @JsonKey(name: 'per_page') int? perPage,
    @JsonKey(name: 'used_qrs') List<UsedQr>? usedQrs,
  }) = _UsedQRResponseModel;

  factory UsedQRResponseModel.fromJson(Map<String, dynamic> json) =>
      _$UsedQRResponseModelFromJson(json);
}
