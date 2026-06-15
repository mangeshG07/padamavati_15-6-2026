// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$UserModel {

@JsonKey(name: 'user_id') int get userId; String get name;@JsonKey(name: 'mobile_number') String? get mobileNo;@JsonKey(name: 'mobile_no') String? get mobileNum;@JsonKey(name: 'auth_key') String get authKey;@JsonKey(name: 'profile_image') String? get profileImage;@JsonKey(name: 'role_id') int? get roleId;
/// Create a copy of UserModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UserModelCopyWith<UserModel> get copyWith => _$UserModelCopyWithImpl<UserModel>(this as UserModel, _$identity);

  /// Serializes this UserModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UserModel&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.name, name) || other.name == name)&&(identical(other.mobileNo, mobileNo) || other.mobileNo == mobileNo)&&(identical(other.mobileNum, mobileNum) || other.mobileNum == mobileNum)&&(identical(other.authKey, authKey) || other.authKey == authKey)&&(identical(other.profileImage, profileImage) || other.profileImage == profileImage)&&(identical(other.roleId, roleId) || other.roleId == roleId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,userId,name,mobileNo,mobileNum,authKey,profileImage,roleId);

@override
String toString() {
  return 'UserModel(userId: $userId, name: $name, mobileNo: $mobileNo, mobileNum: $mobileNum, authKey: $authKey, profileImage: $profileImage, roleId: $roleId)';
}


}

