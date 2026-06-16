// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'login_response_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$LoginResponseModel {

 CommonModel? get common; AppConfigModel? get android; AppConfigModel? get ios; LoginDataModel get data;@JsonKey(name: 'user_login') bool? get userLogin;
/// Create a copy of LoginResponseModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LoginResponseModelCopyWith<LoginResponseModel> get copyWith => _$LoginResponseModelCopyWithImpl<LoginResponseModel>(this as LoginResponseModel, _$identity);

  /// Serializes this LoginResponseModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LoginResponseModel&&(identical(other.common, common) || other.common == common)&&(identical(other.android, android) || other.android == android)&&(identical(other.ios, ios) || other.ios == ios)&&(identical(other.data, data) || other.data == data)&&(identical(other.userLogin, userLogin) || other.userLogin == userLogin));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,common,android,ios,data,userLogin);

@override
String toString() {
  return 'LoginResponseModel(common: $common, android: $android, ios: $ios, data: $data, userLogin: $userLogin)';
}


}

/// @nodoc
abstract mixin class $LoginResponseModelCopyWith<$Res>  {
  factory $LoginResponseModelCopyWith(LoginResponseModel value, $Res Function(LoginResponseModel) _then) = _$LoginResponseModelCopyWithImpl;
@useResult
$Res call({
 CommonModel? common, AppConfigModel? android, AppConfigModel? ios, LoginDataModel data,@JsonKey(name: 'user_login') bool? userLogin
});


$CommonModelCopyWith<$Res>? get common;$AppConfigModelCopyWith<$Res>? get android;$AppConfigModelCopyWith<$Res>? get ios;$LoginDataModelCopyWith<$Res> get data;

}
/// @nodoc
class _$LoginResponseModelCopyWithImpl<$Res>
    implements $LoginResponseModelCopyWith<$Res> {
  _$LoginResponseModelCopyWithImpl(this._self, this._then);

  final LoginResponseModel _self;
  final $Res Function(LoginResponseModel) _then;

/// Create a copy of LoginResponseModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? common = freezed,Object? android = freezed,Object? ios = freezed,Object? data = null,Object? userLogin = freezed,}) {
  return _then(_self.copyWith(
common: freezed == common ? _self.common : common // ignore: cast_nullable_to_non_nullable
as CommonModel?,android: freezed == android ? _self.android : android // ignore: cast_nullable_to_non_nullable
as AppConfigModel?,ios: freezed == ios ? _self.ios : ios // ignore: cast_nullable_to_non_nullable
as AppConfigModel?,data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as LoginDataModel,userLogin: freezed == userLogin ? _self.userLogin : userLogin // ignore: cast_nullable_to_non_nullable
as bool?,
  ));
}
/// Create a copy of LoginResponseModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CommonModelCopyWith<$Res>? get common {
    if (_self.common == null) {
    return null;
  }

  return $CommonModelCopyWith<$Res>(_self.common!, (value) {
    return _then(_self.copyWith(common: value));
  });
}/// Create a copy of LoginResponseModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AppConfigModelCopyWith<$Res>? get android {
    if (_self.android == null) {
    return null;
  }

  return $AppConfigModelCopyWith<$Res>(_self.android!, (value) {
    return _then(_self.copyWith(android: value));
  });
}/// Create a copy of LoginResponseModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AppConfigModelCopyWith<$Res>? get ios {
    if (_self.ios == null) {
    return null;
  }

  return $AppConfigModelCopyWith<$Res>(_self.ios!, (value) {
    return _then(_self.copyWith(ios: value));
  });
}/// Create a copy of LoginResponseModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$LoginDataModelCopyWith<$Res> get data {
  
  return $LoginDataModelCopyWith<$Res>(_self.data, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}


