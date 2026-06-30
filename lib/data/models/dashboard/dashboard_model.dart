import 'package:padmavatiupdated/core/exporters/app_export.dart';
part 'dashboard_model.g.dart';
part 'dashboard_model.freezed.dart';

@freezed
abstract class DashboardModel with _$DashboardModel {
  const factory DashboardModel({
    String? name,
    @JsonKey(name: 'role_id') int? roleId,
    @JsonKey(name: 'branch_id') int? branchId,
    @JsonKey(name: 'branch_name') String? branchName,
    @JsonKey(name: 'today_overview') OverViewModel? todayOverview,
  }) = _DashboardModel;

  factory DashboardModel.fromJson(Map<String, dynamic> json) =>
      _$DashboardModelFromJson(json);
}
