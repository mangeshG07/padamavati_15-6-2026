// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'overview_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_OverViewModel _$OverViewModelFromJson(Map<String, dynamic> json) =>
    _OverViewModel(
      peopleCount: (json['people_count'] as num?)?.toInt(),
      todayFoodCount: (json['today_special_food_count'] as num?)?.toInt(),
      todayLeaveCount: (json['today_leave_count'] as num?)?.toInt(),
      tomorrowLeaveCount: (json['tomorrow_leave_count'] as num?)?.toInt(),
      tomorrowFoodCount: (json['tomorrow_special_count'] as num?)?.toInt(),
      todayLunchScans: (json['today_lunch_scan_count'] as num?)?.toInt(),
      todayDinnerScans: (json['today_dinner_scan_count'] as num?)?.toInt(),
    );

Map<String, dynamic> _$OverViewModelToJson(_OverViewModel instance) =>
    <String, dynamic>{
      'people_count': instance.peopleCount,
      'today_special_food_count': instance.todayFoodCount,
      'today_leave_count': instance.todayLeaveCount,
      'tomorrow_leave_count': instance.tomorrowLeaveCount,
      'tomorrow_special_count': instance.tomorrowFoodCount,
      'today_lunch_scan_count': instance.todayLunchScans,
      'today_dinner_scan_count': instance.todayDinnerScans,
    };