/// Adds pattern-matching-related methods to [LoginResponseModel].
extension LoginResponseModelPatterns on LoginResponseModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _LoginResponseModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _LoginResponseModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _LoginResponseModel value)  $default,){
final _that = this;
switch (_that) {
case _LoginResponseModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _LoginResponseModel value)?  $default,){
final _that = this;
switch (_that) {
case _LoginResponseModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( CommonModel? common,  AppConfigModel? android,  AppConfigModel? ios,  LoginDataModel data, @JsonKey(name: 'user_login')  bool? userLogin)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _LoginResponseModel() when $default != null:
return $default(_that.common,_that.android,_that.ios,_that.data,_that.userLogin);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( CommonModel? common,  AppConfigModel? android,  AppConfigModel? ios,  LoginDataModel data, @JsonKey(name: 'user_login')  bool? userLogin)  $default,) {final _that = this;
switch (_that) {
case _LoginResponseModel():
return $default(_that.common,_that.android,_that.ios,_that.data,_that.userLogin);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( CommonModel? common,  AppConfigModel? android,  AppConfigModel? ios,  LoginDataModel data, @JsonKey(name: 'user_login')  bool? userLogin)?  $default,) {final _that = this;
switch (_that) {
case _LoginResponseModel() when $default != null:
return $default(_that.common,_that.android,_that.ios,_that.data,_that.userLogin);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _LoginResponseModel implements LoginResponseModel {
  const _LoginResponseModel({this.common, this.android, this.ios, required this.data, @JsonKey(name: 'user_login') this.userLogin});
  factory _LoginResponseModel.fromJson(Map<String, dynamic> json) => _$LoginResponseModelFromJson(json);

@override final  CommonModel? common;
@override final  AppConfigModel? android;
@override final  AppConfigModel? ios;
@override final  LoginDataModel data;
@override@JsonKey(name: 'user_login') final  bool? userLogin;

/// Create a copy of LoginResponseModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$LoginResponseModelCopyWith<_LoginResponseModel> get copyWith => __$LoginResponseModelCopyWithImpl<_LoginResponseModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$LoginResponseModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _LoginResponseModel&&(identical(other.common, common) || other.common == common)&&(identical(other.android, android) || other.android == android)&&(identical(other.ios, ios) || other.ios == ios)&&(identical(other.data, data) || other.data == data)&&(identical(other.userLogin, userLogin) || other.userLogin == userLogin));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,common,android,ios,data,userLogin);

@override
String toString() {
  return 'LoginResponseModel(common: $common, android: $android, ios: $ios, data: $data, userLogin: $userLogin)';
}


}

/// @nodoc
abstract mixin class _$LoginResponseModelCopyWith<$Res> implements $LoginResponseModelCopyWith<$Res> {
  factory _$LoginResponseModelCopyWith(_LoginResponseModel value, $Res Function(_LoginResponseModel) _then) = __$LoginResponseModelCopyWithImpl;
@override @useResult
$Res call({
 CommonModel? common, AppConfigModel? android, AppConfigModel? ios, LoginDataModel data,@JsonKey(name: 'user_login') bool? userLogin
});


@override $CommonModelCopyWith<$Res>? get common;@override $AppConfigModelCopyWith<$Res>? get android;@override $AppConfigModelCopyWith<$Res>? get ios;@override $LoginDataModelCopyWith<$Res> get data;

}
/// @nodoc
class __$LoginResponseModelCopyWithImpl<$Res>
    implements _$LoginResponseModelCopyWith<$Res> {
  __$LoginResponseModelCopyWithImpl(this._self, this._then);

  final _LoginResponseModel _self;
  final $Res Function(_LoginResponseModel) _then;

/// Create a copy of LoginResponseModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? common = freezed,Object? android = freezed,Object? ios = freezed,Object? data = null,Object? userLogin = freezed,}) {
  return _then(_LoginResponseModel(
common: freezed == common ? _self.common : common // ignore: cast_nullable_to_non_nullable
as CommonModel?,android: freezed == android ? _self.android : android // ignore: cast_nullable_to_non_nullable
as AppConfigModel?,ios: freezed == ios ? _self.ios : ios // ignore: cast_nullable_to_non_nullable
as AppConfigModel?,data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as LoginDataModel,userLogin: freezed == userLogin ? _self.userLogin : userLogin // ignore: cast_nullable_to_non_nullable
as bool?,
  ));
}

/// Create a copy of LoginResponseModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CommonModelCopyWith<$Res>? get common {
    if (_self.common == null) {
    return null;
  }

  return $CommonModelCopyWith<$Res>(_self.common!, (value) {
    return _then(_self.copyWith(common: value));
  });
}/// Create a copy of LoginResponseModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AppConfigModelCopyWith<$Res>? get android {
    if (_self.android == null) {
    return null;
  }

  return $AppConfigModelCopyWith<$Res>(_self.android!, (value) {
    return _then(_self.copyWith(android: value));
  });
}/// Create a copy of LoginResponseModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AppConfigModelCopyWith<$Res>? get ios {
    if (_self.ios == null) {
    return null;
  }

  return $AppConfigModelCopyWith<$Res>(_self.ios!, (value) {
    return _then(_self.copyWith(ios: value));
  });
}/// Create a copy of LoginResponseModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$LoginDataModelCopyWith<$Res> get data {
  
  return $LoginDataModelCopyWith<$Res>(_self.data, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}

// dart format on
