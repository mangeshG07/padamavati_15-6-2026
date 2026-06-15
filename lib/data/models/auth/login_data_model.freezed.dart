// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'login_data_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$LoginDataModel {

@JsonKey(name: 'user_details') UserModel? get userDetails;@JsonKey(name: 'otp_verified') bool? get otpVerified;@JsonKey(name: 'mobile_no') String? get mobileNumber;@JsonKey(name: 'user_exists') bool? get userExists;
/// Create a copy of LoginDataModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LoginDataModelCopyWith<LoginDataModel> get copyWith => _$LoginDataModelCopyWithImpl<LoginDataModel>(this as LoginDataModel, _$identity);

  /// Serializes this LoginDataModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LoginDataModel&&(identical(other.userDetails, userDetails) || other.userDetails == userDetails)&&(identical(other.otpVerified, otpVerified) || other.otpVerified == otpVerified)&&(identical(other.mobileNumber, mobileNumber) || other.mobileNumber == mobileNumber)&&(identical(other.userExists, userExists) || other.userExists == userExists));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,userDetails,otpVerified,mobileNumber,userExists);

@override
String toString() {
  return 'LoginDataModel(userDetails: $userDetails, otpVerified: $otpVerified, mobileNumber: $mobileNumber, userExists: $userExists)';
}


}

/// @nodoc
abstract mixin class $LoginDataModelCopyWith<$Res>  {
  factory $LoginDataModelCopyWith(LoginDataModel value, $Res Function(LoginDataModel) _then) = _$LoginDataModelCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'user_details') UserModel? userDetails,@JsonKey(name: 'otp_verified') bool? otpVerified,@JsonKey(name: 'mobile_no') String? mobileNumber,@JsonKey(name: 'user_exists') bool? userExists
});


$UserModelCopyWith<$Res>? get userDetails;

}
/// @nodoc
class _$LoginDataModelCopyWithImpl<$Res>
    implements $LoginDataModelCopyWith<$Res> {
  _$LoginDataModelCopyWithImpl(this._self, this._then);

  final LoginDataModel _self;
  final $Res Function(LoginDataModel) _then;

/// Create a copy of LoginDataModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? userDetails = freezed,Object? otpVerified = freezed,Object? mobileNumber = freezed,Object? userExists = freezed,}) {
  return _then(_self.copyWith(
userDetails: freezed == userDetails ? _self.userDetails : userDetails // ignore: cast_nullable_to_non_nullable
as UserModel?,otpVerified: freezed == otpVerified ? _self.otpVerified : otpVerified // ignore: cast_nullable_to_non_nullable
as bool?,mobileNumber: freezed == mobileNumber ? _self.mobileNumber : mobileNumber // ignore: cast_nullable_to_non_nullable
as String?,userExists: freezed == userExists ? _self.userExists : userExists // ignore: cast_nullable_to_non_nullable
as bool?,
  ));
}
/// Create a copy of LoginDataModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UserModelCopyWith<$Res>? get userDetails {
    if (_self.userDetails == null) {
    return null;
  }

  return $UserModelCopyWith<$Res>(_self.userDetails!, (value) {
    return _then(_self.copyWith(userDetails: value));
  });
}
}


