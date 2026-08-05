// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'qr_user_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$QRUserDataModel {

@JsonKey(name: 'user_id') int? get userId; String? get name; String? get branch;@JsonKey(name: 'profile_image') String? get profileImage; String? get gender;@JsonKey(name: 'mess_type') String? get messType;@JsonKey(name: 'mess_time') String? get messTime;@JsonKey(name: 'remaining_coupons') int? get remainingCoupons;@JsonKey(name: 'last_mess_day') String? get lastMessDay;
/// Create a copy of QRUserDataModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$QRUserDataModelCopyWith<QRUserDataModel> get copyWith => _$QRUserDataModelCopyWithImpl<QRUserDataModel>(this as QRUserDataModel, _$identity);

  /// Serializes this QRUserDataModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is QRUserDataModel&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.name, name) || other.name == name)&&(identical(other.branch, branch) || other.branch == branch)&&(identical(other.profileImage, profileImage) || other.profileImage == profileImage)&&(identical(other.gender, gender) || other.gender == gender)&&(identical(other.messType, messType) || other.messType == messType)&&(identical(other.messTime, messTime) || other.messTime == messTime)&&(identical(other.remainingCoupons, remainingCoupons) || other.remainingCoupons == remainingCoupons)&&(identical(other.lastMessDay, lastMessDay) || other.lastMessDay == lastMessDay));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,userId,name,branch,profileImage,gender,messType,messTime,remainingCoupons,lastMessDay);

@override
String toString() {
  return 'QRUserDataModel(userId: $userId, name: $name, branch: $branch, profileImage: $profileImage, gender: $gender, messType: $messType, messTime: $messTime, remainingCoupons: $remainingCoupons, lastMessDay: $lastMessDay)';
}


}

