// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'coupon_summary_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$CouponSummaryModel {

@JsonKey(name: 'total_coupons') int? get totalCoupons;@JsonKey(name: 'used_coupons') int? get usedCoupons;@JsonKey(name: 'today_coupons') int? get todayCoupons;@JsonKey(name: 'remaining_coupons') int? get remainingCoupons;@JsonKey(name: 'package_end_date') String? get expiryDate;
/// Create a copy of CouponSummaryModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CouponSummaryModelCopyWith<CouponSummaryModel> get copyWith => _$CouponSummaryModelCopyWithImpl<CouponSummaryModel>(this as CouponSummaryModel, _$identity);

  /// Serializes this CouponSummaryModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CouponSummaryModel&&(identical(other.totalCoupons, totalCoupons) || other.totalCoupons == totalCoupons)&&(identical(other.usedCoupons, usedCoupons) || other.usedCoupons == usedCoupons)&&(identical(other.todayCoupons, todayCoupons) || other.todayCoupons == todayCoupons)&&(identical(other.remainingCoupons, remainingCoupons) || other.remainingCoupons == remainingCoupons)&&(identical(other.expiryDate, expiryDate) || other.expiryDate == expiryDate));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,totalCoupons,usedCoupons,todayCoupons,remainingCoupons,expiryDate);

@override
String toString() {
  return 'CouponSummaryModel(totalCoupons: $totalCoupons, usedCoupons: $usedCoupons, todayCoupons: $todayCoupons, remainingCoupons: $remainingCoupons, expiryDate: $expiryDate)';
}


}

