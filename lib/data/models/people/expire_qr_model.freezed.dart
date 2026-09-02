// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'expire_qr_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ExpireQrModel {

@JsonKey(name: 'student_name') String? get name;@JsonKey(name: 'meal_time') String? get mealTime;@JsonKey(name: 'expired_at') String? get expiredAt; String? get status;
/// Create a copy of ExpireQrModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ExpireQrModelCopyWith<ExpireQrModel> get copyWith => _$ExpireQrModelCopyWithImpl<ExpireQrModel>(this as ExpireQrModel, _$identity);

  /// Serializes this ExpireQrModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ExpireQrModel&&(identical(other.name, name) || other.name == name)&&(identical(other.mealTime, mealTime) || other.mealTime == mealTime)&&(identical(other.expiredAt, expiredAt) || other.expiredAt == expiredAt)&&(identical(other.status, status) || other.status == status));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,mealTime,expiredAt,status);

@override
String toString() {
  return 'ExpireQrModel(name: $name, mealTime: $mealTime, expiredAt: $expiredAt, status: $status)';
}


}

/// @nodoc
abstract mixin class $ExpireQrModelCopyWith<$Res>  {
  factory $ExpireQrModelCopyWith(ExpireQrModel value, $Res Function(ExpireQrModel) _then) = _$ExpireQrModelCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'student_name') String? name,@JsonKey(name: 'meal_time') String? mealTime,@JsonKey(name: 'expired_at') String? expiredAt, String? status
});




}
/// @nodoc
class _$ExpireQrModelCopyWithImpl<$Res>
    implements $ExpireQrModelCopyWith<$Res> {
  _$ExpireQrModelCopyWithImpl(this._self, this._then);

  final ExpireQrModel _self;
  final $Res Function(ExpireQrModel) _then;

/// Create a copy of ExpireQrModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? name = freezed,Object? mealTime = freezed,Object? expiredAt = freezed,Object? status = freezed,}) {
  return _then(_self.copyWith(
name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,mealTime: freezed == mealTime ? _self.mealTime : mealTime // ignore: cast_nullable_to_non_nullable
as String?,expiredAt: freezed == expiredAt ? _self.expiredAt : expiredAt // ignore: cast_nullable_to_non_nullable
as String?,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [ExpireQrModel].
extension ExpireQrModelPatterns on ExpireQrModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ExpireQrModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ExpireQrModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ExpireQrModel value)  $default,){
final _that = this;
switch (_that) {
case _ExpireQrModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ExpireQrModel value)?  $default,){
final _that = this;
switch (_that) {
case _ExpireQrModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'student_name')  String? name, @JsonKey(name: 'meal_time')  String? mealTime, @JsonKey(name: 'expired_at')  String? expiredAt,  String? status)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ExpireQrModel() when $default != null:
return $default(_that.name,_that.mealTime,_that.expiredAt,_that.status);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'student_name')  String? name, @JsonKey(name: 'meal_time')  String? mealTime, @JsonKey(name: 'expired_at')  String? expiredAt,  String? status)  $default,) {final _that = this;
switch (_that) {
case _ExpireQrModel():
return $default(_that.name,_that.mealTime,_that.expiredAt,_that.status);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'student_name')  String? name, @JsonKey(name: 'meal_time')  String? mealTime, @JsonKey(name: 'expired_at')  String? expiredAt,  String? status)?  $default,) {final _that = this;
switch (_that) {
case _ExpireQrModel() when $default != null:
return $default(_that.name,_that.mealTime,_that.expiredAt,_that.status);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ExpireQrModel implements ExpireQrModel {
  const _ExpireQrModel({@JsonKey(name: 'student_name') this.name, @JsonKey(name: 'meal_time') this.mealTime, @JsonKey(name: 'expired_at') this.expiredAt, this.status});
  factory _ExpireQrModel.fromJson(Map<String, dynamic> json) => _$ExpireQrModelFromJson(json);

@override@JsonKey(name: 'student_name') final  String? name;
@override@JsonKey(name: 'meal_time') final  String? mealTime;
@override@JsonKey(name: 'expired_at') final  String? expiredAt;
@override final  String? status;

/// Create a copy of ExpireQrModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ExpireQrModelCopyWith<_ExpireQrModel> get copyWith => __$ExpireQrModelCopyWithImpl<_ExpireQrModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ExpireQrModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ExpireQrModel&&(identical(other.name, name) || other.name == name)&&(identical(other.mealTime, mealTime) || other.mealTime == mealTime)&&(identical(other.expiredAt, expiredAt) || other.expiredAt == expiredAt)&&(identical(other.status, status) || other.status == status));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,mealTime,expiredAt,status);

@override
String toString() {
  return 'ExpireQrModel(name: $name, mealTime: $mealTime, expiredAt: $expiredAt, status: $status)';
}


}

/// @nodoc
abstract mixin class _$ExpireQrModelCopyWith<$Res> implements $ExpireQrModelCopyWith<$Res> {
  factory _$ExpireQrModelCopyWith(_ExpireQrModel value, $Res Function(_ExpireQrModel) _then) = __$ExpireQrModelCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'student_name') String? name,@JsonKey(name: 'meal_time') String? mealTime,@JsonKey(name: 'expired_at') String? expiredAt, String? status
});




}
/// @nodoc
class __$ExpireQrModelCopyWithImpl<$Res>
    implements _$ExpireQrModelCopyWith<$Res> {
  __$ExpireQrModelCopyWithImpl(this._self, this._then);

  final _ExpireQrModel _self;
  final $Res Function(_ExpireQrModel) _then;

/// Create a copy of ExpireQrModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? name = freezed,Object? mealTime = freezed,Object? expiredAt = freezed,Object? status = freezed,}) {
  return _then(_ExpireQrModel(
name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,mealTime: freezed == mealTime ? _self.mealTime : mealTime // ignore: cast_nullable_to_non_nullable
as String?,expiredAt: freezed == expiredAt ? _self.expiredAt : expiredAt // ignore: cast_nullable_to_non_nullable
as String?,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
