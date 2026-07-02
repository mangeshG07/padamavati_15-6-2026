// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'overview_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$OverViewModel {

@JsonKey(name: 'people_count') int? get peopleCount;@JsonKey(name: 'today_special_food_count') int? get todayFoodCount;@JsonKey(name: 'today_leave_count') int? get todayLeaveCount;@JsonKey(name: 'tomorrow_leave_count') int? get tomorrowLeaveCount;@JsonKey(name: 'tomorrow_special_count') int? get tomorrowFoodCount;@JsonKey(name: 'today_lunch_scan_count') int? get todayLunchScans;@JsonKey(name: 'today_dinner_scan_count') int? get todayDinnerScans;
/// Create a copy of OverViewModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$OverViewModelCopyWith<OverViewModel> get copyWith => _$OverViewModelCopyWithImpl<OverViewModel>(this as OverViewModel, _$identity);

  /// Serializes this OverViewModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is OverViewModel&&(identical(other.peopleCount, peopleCount) || other.peopleCount == peopleCount)&&(identical(other.todayFoodCount, todayFoodCount) || other.todayFoodCount == todayFoodCount)&&(identical(other.todayLeaveCount, todayLeaveCount) || other.todayLeaveCount == todayLeaveCount)&&(identical(other.tomorrowLeaveCount, tomorrowLeaveCount) || other.tomorrowLeaveCount == tomorrowLeaveCount)&&(identical(other.tomorrowFoodCount, tomorrowFoodCount) || other.tomorrowFoodCount == tomorrowFoodCount)&&(identical(other.todayLunchScans, todayLunchScans) || other.todayLunchScans == todayLunchScans)&&(identical(other.todayDinnerScans, todayDinnerScans) || other.todayDinnerScans == todayDinnerScans));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,peopleCount,todayFoodCount,todayLeaveCount,tomorrowLeaveCount,tomorrowFoodCount,todayLunchScans,todayDinnerScans);

@override
String toString() {
  return 'OverViewModel(peopleCount: $peopleCount, todayFoodCount: $todayFoodCount, todayLeaveCount: $todayLeaveCount, tomorrowLeaveCount: $tomorrowLeaveCount, tomorrowFoodCount: $tomorrowFoodCount, todayLunchScans: $todayLunchScans, todayDinnerScans: $todayDinnerScans)';
}


}

