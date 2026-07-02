// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'scanned_user_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ScannedUserModel {

@JsonKey(name: 'student_id') int? get studentId;@JsonKey(name: 'user_name') String? get userName;@JsonKey(name: 'profile_image') String? get profileImage;@JsonKey(name: 'mess_type') String? get messType; String? get meal;@JsonKey(name: 'scanned_at') String? get scannedAt;@JsonKey(name: 'scanned_by') String? get scannedBy;
/// Create a copy of ScannedUserModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ScannedUserModelCopyWith<ScannedUserModel> get copyWith => _$ScannedUserModelCopyWithImpl<ScannedUserModel>(this as ScannedUserModel, _$identity);

  /// Serializes this ScannedUserModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ScannedUserModel&&(identical(other.studentId, studentId) || other.studentId == studentId)&&(identical(other.userName, userName) || other.userName == userName)&&(identical(other.profileImage, profileImage) || other.profileImage == profileImage)&&(identical(other.messType, messType) || other.messType == messType)&&(identical(other.meal, meal) || other.meal == meal)&&(identical(other.scannedAt, scannedAt) || other.scannedAt == scannedAt)&&(identical(other.scannedBy, scannedBy) || other.scannedBy == scannedBy));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,studentId,userName,profileImage,messType,meal,scannedAt,scannedBy);

@override
String toString() {
  return 'ScannedUserModel(studentId: $studentId, userName: $userName, profileImage: $profileImage, messType: $messType, meal: $meal, scannedAt: $scannedAt, scannedBy: $scannedBy)';
}


}

