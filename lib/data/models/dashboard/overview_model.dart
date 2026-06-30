import 'package:padmavatiupdated/core/exporters/app_export.dart';
part 'overview_model.g.dart';
part 'overview_model.freezed.dart';

@freezed
abstract class OverViewModel with _$OverViewModel {
  const factory OverViewModel({
    @JsonKey(name: 'people_count') int? peopleCount,
    @JsonKey(name: 'today_special_food_count') int? todayFoodCount,
    @JsonKey(name: 'today_leave_count') int? todayLeaveCount,
    @JsonKey(name: 'tomorrow_leave_count') int? tomorrowLeaveCount,
    @JsonKey(name: 'tomorrow_special_count') int? tomorrowFoodCount,
  }) = _OverViewModel;

  factory OverViewModel.fromJson(Map<String, dynamic> json) =>
      _$OverViewModelFromJson(json);
}