/// @nodoc
abstract mixin class $OverViewModelCopyWith<$Res>  {
  factory $OverViewModelCopyWith(OverViewModel value, $Res Function(OverViewModel) _then) = _$OverViewModelCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'people_count') int? peopleCount,@JsonKey(name: 'today_special_food_count') int? todayFoodCount,@JsonKey(name: 'today_leave_count') int? todayLeaveCount,@JsonKey(name: 'tomorrow_leave_count') int? tomorrowLeaveCount,@JsonKey(name: 'tomorrow_special_count') int? tomorrowFoodCount,@JsonKey(name: 'today_lunch_scan_count') int? todayLunchScans,@JsonKey(name: 'today_dinner_scan_count') int? todayDinnerScans
});




}
/// @nodoc
class _$OverViewModelCopyWithImpl<$Res>
    implements $OverViewModelCopyWith<$Res> {
  _$OverViewModelCopyWithImpl(this._self, this._then);

  final OverViewModel _self;
  final $Res Function(OverViewModel) _then;

/// Create a copy of OverViewModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? peopleCount = freezed,Object? todayFoodCount = freezed,Object? todayLeaveCount = freezed,Object? tomorrowLeaveCount = freezed,Object? tomorrowFoodCount = freezed,Object? todayLunchScans = freezed,Object? todayDinnerScans = freezed,}) {
  return _then(_self.copyWith(
peopleCount: freezed == peopleCount ? _self.peopleCount : peopleCount // ignore: cast_nullable_to_non_nullable
as int?,todayFoodCount: freezed == todayFoodCount ? _self.todayFoodCount : todayFoodCount // ignore: cast_nullable_to_non_nullable
as int?,todayLeaveCount: freezed == todayLeaveCount ? _self.todayLeaveCount : todayLeaveCount // ignore: cast_nullable_to_non_nullable
as int?,tomorrowLeaveCount: freezed == tomorrowLeaveCount ? _self.tomorrowLeaveCount : tomorrowLeaveCount // ignore: cast_nullable_to_non_nullable
as int?,tomorrowFoodCount: freezed == tomorrowFoodCount ? _self.tomorrowFoodCount : tomorrowFoodCount // ignore: cast_nullable_to_non_nullable
as int?,todayLunchScans: freezed == todayLunchScans ? _self.todayLunchScans : todayLunchScans // ignore: cast_nullable_to_non_nullable
as int?,todayDinnerScans: freezed == todayDinnerScans ? _self.todayDinnerScans : todayDinnerScans // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}

}


/// Adds pattern-matching-related methods to [OverViewModel].
extension OverViewModelPatterns on OverViewModel {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _OverViewModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _OverViewModel() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _OverViewModel value)  $default,){
final _that = this;
switch (_that) {
case _OverViewModel():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _OverViewModel value)?  $default,){
final _that = this;
switch (_that) {
case _OverViewModel() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'people_count')  int? peopleCount, @JsonKey(name: 'today_special_food_count')  int? todayFoodCount, @JsonKey(name: 'today_leave_count')  int? todayLeaveCount, @JsonKey(name: 'tomorrow_leave_count')  int? tomorrowLeaveCount, @JsonKey(name: 'tomorrow_special_count')  int? tomorrowFoodCount, @JsonKey(name: 'today_lunch_scan_count')  int? todayLunchScans, @JsonKey(name: 'today_dinner_scan_count')  int? todayDinnerScans)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _OverViewModel() when $default != null:
return $default(_that.peopleCount,_that.todayFoodCount,_that.todayLeaveCount,_that.tomorrowLeaveCount,_that.tomorrowFoodCount,_that.todayLunchScans,_that.todayDinnerScans);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'people_count')  int? peopleCount, @JsonKey(name: 'today_special_food_count')  int? todayFoodCount, @JsonKey(name: 'today_leave_count')  int? todayLeaveCount, @JsonKey(name: 'tomorrow_leave_count')  int? tomorrowLeaveCount, @JsonKey(name: 'tomorrow_special_count')  int? tomorrowFoodCount, @JsonKey(name: 'today_lunch_scan_count')  int? todayLunchScans, @JsonKey(name: 'today_dinner_scan_count')  int? todayDinnerScans)  $default,) {final _that = this;
switch (_that) {
case _OverViewModel():
return $default(_that.peopleCount,_that.todayFoodCount,_that.todayLeaveCount,_that.tomorrowLeaveCount,_that.tomorrowFoodCount,_that.todayLunchScans,_that.todayDinnerScans);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'people_count')  int? peopleCount, @JsonKey(name: 'today_special_food_count')  int? todayFoodCount, @JsonKey(name: 'today_leave_count')  int? todayLeaveCount, @JsonKey(name: 'tomorrow_leave_count')  int? tomorrowLeaveCount, @JsonKey(name: 'tomorrow_special_count')  int? tomorrowFoodCount, @JsonKey(name: 'today_lunch_scan_count')  int? todayLunchScans, @JsonKey(name: 'today_dinner_scan_count')  int? todayDinnerScans)?  $default,) {final _that = this;
switch (_that) {
case _OverViewModel() when $default != null:
return $default(_that.peopleCount,_that.todayFoodCount,_that.todayLeaveCount,_that.tomorrowLeaveCount,_that.tomorrowFoodCount,_that.todayLunchScans,_that.todayDinnerScans);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _OverViewModel implements OverViewModel {
  const _OverViewModel({@JsonKey(name: 'people_count') this.peopleCount, @JsonKey(name: 'today_special_food_count') this.todayFoodCount, @JsonKey(name: 'today_leave_count') this.todayLeaveCount, @JsonKey(name: 'tomorrow_leave_count') this.tomorrowLeaveCount, @JsonKey(name: 'tomorrow_special_count') this.tomorrowFoodCount, @JsonKey(name: 'today_lunch_scan_count') this.todayLunchScans, @JsonKey(name: 'today_dinner_scan_count') this.todayDinnerScans});
  factory _OverViewModel.fromJson(Map<String, dynamic> json) => _$OverViewModelFromJson(json);

@override@JsonKey(name: 'people_count') final  int? peopleCount;
@override@JsonKey(name: 'today_special_food_count') final  int? todayFoodCount;
@override@JsonKey(name: 'today_leave_count') final  int? todayLeaveCount;
@override@JsonKey(name: 'tomorrow_leave_count') final  int? tomorrowLeaveCount;
@override@JsonKey(name: 'tomorrow_special_count') final  int? tomorrowFoodCount;
@override@JsonKey(name: 'today_lunch_scan_count') final  int? todayLunchScans;
@override@JsonKey(name: 'today_dinner_scan_count') final  int? todayDinnerScans;

/// Create a copy of OverViewModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$OverViewModelCopyWith<_OverViewModel> get copyWith => __$OverViewModelCopyWithImpl<_OverViewModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$OverViewModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _OverViewModel&&(identical(other.peopleCount, peopleCount) || other.peopleCount == peopleCount)&&(identical(other.todayFoodCount, todayFoodCount) || other.todayFoodCount == todayFoodCount)&&(identical(other.todayLeaveCount, todayLeaveCount) || other.todayLeaveCount == todayLeaveCount)&&(identical(other.tomorrowLeaveCount, tomorrowLeaveCount) || other.tomorrowLeaveCount == tomorrowLeaveCount)&&(identical(other.tomorrowFoodCount, tomorrowFoodCount) || other.tomorrowFoodCount == tomorrowFoodCount)&&(identical(other.todayLunchScans, todayLunchScans) || other.todayLunchScans == todayLunchScans)&&(identical(other.todayDinnerScans, todayDinnerScans) || other.todayDinnerScans == todayDinnerScans));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,peopleCount,todayFoodCount,todayLeaveCount,tomorrowLeaveCount,tomorrowFoodCount,todayLunchScans,todayDinnerScans);

@override
String toString() {
  return 'OverViewModel(peopleCount: $peopleCount, todayFoodCount: $todayFoodCount, todayLeaveCount: $todayLeaveCount, tomorrowLeaveCount: $tomorrowLeaveCount, tomorrowFoodCount: $tomorrowFoodCount, todayLunchScans: $todayLunchScans, todayDinnerScans: $todayDinnerScans)';
}


}

/// @nodoc
abstract mixin class _$OverViewModelCopyWith<$Res> implements $OverViewModelCopyWith<$Res> {
  factory _$OverViewModelCopyWith(_OverViewModel value, $Res Function(_OverViewModel) _then) = __$OverViewModelCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'people_count') int? peopleCount,@JsonKey(name: 'today_special_food_count') int? todayFoodCount,@JsonKey(name: 'today_leave_count') int? todayLeaveCount,@JsonKey(name: 'tomorrow_leave_count') int? tomorrowLeaveCount,@JsonKey(name: 'tomorrow_special_count') int? tomorrowFoodCount,@JsonKey(name: 'today_lunch_scan_count') int? todayLunchScans,@JsonKey(name: 'today_dinner_scan_count') int? todayDinnerScans
});




}
/// @nodoc
class __$OverViewModelCopyWithImpl<$Res>
    implements _$OverViewModelCopyWith<$Res> {
  __$OverViewModelCopyWithImpl(this._self, this._then);

  final _OverViewModel _self;
  final $Res Function(_OverViewModel) _then;

/// Create a copy of OverViewModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? peopleCount = freezed,Object? todayFoodCount = freezed,Object? todayLeaveCount = freezed,Object? tomorrowLeaveCount = freezed,Object? tomorrowFoodCount = freezed,Object? todayLunchScans = freezed,Object? todayDinnerScans = freezed,}) {
  return _then(_OverViewModel(
peopleCount: freezed == peopleCount ? _self.peopleCount : peopleCount // ignore: cast_nullable_to_non_nullable
as int?,todayFoodCount: freezed == todayFoodCount ? _self.todayFoodCount : todayFoodCount // ignore: cast_nullable_to_non_nullable
as int?,todayLeaveCount: freezed == todayLeaveCount ? _self.todayLeaveCount : todayLeaveCount // ignore: cast_nullable_to_non_nullable
as int?,tomorrowLeaveCount: freezed == tomorrowLeaveCount ? _self.tomorrowLeaveCount : tomorrowLeaveCount // ignore: cast_nullable_to_non_nullable
as int?,tomorrowFoodCount: freezed == tomorrowFoodCount ? _self.tomorrowFoodCount : tomorrowFoodCount // ignore: cast_nullable_to_non_nullable
as int?,todayLunchScans: freezed == todayLunchScans ? _self.todayLunchScans : todayLunchScans // ignore: cast_nullable_to_non_nullable
as int?,todayDinnerScans: freezed == todayDinnerScans ? _self.todayDinnerScans : todayDinnerScans // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}


}

// dart format on
