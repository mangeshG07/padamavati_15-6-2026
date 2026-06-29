import 'package:padmavatiupdated/core/exporters/app_export.dart';
part 'leave_request_model.g.dart';
part 'leave_request_model.freezed.dart';

@freezed
abstract class LeaveRequestModel with _$LeaveRequestModel {
  const factory LeaveRequestModel({
    int? id,
    @JsonKey(name: 'from_date') String? fromDate,
    @JsonKey(name: 'to_date') String? toDate,
    @JsonKey(name: 'total_days') int? totalDays,
    String? gender,
    @JsonKey(name: 'branch_id') int? branchId,
    String? status,
    @JsonKey(name: 'status_text') String? statusText,
    @JsonKey(name: 'created_at') String? createdAt,
  }) = _LeaveRequestModel;

  factory LeaveRequestModel.fromJson(Map<String, dynamic> json) =>
      _$LeaveRequestModelFromJson(json);
}