/// @nodoc
abstract mixin class $QRUserDataModelCopyWith<$Res>  {
  factory $QRUserDataModelCopyWith(QRUserDataModel value, $Res Function(QRUserDataModel) _then) = _$QRUserDataModelCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'user_id') int? userId, String? name, String? branch,@JsonKey(name: 'profile_image') String? profileImage, String? gender,@JsonKey(name: 'mess_type') String? messType,@JsonKey(name: 'mess_time') String? messTime,@JsonKey(name: 'remaining_coupons') int? remainingCoupons,@JsonKey(name: 'last_mess_day') String? lastMessDay
});




}
/// @nodoc
class _$QRUserDataModelCopyWithImpl<$Res>
    implements $QRUserDataModelCopyWith<$Res> {
  _$QRUserDataModelCopyWithImpl(this._self, this._then);

  final QRUserDataModel _self;
  final $Res Function(QRUserDataModel) _then;

/// Create a copy of QRUserDataModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? userId = freezed,Object? name = freezed,Object? branch = freezed,Object? profileImage = freezed,Object? gender = freezed,Object? messType = freezed,Object? messTime = freezed,Object? remainingCoupons = freezed,Object? lastMessDay = freezed,}) {
  return _then(_self.copyWith(
userId: freezed == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as int?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,branch: freezed == branch ? _self.branch : branch // ignore: cast_nullable_to_non_nullable
as String?,profileImage: freezed == profileImage ? _self.profileImage : profileImage // ignore: cast_nullable_to_non_nullable
as String?,gender: freezed == gender ? _self.gender : gender // ignore: cast_nullable_to_non_nullable
as String?,messType: freezed == messType ? _self.messType : messType // ignore: cast_nullable_to_non_nullable
as String?,messTime: freezed == messTime ? _self.messTime : messTime // ignore: cast_nullable_to_non_nullable
as String?,remainingCoupons: freezed == remainingCoupons ? _self.remainingCoupons : remainingCoupons // ignore: cast_nullable_to_non_nullable
as int?,lastMessDay: freezed == lastMessDay ? _self.lastMessDay : lastMessDay // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [QRUserDataModel].
extension QRUserDataModelPatterns on QRUserDataModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _QRUserDataModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _QRUserDataModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _QRUserDataModel value)  $default,){
final _that = this;
switch (_that) {
case _QRUserDataModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _QRUserDataModel value)?  $default,){
final _that = this;
switch (_that) {
case _QRUserDataModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'user_id')  int? userId,  String? name,  String? branch, @JsonKey(name: 'profile_image')  String? profileImage,  String? gender, @JsonKey(name: 'mess_type')  String? messType, @JsonKey(name: 'mess_time')  String? messTime, @JsonKey(name: 'remaining_coupons')  int? remainingCoupons, @JsonKey(name: 'last_mess_day')  String? lastMessDay)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _QRUserDataModel() when $default != null:
return $default(_that.userId,_that.name,_that.branch,_that.profileImage,_that.gender,_that.messType,_that.messTime,_that.remainingCoupons,_that.lastMessDay);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'user_id')  int? userId,  String? name,  String? branch, @JsonKey(name: 'profile_image')  String? profileImage,  String? gender, @JsonKey(name: 'mess_type')  String? messType, @JsonKey(name: 'mess_time')  String? messTime, @JsonKey(name: 'remaining_coupons')  int? remainingCoupons, @JsonKey(name: 'last_mess_day')  String? lastMessDay)  $default,) {final _that = this;
switch (_that) {
case _QRUserDataModel():
return $default(_that.userId,_that.name,_that.branch,_that.profileImage,_that.gender,_that.messType,_that.messTime,_that.remainingCoupons,_that.lastMessDay);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'user_id')  int? userId,  String? name,  String? branch, @JsonKey(name: 'profile_image')  String? profileImage,  String? gender, @JsonKey(name: 'mess_type')  String? messType, @JsonKey(name: 'mess_time')  String? messTime, @JsonKey(name: 'remaining_coupons')  int? remainingCoupons, @JsonKey(name: 'last_mess_day')  String? lastMessDay)?  $default,) {final _that = this;
switch (_that) {
case _QRUserDataModel() when $default != null:
return $default(_that.userId,_that.name,_that.branch,_that.profileImage,_that.gender,_that.messType,_that.messTime,_that.remainingCoupons,_that.lastMessDay);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _QRUserDataModel implements QRUserDataModel {
  const _QRUserDataModel({@JsonKey(name: 'user_id') this.userId, this.name, this.branch, @JsonKey(name: 'profile_image') this.profileImage, this.gender, @JsonKey(name: 'mess_type') this.messType, @JsonKey(name: 'mess_time') this.messTime, @JsonKey(name: 'remaining_coupons') this.remainingCoupons, @JsonKey(name: 'last_mess_day') this.lastMessDay});
  factory _QRUserDataModel.fromJson(Map<String, dynamic> json) => _$QRUserDataModelFromJson(json);

@override@JsonKey(name: 'user_id') final  int? userId;
@override final  String? name;
@override final  String? branch;
@override@JsonKey(name: 'profile_image') final  String? profileImage;
@override final  String? gender;
@override@JsonKey(name: 'mess_type') final  String? messType;
@override@JsonKey(name: 'mess_time') final  String? messTime;
@override@JsonKey(name: 'remaining_coupons') final  int? remainingCoupons;
@override@JsonKey(name: 'last_mess_day') final  String? lastMessDay;

/// Create a copy of QRUserDataModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$QRUserDataModelCopyWith<_QRUserDataModel> get copyWith => __$QRUserDataModelCopyWithImpl<_QRUserDataModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$QRUserDataModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _QRUserDataModel&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.name, name) || other.name == name)&&(identical(other.branch, branch) || other.branch == branch)&&(identical(other.profileImage, profileImage) || other.profileImage == profileImage)&&(identical(other.gender, gender) || other.gender == gender)&&(identical(other.messType, messType) || other.messType == messType)&&(identical(other.messTime, messTime) || other.messTime == messTime)&&(identical(other.remainingCoupons, remainingCoupons) || other.remainingCoupons == remainingCoupons)&&(identical(other.lastMessDay, lastMessDay) || other.lastMessDay == lastMessDay));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,userId,name,branch,profileImage,gender,messType,messTime,remainingCoupons,lastMessDay);

@override
String toString() {
  return 'QRUserDataModel(userId: $userId, name: $name, branch: $branch, profileImage: $profileImage, gender: $gender, messType: $messType, messTime: $messTime, remainingCoupons: $remainingCoupons, lastMessDay: $lastMessDay)';
}


}

/// @nodoc
abstract mixin class _$QRUserDataModelCopyWith<$Res> implements $QRUserDataModelCopyWith<$Res> {
  factory _$QRUserDataModelCopyWith(_QRUserDataModel value, $Res Function(_QRUserDataModel) _then) = __$QRUserDataModelCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'user_id') int? userId, String? name, String? branch,@JsonKey(name: 'profile_image') String? profileImage, String? gender,@JsonKey(name: 'mess_type') String? messType,@JsonKey(name: 'mess_time') String? messTime,@JsonKey(name: 'remaining_coupons') int? remainingCoupons,@JsonKey(name: 'last_mess_day') String? lastMessDay
});




}
/// @nodoc
class __$QRUserDataModelCopyWithImpl<$Res>
    implements _$QRUserDataModelCopyWith<$Res> {
  __$QRUserDataModelCopyWithImpl(this._self, this._then);

  final _QRUserDataModel _self;
  final $Res Function(_QRUserDataModel) _then;

/// Create a copy of QRUserDataModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? userId = freezed,Object? name = freezed,Object? branch = freezed,Object? profileImage = freezed,Object? gender = freezed,Object? messType = freezed,Object? messTime = freezed,Object? remainingCoupons = freezed,Object? lastMessDay = freezed,}) {
  return _then(_QRUserDataModel(
userId: freezed == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as int?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,branch: freezed == branch ? _self.branch : branch // ignore: cast_nullable_to_non_nullable
as String?,profileImage: freezed == profileImage ? _self.profileImage : profileImage // ignore: cast_nullable_to_non_nullable
as String?,gender: freezed == gender ? _self.gender : gender // ignore: cast_nullable_to_non_nullable
as String?,messType: freezed == messType ? _self.messType : messType // ignore: cast_nullable_to_non_nullable
as String?,messTime: freezed == messTime ? _self.messTime : messTime // ignore: cast_nullable_to_non_nullable
as String?,remainingCoupons: freezed == remainingCoupons ? _self.remainingCoupons : remainingCoupons // ignore: cast_nullable_to_non_nullable
as int?,lastMessDay: freezed == lastMessDay ? _self.lastMessDay : lastMessDay // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