/// @nodoc
abstract mixin class $UserModelCopyWith<$Res>  {
  factory $UserModelCopyWith(UserModel value, $Res Function(UserModel) _then) = _$UserModelCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'user_id') int userId, String name,@JsonKey(name: 'mobile_number') String? mobileNo,@JsonKey(name: 'mobile_no') String? mobileNum,@JsonKey(name: 'auth_key') String authKey,@JsonKey(name: 'profile_image') String? profileImage,@JsonKey(name: 'role_id') int? roleId
});




}
/// @nodoc
class _$UserModelCopyWithImpl<$Res>
    implements $UserModelCopyWith<$Res> {
  _$UserModelCopyWithImpl(this._self, this._then);

  final UserModel _self;
  final $Res Function(UserModel) _then;

/// Create a copy of UserModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? userId = null,Object? name = null,Object? mobileNo = freezed,Object? mobileNum = freezed,Object? authKey = null,Object? profileImage = freezed,Object? roleId = freezed,}) {
  return _then(_self.copyWith(
userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as int,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,mobileNo: freezed == mobileNo ? _self.mobileNo : mobileNo // ignore: cast_nullable_to_non_nullable
as String?,mobileNum: freezed == mobileNum ? _self.mobileNum : mobileNum // ignore: cast_nullable_to_non_nullable
as String?,authKey: null == authKey ? _self.authKey : authKey // ignore: cast_nullable_to_non_nullable
as String,profileImage: freezed == profileImage ? _self.profileImage : profileImage // ignore: cast_nullable_to_non_nullable
as String?,roleId: freezed == roleId ? _self.roleId : roleId // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}

}


/// Adds pattern-matching-related methods to [UserModel].
extension UserModelPatterns on UserModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _UserModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _UserModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _UserModel value)  $default,){
final _that = this;
switch (_that) {
case _UserModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _UserModel value)?  $default,){
final _that = this;
switch (_that) {
case _UserModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'user_id')  int userId,  String name, @JsonKey(name: 'mobile_number')  String? mobileNo, @JsonKey(name: 'mobile_no')  String? mobileNum, @JsonKey(name: 'auth_key')  String authKey, @JsonKey(name: 'profile_image')  String? profileImage, @JsonKey(name: 'role_id')  int? roleId)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _UserModel() when $default != null:
return $default(_that.userId,_that.name,_that.mobileNo,_that.mobileNum,_that.authKey,_that.profileImage,_that.roleId);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'user_id')  int userId,  String name, @JsonKey(name: 'mobile_number')  String? mobileNo, @JsonKey(name: 'mobile_no')  String? mobileNum, @JsonKey(name: 'auth_key')  String authKey, @JsonKey(name: 'profile_image')  String? profileImage, @JsonKey(name: 'role_id')  int? roleId)  $default,) {final _that = this;
switch (_that) {
case _UserModel():
return $default(_that.userId,_that.name,_that.mobileNo,_that.mobileNum,_that.authKey,_that.profileImage,_that.roleId);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'user_id')  int userId,  String name, @JsonKey(name: 'mobile_number')  String? mobileNo, @JsonKey(name: 'mobile_no')  String? mobileNum, @JsonKey(name: 'auth_key')  String authKey, @JsonKey(name: 'profile_image')  String? profileImage, @JsonKey(name: 'role_id')  int? roleId)?  $default,) {final _that = this;
switch (_that) {
case _UserModel() when $default != null:
return $default(_that.userId,_that.name,_that.mobileNo,_that.mobileNum,_that.authKey,_that.profileImage,_that.roleId);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _UserModel implements UserModel {
  const _UserModel({@JsonKey(name: 'user_id') required this.userId, required this.name, @JsonKey(name: 'mobile_number') this.mobileNo, @JsonKey(name: 'mobile_no') this.mobileNum, @JsonKey(name: 'auth_key') required this.authKey, @JsonKey(name: 'profile_image') this.profileImage, @JsonKey(name: 'role_id') this.roleId});
  factory _UserModel.fromJson(Map<String, dynamic> json) => _$UserModelFromJson(json);

@override@JsonKey(name: 'user_id') final  int userId;
@override final  String name;
@override@JsonKey(name: 'mobile_number') final  String? mobileNo;
@override@JsonKey(name: 'mobile_no') final  String? mobileNum;
@override@JsonKey(name: 'auth_key') final  String authKey;
@override@JsonKey(name: 'profile_image') final  String? profileImage;
@override@JsonKey(name: 'role_id') final  int? roleId;

/// Create a copy of UserModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UserModelCopyWith<_UserModel> get copyWith => __$UserModelCopyWithImpl<_UserModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$UserModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UserModel&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.name, name) || other.name == name)&&(identical(other.mobileNo, mobileNo) || other.mobileNo == mobileNo)&&(identical(other.mobileNum, mobileNum) || other.mobileNum == mobileNum)&&(identical(other.authKey, authKey) || other.authKey == authKey)&&(identical(other.profileImage, profileImage) || other.profileImage == profileImage)&&(identical(other.roleId, roleId) || other.roleId == roleId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,userId,name,mobileNo,mobileNum,authKey,profileImage,roleId);

@override
String toString() {
  return 'UserModel(userId: $userId, name: $name, mobileNo: $mobileNo, mobileNum: $mobileNum, authKey: $authKey, profileImage: $profileImage, roleId: $roleId)';
}


}

/// @nodoc
abstract mixin class _$UserModelCopyWith<$Res> implements $UserModelCopyWith<$Res> {
  factory _$UserModelCopyWith(_UserModel value, $Res Function(_UserModel) _then) = __$UserModelCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'user_id') int userId, String name,@JsonKey(name: 'mobile_number') String? mobileNo,@JsonKey(name: 'mobile_no') String? mobileNum,@JsonKey(name: 'auth_key') String authKey,@JsonKey(name: 'profile_image') String? profileImage,@JsonKey(name: 'role_id') int? roleId
});




}
/// @nodoc
class __$UserModelCopyWithImpl<$Res>
    implements _$UserModelCopyWith<$Res> {
  __$UserModelCopyWithImpl(this._self, this._then);

  final _UserModel _self;
  final $Res Function(_UserModel) _then;

/// Create a copy of UserModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? userId = null,Object? name = null,Object? mobileNo = freezed,Object? mobileNum = freezed,Object? authKey = null,Object? profileImage = freezed,Object? roleId = freezed,}) {
  return _then(_UserModel(
userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as int,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,mobileNo: freezed == mobileNo ? _self.mobileNo : mobileNo // ignore: cast_nullable_to_non_nullable
as String?,mobileNum: freezed == mobileNum ? _self.mobileNum : mobileNum // ignore: cast_nullable_to_non_nullable
as String?,authKey: null == authKey ? _self.authKey : authKey // ignore: cast_nullable_to_non_nullable
as String,profileImage: freezed == profileImage ? _self.profileImage : profileImage // ignore: cast_nullable_to_non_nullable
as String?,roleId: freezed == roleId ? _self.roleId : roleId // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}


}

// dart format on
