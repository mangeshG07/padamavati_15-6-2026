import 'package:padmavatiupdated/core/exporters/app_export.dart';

part 'scanned_response_model.freezed.dart';
part 'scanned_response_model.g.dart';

@freezed
abstract class ScannedResponseModel with _$ScannedResponseModel {
  const factory ScannedResponseModel({
    @JsonKey(name: 'mess_time') String? messTime,
    @JsonKey(name: 'total_count') int? totalCount,
    @JsonKey(name: 'total_pages') int? totalPages,
    @JsonKey(name: 'current_page') int? currentPage,
    @JsonKey(name: 'per_page') int? perPage,
    @JsonKey(name: 'scanned_users') List<ScannedUserModel>? scannedUsers,
  }) = _ScannedResponseModel;

  factory ScannedResponseModel.fromJson(Map<String, dynamic> json) =>
      _$ScannedResponseModelFromJson(json);
}