/// @nodoc
abstract mixin class $ScannedUserModelCopyWith<$Res>  {
  factory $ScannedUserModelCopyWith(ScannedUserModel value, $Res Function(ScannedUserModel) _then) = _$ScannedUserModelCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'student_id') int? studentId,@JsonKey(name: 'user_name') String? userName,@JsonKey(name: 'profile_image') String? profileImage,@JsonKey(name: 'mess_type') String? messType, String? meal,@JsonKey(name: 'scanned_at') String? scannedAt,@JsonKey(name: 'scanned_by') String? scannedBy
});




}
/// @nodoc
class _$ScannedUserModelCopyWithImpl<$Res>
    implements $ScannedUserModelCopyWith<$Res> {
  _$ScannedUserModelCopyWithImpl(this._self, this._then);

  final ScannedUserModel _self;
  final $Res Function(ScannedUserModel) _then;

/// Create a copy of ScannedUserModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? studentId = freezed,Object? userName = freezed,Object? profileImage = freezed,Object? messType = freezed,Object? meal = freezed,Object? scannedAt = freezed,Object? scannedBy = freezed,}) {
  return _then(_self.copyWith(
studentId: freezed == studentId ? _self.studentId : studentId // ignore: cast_nullable_to_non_nullable
as int?,userName: freezed == userName ? _self.userName : userName // ignore: cast_nullable_to_non_nullable
as String?,profileImage: freezed == profileImage ? _self.profileImage : profileImage // ignore: cast_nullable_to_non_nullable
as String?,messType: freezed == messType ? _self.messType : messType // ignore: cast_nullable_to_non_nullable
as String?,meal: freezed == meal ? _self.meal : meal // ignore: cast_nullable_to_non_nullable
as String?,scannedAt: freezed == scannedAt ? _self.scannedAt : scannedAt // ignore: cast_nullable_to_non_nullable
as String?,scannedBy: freezed == scannedBy ? _self.scannedBy : scannedBy // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [ScannedUserModel].
extension ScannedUserModelPatterns on ScannedUserModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ScannedUserModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ScannedUserModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ScannedUserModel value)  $default,){
final _that = this;
switch (_that) {
case _ScannedUserModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ScannedUserModel value)?  $default,){
final _that = this;
switch (_that) {
case _ScannedUserModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'student_id')  int? studentId, @JsonKey(name: 'user_name')  String? userName, @JsonKey(name: 'profile_image')  String? profileImage, @JsonKey(name: 'mess_type')  String? messType,  String? meal, @JsonKey(name: 'scanned_at')  String? scannedAt, @JsonKey(name: 'scanned_by')  String? scannedBy)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ScannedUserModel() when $default != null:
return $default(_that.studentId,_that.userName,_that.profileImage,_that.messType,_that.meal,_that.scannedAt,_that.scannedBy);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'student_id')  int? studentId, @JsonKey(name: 'user_name')  String? userName, @JsonKey(name: 'profile_image')  String? profileImage, @JsonKey(name: 'mess_type')  String? messType,  String? meal, @JsonKey(name: 'scanned_at')  String? scannedAt, @JsonKey(name: 'scanned_by')  String? scannedBy)  $default,) {final _that = this;
switch (_that) {
case _ScannedUserModel():
return $default(_that.studentId,_that.userName,_that.profileImage,_that.messType,_that.meal,_that.scannedAt,_that.scannedBy);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'student_id')  int? studentId, @JsonKey(name: 'user_name')  String? userName, @JsonKey(name: 'profile_image')  String? profileImage, @JsonKey(name: 'mess_type')  String? messType,  String? meal, @JsonKey(name: 'scanned_at')  String? scannedAt, @JsonKey(name: 'scanned_by')  String? scannedBy)?  $default,) {final _that = this;
switch (_that) {
case _ScannedUserModel() when $default != null:
return $default(_that.studentId,_that.userName,_that.profileImage,_that.messType,_that.meal,_that.scannedAt,_that.scannedBy);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ScannedUserModel implements ScannedUserModel {
  const _ScannedUserModel({@JsonKey(name: 'student_id') this.studentId, @JsonKey(name: 'user_name') this.userName, @JsonKey(name: 'profile_image') this.profileImage, @JsonKey(name: 'mess_type') this.messType, this.meal, @JsonKey(name: 'scanned_at') this.scannedAt, @JsonKey(name: 'scanned_by') this.scannedBy});
  factory _ScannedUserModel.fromJson(Map<String, dynamic> json) => _$ScannedUserModelFromJson(json);

@override@JsonKey(name: 'student_id') final  int? studentId;
@override@JsonKey(name: 'user_name') final  String? userName;
@override@JsonKey(name: 'profile_image') final  String? profileImage;
@override@JsonKey(name: 'mess_type') final  String? messType;
@override final  String? meal;
@override@JsonKey(name: 'scanned_at') final  String? scannedAt;
@override@JsonKey(name: 'scanned_by') final  String? scannedBy;

/// Create a copy of ScannedUserModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ScannedUserModelCopyWith<_ScannedUserModel> get copyWith => __$ScannedUserModelCopyWithImpl<_ScannedUserModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ScannedUserModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ScannedUserModel&&(identical(other.studentId, studentId) || other.studentId == studentId)&&(identical(other.userName, userName) || other.userName == userName)&&(identical(other.profileImage, profileImage) || other.profileImage == profileImage)&&(identical(other.messType, messType) || other.messType == messType)&&(identical(other.meal, meal) || other.meal == meal)&&(identical(other.scannedAt, scannedAt) || other.scannedAt == scannedAt)&&(identical(other.scannedBy, scannedBy) || other.scannedBy == scannedBy));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,studentId,userName,profileImage,messType,meal,scannedAt,scannedBy);

@override
String toString() {
  return 'ScannedUserModel(studentId: $studentId, userName: $userName, profileImage: $profileImage, messType: $messType, meal: $meal, scannedAt: $scannedAt, scannedBy: $scannedBy)';
}


}

/// @nodoc
abstract mixin class _$ScannedUserModelCopyWith<$Res> implements $ScannedUserModelCopyWith<$Res> {
  factory _$ScannedUserModelCopyWith(_ScannedUserModel value, $Res Function(_ScannedUserModel) _then) = __$ScannedUserModelCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'student_id') int? studentId,@JsonKey(name: 'user_name') String? userName,@JsonKey(name: 'profile_image') String? profileImage,@JsonKey(name: 'mess_type') String? messType, String? meal,@JsonKey(name: 'scanned_at') String? scannedAt,@JsonKey(name: 'scanned_by') String? scannedBy
});




}
/// @nodoc
class __$ScannedUserModelCopyWithImpl<$Res>
    implements _$ScannedUserModelCopyWith<$Res> {
  __$ScannedUserModelCopyWithImpl(this._self, this._then);

  final _ScannedUserModel _self;
  final $Res Function(_ScannedUserModel) _then;

/// Create a copy of ScannedUserModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? studentId = freezed,Object? userName = freezed,Object? profileImage = freezed,Object? messType = freezed,Object? meal = freezed,Object? scannedAt = freezed,Object? scannedBy = freezed,}) {
  return _then(_ScannedUserModel(
studentId: freezed == studentId ? _self.studentId : studentId // ignore: cast_nullable_to_non_nullable
as int?,userName: freezed == userName ? _self.userName : userName // ignore: cast_nullable_to_non_nullable
as String?,profileImage: freezed == profileImage ? _self.profileImage : profileImage // ignore: cast_nullable_to_non_nullable
as String?,messType: freezed == messType ? _self.messType : messType // ignore: cast_nullable_to_non_nullable
as String?,meal: freezed == meal ? _self.meal : meal // ignore: cast_nullable_to_non_nullable
as String?,scannedAt: freezed == scannedAt ? _self.scannedAt : scannedAt // ignore: cast_nullable_to_non_nullable
as String?,scannedBy: freezed == scannedBy ? _self.scannedBy : scannedBy // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