/// @nodoc
abstract mixin class $CouponSummaryModelCopyWith<$Res>  {
  factory $CouponSummaryModelCopyWith(CouponSummaryModel value, $Res Function(CouponSummaryModel) _then) = _$CouponSummaryModelCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'total_coupons') int? totalCoupons,@JsonKey(name: 'used_coupons') int? usedCoupons,@JsonKey(name: 'today_coupons') int? todayCoupons,@JsonKey(name: 'remaining_coupons') int? remainingCoupons,@JsonKey(name: 'package_end_date') String? expiryDate
});




}
/// @nodoc
class _$CouponSummaryModelCopyWithImpl<$Res>
    implements $CouponSummaryModelCopyWith<$Res> {
  _$CouponSummaryModelCopyWithImpl(this._self, this._then);

  final CouponSummaryModel _self;
  final $Res Function(CouponSummaryModel) _then;

/// Create a copy of CouponSummaryModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? totalCoupons = freezed,Object? usedCoupons = freezed,Object? todayCoupons = freezed,Object? remainingCoupons = freezed,Object? expiryDate = freezed,}) {
  return _then(_self.copyWith(
totalCoupons: freezed == totalCoupons ? _self.totalCoupons : totalCoupons // ignore: cast_nullable_to_non_nullable
as int?,usedCoupons: freezed == usedCoupons ? _self.usedCoupons : usedCoupons // ignore: cast_nullable_to_non_nullable
as int?,todayCoupons: freezed == todayCoupons ? _self.todayCoupons : todayCoupons // ignore: cast_nullable_to_non_nullable
as int?,remainingCoupons: freezed == remainingCoupons ? _self.remainingCoupons : remainingCoupons // ignore: cast_nullable_to_non_nullable
as int?,expiryDate: freezed == expiryDate ? _self.expiryDate : expiryDate // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [CouponSummaryModel].
extension CouponSummaryModelPatterns on CouponSummaryModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CouponSummaryModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CouponSummaryModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CouponSummaryModel value)  $default,){
final _that = this;
switch (_that) {
case _CouponSummaryModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CouponSummaryModel value)?  $default,){
final _that = this;
switch (_that) {
case _CouponSummaryModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'total_coupons')  int? totalCoupons, @JsonKey(name: 'used_coupons')  int? usedCoupons, @JsonKey(name: 'today_coupons')  int? todayCoupons, @JsonKey(name: 'remaining_coupons')  int? remainingCoupons, @JsonKey(name: 'package_end_date')  String? expiryDate)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CouponSummaryModel() when $default != null:
return $default(_that.totalCoupons,_that.usedCoupons,_that.todayCoupons,_that.remainingCoupons,_that.expiryDate);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'total_coupons')  int? totalCoupons, @JsonKey(name: 'used_coupons')  int? usedCoupons, @JsonKey(name: 'today_coupons')  int? todayCoupons, @JsonKey(name: 'remaining_coupons')  int? remainingCoupons, @JsonKey(name: 'package_end_date')  String? expiryDate)  $default,) {final _that = this;
switch (_that) {
case _CouponSummaryModel():
return $default(_that.totalCoupons,_that.usedCoupons,_that.todayCoupons,_that.remainingCoupons,_that.expiryDate);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'total_coupons')  int? totalCoupons, @JsonKey(name: 'used_coupons')  int? usedCoupons, @JsonKey(name: 'today_coupons')  int? todayCoupons, @JsonKey(name: 'remaining_coupons')  int? remainingCoupons, @JsonKey(name: 'package_end_date')  String? expiryDate)?  $default,) {final _that = this;
switch (_that) {
case _CouponSummaryModel() when $default != null:
return $default(_that.totalCoupons,_that.usedCoupons,_that.todayCoupons,_that.remainingCoupons,_that.expiryDate);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CouponSummaryModel implements CouponSummaryModel {
  const _CouponSummaryModel({@JsonKey(name: 'total_coupons') this.totalCoupons, @JsonKey(name: 'used_coupons') this.usedCoupons, @JsonKey(name: 'today_coupons') this.todayCoupons, @JsonKey(name: 'remaining_coupons') this.remainingCoupons, @JsonKey(name: 'package_end_date') this.expiryDate});
  factory _CouponSummaryModel.fromJson(Map<String, dynamic> json) => _$CouponSummaryModelFromJson(json);

@override@JsonKey(name: 'total_coupons') final  int? totalCoupons;
@override@JsonKey(name: 'used_coupons') final  int? usedCoupons;
@override@JsonKey(name: 'today_coupons') final  int? todayCoupons;
@override@JsonKey(name: 'remaining_coupons') final  int? remainingCoupons;
@override@JsonKey(name: 'package_end_date') final  String? expiryDate;

/// Create a copy of CouponSummaryModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CouponSummaryModelCopyWith<_CouponSummaryModel> get copyWith => __$CouponSummaryModelCopyWithImpl<_CouponSummaryModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CouponSummaryModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CouponSummaryModel&&(identical(other.totalCoupons, totalCoupons) || other.totalCoupons == totalCoupons)&&(identical(other.usedCoupons, usedCoupons) || other.usedCoupons == usedCoupons)&&(identical(other.todayCoupons, todayCoupons) || other.todayCoupons == todayCoupons)&&(identical(other.remainingCoupons, remainingCoupons) || other.remainingCoupons == remainingCoupons)&&(identical(other.expiryDate, expiryDate) || other.expiryDate == expiryDate));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,totalCoupons,usedCoupons,todayCoupons,remainingCoupons,expiryDate);

@override
String toString() {
  return 'CouponSummaryModel(totalCoupons: $totalCoupons, usedCoupons: $usedCoupons, todayCoupons: $todayCoupons, remainingCoupons: $remainingCoupons, expiryDate: $expiryDate)';
}


}

/// @nodoc
abstract mixin class _$CouponSummaryModelCopyWith<$Res> implements $CouponSummaryModelCopyWith<$Res> {
  factory _$CouponSummaryModelCopyWith(_CouponSummaryModel value, $Res Function(_CouponSummaryModel) _then) = __$CouponSummaryModelCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'total_coupons') int? totalCoupons,@JsonKey(name: 'used_coupons') int? usedCoupons,@JsonKey(name: 'today_coupons') int? todayCoupons,@JsonKey(name: 'remaining_coupons') int? remainingCoupons,@JsonKey(name: 'package_end_date') String? expiryDate
});




}
/// @nodoc
class __$CouponSummaryModelCopyWithImpl<$Res>
    implements _$CouponSummaryModelCopyWith<$Res> {
  __$CouponSummaryModelCopyWithImpl(this._self, this._then);

  final _CouponSummaryModel _self;
  final $Res Function(_CouponSummaryModel) _then;

/// Create a copy of CouponSummaryModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? totalCoupons = freezed,Object? usedCoupons = freezed,Object? todayCoupons = freezed,Object? remainingCoupons = freezed,Object? expiryDate = freezed,}) {
  return _then(_CouponSummaryModel(
totalCoupons: freezed == totalCoupons ? _self.totalCoupons : totalCoupons // ignore: cast_nullable_to_non_nullable
as int?,usedCoupons: freezed == usedCoupons ? _self.usedCoupons : usedCoupons // ignore: cast_nullable_to_non_nullable
as int?,todayCoupons: freezed == todayCoupons ? _self.todayCoupons : todayCoupons // ignore: cast_nullable_to_non_nullable
as int?,remainingCoupons: freezed == remainingCoupons ? _self.remainingCoupons : remainingCoupons // ignore: cast_nullable_to_non_nullable
as int?,expiryDate: freezed == expiryDate ? _self.expiryDate : expiryDate // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