/// Adds pattern-matching-related methods to [LoginDataModel].
extension LoginDataModelPatterns on LoginDataModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _LoginDataModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _LoginDataModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _LoginDataModel value)  $default,){
final _that = this;
switch (_that) {
case _LoginDataModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _LoginDataModel value)?  $default,){
final _that = this;
switch (_that) {
case _LoginDataModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'user_details')  UserModel? userDetails, @JsonKey(name: 'otp_verified')  bool? otpVerified, @JsonKey(name: 'mobile_no')  String? mobileNumber, @JsonKey(name: 'user_exists')  bool? userExists)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _LoginDataModel() when $default != null:
return $default(_that.userDetails,_that.otpVerified,_that.mobileNumber,_that.userExists);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'user_details')  UserModel? userDetails, @JsonKey(name: 'otp_verified')  bool? otpVerified, @JsonKey(name: 'mobile_no')  String? mobileNumber, @JsonKey(name: 'user_exists')  bool? userExists)  $default,) {final _that = this;
switch (_that) {
case _LoginDataModel():
return $default(_that.userDetails,_that.otpVerified,_that.mobileNumber,_that.userExists);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'user_details')  UserModel? userDetails, @JsonKey(name: 'otp_verified')  bool? otpVerified, @JsonKey(name: 'mobile_no')  String? mobileNumber, @JsonKey(name: 'user_exists')  bool? userExists)?  $default,) {final _that = this;
switch (_that) {
case _LoginDataModel() when $default != null:
return $default(_that.userDetails,_that.otpVerified,_that.mobileNumber,_that.userExists);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _LoginDataModel implements LoginDataModel {
  const _LoginDataModel({@JsonKey(name: 'user_details') this.userDetails, @JsonKey(name: 'otp_verified') this.otpVerified, @JsonKey(name: 'mobile_no') this.mobileNumber, @JsonKey(name: 'user_exists') this.userExists});
  factory _LoginDataModel.fromJson(Map<String, dynamic> json) => _$LoginDataModelFromJson(json);

@override@JsonKey(name: 'user_details') final  UserModel? userDetails;
@override@JsonKey(name: 'otp_verified') final  bool? otpVerified;
@override@JsonKey(name: 'mobile_no') final  String? mobileNumber;
@override@JsonKey(name: 'user_exists') final  bool? userExists;

/// Create a copy of LoginDataModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$LoginDataModelCopyWith<_LoginDataModel> get copyWith => __$LoginDataModelCopyWithImpl<_LoginDataModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$LoginDataModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _LoginDataModel&&(identical(other.userDetails, userDetails) || other.userDetails == userDetails)&&(identical(other.otpVerified, otpVerified) || other.otpVerified == otpVerified)&&(identical(other.mobileNumber, mobileNumber) || other.mobileNumber == mobileNumber)&&(identical(other.userExists, userExists) || other.userExists == userExists));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,userDetails,otpVerified,mobileNumber,userExists);

@override
String toString() {
  return 'LoginDataModel(userDetails: $userDetails, otpVerified: $otpVerified, mobileNumber: $mobileNumber, userExists: $userExists)';
}


}

/// @nodoc
abstract mixin class _$LoginDataModelCopyWith<$Res> implements $LoginDataModelCopyWith<$Res> {
  factory _$LoginDataModelCopyWith(_LoginDataModel value, $Res Function(_LoginDataModel) _then) = __$LoginDataModelCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'user_details') UserModel? userDetails,@JsonKey(name: 'otp_verified') bool? otpVerified,@JsonKey(name: 'mobile_no') String? mobileNumber,@JsonKey(name: 'user_exists') bool? userExists
});


@override $UserModelCopyWith<$Res>? get userDetails;

}
/// @nodoc
class __$LoginDataModelCopyWithImpl<$Res>
    implements _$LoginDataModelCopyWith<$Res> {
  __$LoginDataModelCopyWithImpl(this._self, this._then);

  final _LoginDataModel _self;
  final $Res Function(_LoginDataModel) _then;

/// Create a copy of LoginDataModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? userDetails = freezed,Object? otpVerified = freezed,Object? mobileNumber = freezed,Object? userExists = freezed,}) {
  return _then(_LoginDataModel(
userDetails: freezed == userDetails ? _self.userDetails : userDetails // ignore: cast_nullable_to_non_nullable
as UserModel?,otpVerified: freezed == otpVerified ? _self.otpVerified : otpVerified // ignore: cast_nullable_to_non_nullable
as bool?,mobileNumber: freezed == mobileNumber ? _self.mobileNumber : mobileNumber // ignore: cast_nullable_to_non_nullable
as String?,userExists: freezed == userExists ? _self.userExists : userExists // ignore: cast_nullable_to_non_nullable
as bool?,
  ));
}

/// Create a copy of LoginDataModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UserModelCopyWith<$Res>? get userDetails {
    if (_self.userDetails == null) {
    return null;
  }

  return $UserModelCopyWith<$Res>(_self.userDetails!, (value) {
    return _then(_self.copyWith(userDetails: value));
  });
}
}

// dart format on
