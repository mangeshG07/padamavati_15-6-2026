import 'package:padmavatiupdated/core/exporters/app_export.dart';
part 'leave_response_model.g.dart';
part 'leave_response_model.freezed.dart';

@freezed
abstract class LeaveResponseModel with _$LeaveResponseModel {
  const factory LeaveResponseModel({
    @JsonKey(name: 'total_count') int? totalCount,
    @JsonKey(name: 'total_pages') int? totalPages,
    @JsonKey(name: 'current_page') int? currentPage,
    @JsonKey(name: 'per_page') int? perPage,
    @JsonKey(name: 'leave_requests') List<LeaveRequestModel>? leaveRequests,
  }) = _LeaveResponseModel;

  factory LeaveResponseModel.fromJson(Map<String, dynamic> json) =>
      _$LeaveResponseModelFromJson(json);
}
