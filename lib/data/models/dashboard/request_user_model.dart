import 'package:padmavatiupdated/core/exporters/app_export.dart';
part 'request_user_model.g.dart';
part 'request_user_model.freezed.dart';

@freezed
abstract class RequestUserModel with _$RequestUserModel {
  const factory RequestUserModel({
    String? name,
    @JsonKey(name: 'mobile_no') String? mobileNo,
    @JsonKey(name: 'from_date') String? fromDate,
    @JsonKey(name: 'to_date') String? toDate,
    @JsonKey(name: 'total_days') int? totalDays,

    int? id,
    @JsonKey(name: 'food_name') String? foodName,
    @JsonKey(name: 'requested_by') String? requestedBy,
    @JsonKey(name: 'for_date') String? forDate,
    @JsonKey(name: 'requested_on') String? requestedOn,
  }) = _RequestUserModel;

  factory RequestUserModel.fromJson(Map<String, dynamic> json) =>
      _$RequestUserModelFromJson(json);
}
