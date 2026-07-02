// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_details_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$UserDetailsModel {

@JsonKey(name: 'user_data') UserData? get userData;@JsonKey(name: 'package_data') PackageData? get packageData;@JsonKey(name: 'qr_data') QrData? get qrData;@JsonKey(name: 'payment_data') ScannedPaymentData? get paymentData;
/// Create a copy of UserDetailsModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UserDetailsModelCopyWith<UserDetailsModel> get copyWith => _$UserDetailsModelCopyWithImpl<UserDetailsModel>(this as UserDetailsModel, _$identity);

  /// Serializes this UserDetailsModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UserDetailsModel&&(identical(other.userData, userData) || other.userData == userData)&&(identical(other.packageData, packageData) || other.packageData == packageData)&&(identical(other.qrData, qrData) || other.qrData == qrData)&&(identical(other.paymentData, paymentData) || other.paymentData == paymentData));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,userData,packageData,qrData,paymentData);

@override
String toString() {
  return 'UserDetailsModel(userData: $userData, packageData: $packageData, qrData: $qrData, paymentData: $paymentData)';
}


}

/// @nodoc
abstract mixin class $UserDetailsModelCopyWith<$Res>  {
  factory $UserDetailsModelCopyWith(UserDetailsModel value, $Res Function(UserDetailsModel) _then) = _$UserDetailsModelCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'user_data') UserData? userData,@JsonKey(name: 'package_data') PackageData? packageData,@JsonKey(name: 'qr_data') QrData? qrData,@JsonKey(name: 'payment_data') ScannedPaymentData? paymentData
});


$UserDataCopyWith<$Res>? get userData;$PackageDataCopyWith<$Res>? get packageData;$QrDataCopyWith<$Res>? get qrData;$ScannedPaymentDataCopyWith<$Res>? get paymentData;

}
/// @nodoc
class _$UserDetailsModelCopyWithImpl<$Res>
    implements $UserDetailsModelCopyWith<$Res> {
  _$UserDetailsModelCopyWithImpl(this._self, this._then);

  final UserDetailsModel _self;
  final $Res Function(UserDetailsModel) _then;

/// Create a copy of UserDetailsModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? userData = freezed,Object? packageData = freezed,Object? qrData = freezed,Object? paymentData = freezed,}) {
  return _then(_self.copyWith(
userData: freezed == userData ? _self.userData : userData // ignore: cast_nullable_to_non_nullable
as UserData?,packageData: freezed == packageData ? _self.packageData : packageData // ignore: cast_nullable_to_non_nullable
as PackageData?,qrData: freezed == qrData ? _self.qrData : qrData // ignore: cast_nullable_to_non_nullable
as QrData?,paymentData: freezed == paymentData ? _self.paymentData : paymentData // ignore: cast_nullable_to_non_nullable
as ScannedPaymentData?,
  ));
}
/// Create a copy of UserDetailsModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UserDataCopyWith<$Res>? get userData {
    if (_self.userData == null) {
    return null;
  }

  return $UserDataCopyWith<$Res>(_self.userData!, (value) {
    return _then(_self.copyWith(userData: value));
  });
}/// Create a copy of UserDetailsModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PackageDataCopyWith<$Res>? get packageData {
    if (_self.packageData == null) {
    return null;
  }

  return $PackageDataCopyWith<$Res>(_self.packageData!, (value) {
    return _then(_self.copyWith(packageData: value));
  });
}/// Create a copy of UserDetailsModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$QrDataCopyWith<$Res>? get qrData {
    if (_self.qrData == null) {
    return null;
  }

  return $QrDataCopyWith<$Res>(_self.qrData!, (value) {
    return _then(_self.copyWith(qrData: value));
  });
}/// Create a copy of UserDetailsModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ScannedPaymentDataCopyWith<$Res>? get paymentData {
    if (_self.paymentData == null) {
    return null;
  }

  return $ScannedPaymentDataCopyWith<$Res>(_self.paymentData!, (value) {
    return _then(_self.copyWith(paymentData: value));
  });
}
}


/// Adds pattern-matching-related methods to [UserDetailsModel].
extension UserDetailsModelPatterns on UserDetailsModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _UserDetailsModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _UserDetailsModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _UserDetailsModel value)  $default,){
final _that = this;
switch (_that) {
case _UserDetailsModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _UserDetailsModel value)?  $default,){
final _that = this;
switch (_that) {
case _UserDetailsModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'user_data')  UserData? userData, @JsonKey(name: 'package_data')  PackageData? packageData, @JsonKey(name: 'qr_data')  QrData? qrData, @JsonKey(name: 'payment_data')  ScannedPaymentData? paymentData)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _UserDetailsModel() when $default != null:
return $default(_that.userData,_that.packageData,_that.qrData,_that.paymentData);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'user_data')  UserData? userData, @JsonKey(name: 'package_data')  PackageData? packageData, @JsonKey(name: 'qr_data')  QrData? qrData, @JsonKey(name: 'payment_data')  ScannedPaymentData? paymentData)  $default,) {final _that = this;
switch (_that) {
case _UserDetailsModel():
return $default(_that.userData,_that.packageData,_that.qrData,_that.paymentData);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'user_data')  UserData? userData, @JsonKey(name: 'package_data')  PackageData? packageData, @JsonKey(name: 'qr_data')  QrData? qrData, @JsonKey(name: 'payment_data')  ScannedPaymentData? paymentData)?  $default,) {final _that = this;
switch (_that) {
case _UserDetailsModel() when $default != null:
return $default(_that.userData,_that.packageData,_that.qrData,_that.paymentData);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _UserDetailsModel implements UserDetailsModel {
  const _UserDetailsModel({@JsonKey(name: 'user_data') this.userData, @JsonKey(name: 'package_data') this.packageData, @JsonKey(name: 'qr_data') this.qrData, @JsonKey(name: 'payment_data') this.paymentData});
  factory _UserDetailsModel.fromJson(Map<String, dynamic> json) => _$UserDetailsModelFromJson(json);

@override@JsonKey(name: 'user_data') final  UserData? userData;
@override@JsonKey(name: 'package_data') final  PackageData? packageData;
@override@JsonKey(name: 'qr_data') final  QrData? qrData;
@override@JsonKey(name: 'payment_data') final  ScannedPaymentData? paymentData;

/// Create a copy of UserDetailsModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UserDetailsModelCopyWith<_UserDetailsModel> get copyWith => __$UserDetailsModelCopyWithImpl<_UserDetailsModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$UserDetailsModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UserDetailsModel&&(identical(other.userData, userData) || other.userData == userData)&&(identical(other.packageData, packageData) || other.packageData == packageData)&&(identical(other.qrData, qrData) || other.qrData == qrData)&&(identical(other.paymentData, paymentData) || other.paymentData == paymentData));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,userData,packageData,qrData,paymentData);

@override
String toString() {
  return 'UserDetailsModel(userData: $userData, packageData: $packageData, qrData: $qrData, paymentData: $paymentData)';
}


}

/// @nodoc
abstract mixin class _$UserDetailsModelCopyWith<$Res> implements $UserDetailsModelCopyWith<$Res> {
  factory _$UserDetailsModelCopyWith(_UserDetailsModel value, $Res Function(_UserDetailsModel) _then) = __$UserDetailsModelCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'user_data') UserData? userData,@JsonKey(name: 'package_data') PackageData? packageData,@JsonKey(name: 'qr_data') QrData? qrData,@JsonKey(name: 'payment_data') ScannedPaymentData? paymentData
});


@override $UserDataCopyWith<$Res>? get userData;@override $PackageDataCopyWith<$Res>? get packageData;@override $QrDataCopyWith<$Res>? get qrData;@override $ScannedPaymentDataCopyWith<$Res>? get paymentData;

}
/// @nodoc
class __$UserDetailsModelCopyWithImpl<$Res>
    implements _$UserDetailsModelCopyWith<$Res> {
  __$UserDetailsModelCopyWithImpl(this._self, this._then);

  final _UserDetailsModel _self;
  final $Res Function(_UserDetailsModel) _then;

/// Create a copy of UserDetailsModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? userData = freezed,Object? packageData = freezed,Object? qrData = freezed,Object? paymentData = freezed,}) {
  return _then(_UserDetailsModel(
userData: freezed == userData ? _self.userData : userData // ignore: cast_nullable_to_non_nullable
as UserData?,packageData: freezed == packageData ? _self.packageData : packageData // ignore: cast_nullable_to_non_nullable
as PackageData?,qrData: freezed == qrData ? _self.qrData : qrData // ignore: cast_nullable_to_non_nullable
as QrData?,paymentData: freezed == paymentData ? _self.paymentData : paymentData // ignore: cast_nullable_to_non_nullable
as ScannedPaymentData?,
  ));
}

/// Create a copy of UserDetailsModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UserDataCopyWith<$Res>? get userData {
    if (_self.userData == null) {
    return null;
  }

  return $UserDataCopyWith<$Res>(_self.userData!, (value) {
    return _then(_self.copyWith(userData: value));
  });
}/// Create a copy of UserDetailsModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PackageDataCopyWith<$Res>? get packageData {
    if (_self.packageData == null) {
    return null;
  }

  return $PackageDataCopyWith<$Res>(_self.packageData!, (value) {
    return _then(_self.copyWith(packageData: value));
  });
}/// Create a copy of UserDetailsModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$QrDataCopyWith<$Res>? get qrData {
    if (_self.qrData == null) {
    return null;
  }

  return $QrDataCopyWith<$Res>(_self.qrData!, (value) {
    return _then(_self.copyWith(qrData: value));
  });
}/// Create a copy of UserDetailsModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ScannedPaymentDataCopyWith<$Res>? get paymentData {
    if (_self.paymentData == null) {
    return null;
  }

  return $ScannedPaymentDataCopyWith<$Res>(_self.paymentData!, (value) {
    return _then(_self.copyWith(paymentData: value));
  });
}
}


/// @nodoc
mixin _$UserData {

@JsonKey(name: 'user_id') int? get userId; String? get name;@JsonKey(name: 'mobile_no') String? get mobileNo;@JsonKey(name: 'profile_image') String? get profileImage; String? get gender;@JsonKey(name: 'mess_type') String? get messType;@JsonKey(name: 'mess_time') String? get messTime;
/// Create a copy of UserData
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UserDataCopyWith<UserData> get copyWith => _$UserDataCopyWithImpl<UserData>(this as UserData, _$identity);

  /// Serializes this UserData to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UserData&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.name, name) || other.name == name)&&(identical(other.mobileNo, mobileNo) || other.mobileNo == mobileNo)&&(identical(other.profileImage, profileImage) || other.profileImage == profileImage)&&(identical(other.gender, gender) || other.gender == gender)&&(identical(other.messType, messType) || other.messType == messType)&&(identical(other.messTime, messTime) || other.messTime == messTime));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,userId,name,mobileNo,profileImage,gender,messType,messTime);

@override
String toString() {
  return 'UserData(userId: $userId, name: $name, mobileNo: $mobileNo, profileImage: $profileImage, gender: $gender, messType: $messType, messTime: $messTime)';
}


}

/// @nodoc
abstract mixin class $UserDataCopyWith<$Res>  {
  factory $UserDataCopyWith(UserData value, $Res Function(UserData) _then) = _$UserDataCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'user_id') int? userId, String? name,@JsonKey(name: 'mobile_no') String? mobileNo,@JsonKey(name: 'profile_image') String? profileImage, String? gender,@JsonKey(name: 'mess_type') String? messType,@JsonKey(name: 'mess_time') String? messTime
});




}
/// @nodoc
class _$UserDataCopyWithImpl<$Res>
    implements $UserDataCopyWith<$Res> {
  _$UserDataCopyWithImpl(this._self, this._then);

  final UserData _self;
  final $Res Function(UserData) _then;

/// Create a copy of UserData
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? userId = freezed,Object? name = freezed,Object? mobileNo = freezed,Object? profileImage = freezed,Object? gender = freezed,Object? messType = freezed,Object? messTime = freezed,}) {
  return _then(_self.copyWith(
userId: freezed == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as int?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,mobileNo: freezed == mobileNo ? _self.mobileNo : mobileNo // ignore: cast_nullable_to_non_nullable
as String?,profileImage: freezed == profileImage ? _self.profileImage : profileImage // ignore: cast_nullable_to_non_nullable
as String?,gender: freezed == gender ? _self.gender : gender // ignore: cast_nullable_to_non_nullable
as String?,messType: freezed == messType ? _self.messType : messType // ignore: cast_nullable_to_non_nullable
as String?,messTime: freezed == messTime ? _self.messTime : messTime // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [UserData].
extension UserDataPatterns on UserData {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _UserData value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _UserData() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _UserData value)  $default,){
final _that = this;
switch (_that) {
case _UserData():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _UserData value)?  $default,){
final _that = this;
switch (_that) {
case _UserData() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'user_id')  int? userId,  String? name, @JsonKey(name: 'mobile_no')  String? mobileNo, @JsonKey(name: 'profile_image')  String? profileImage,  String? gender, @JsonKey(name: 'mess_type')  String? messType, @JsonKey(name: 'mess_time')  String? messTime)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _UserData() when $default != null:
return $default(_that.userId,_that.name,_that.mobileNo,_that.profileImage,_that.gender,_that.messType,_that.messTime);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'user_id')  int? userId,  String? name, @JsonKey(name: 'mobile_no')  String? mobileNo, @JsonKey(name: 'profile_image')  String? profileImage,  String? gender, @JsonKey(name: 'mess_type')  String? messType, @JsonKey(name: 'mess_time')  String? messTime)  $default,) {final _that = this;
switch (_that) {
case _UserData():
return $default(_that.userId,_that.name,_that.mobileNo,_that.profileImage,_that.gender,_that.messType,_that.messTime);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'user_id')  int? userId,  String? name, @JsonKey(name: 'mobile_no')  String? mobileNo, @JsonKey(name: 'profile_image')  String? profileImage,  String? gender, @JsonKey(name: 'mess_type')  String? messType, @JsonKey(name: 'mess_time')  String? messTime)?  $default,) {final _that = this;
switch (_that) {
case _UserData() when $default != null:
return $default(_that.userId,_that.name,_that.mobileNo,_that.profileImage,_that.gender,_that.messType,_that.messTime);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _UserData implements UserData {
  const _UserData({@JsonKey(name: 'user_id') this.userId, this.name, @JsonKey(name: 'mobile_no') this.mobileNo, @JsonKey(name: 'profile_image') this.profileImage, this.gender, @JsonKey(name: 'mess_type') this.messType, @JsonKey(name: 'mess_time') this.messTime});
  factory _UserData.fromJson(Map<String, dynamic> json) => _$UserDataFromJson(json);

@override@JsonKey(name: 'user_id') final  int? userId;
@override final  String? name;
@override@JsonKey(name: 'mobile_no') final  String? mobileNo;
@override@JsonKey(name: 'profile_image') final  String? profileImage;
@override final  String? gender;
@override@JsonKey(name: 'mess_type') final  String? messType;
@override@JsonKey(name: 'mess_time') final  String? messTime;

/// Create a copy of UserData
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UserDataCopyWith<_UserData> get copyWith => __$UserDataCopyWithImpl<_UserData>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$UserDataToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UserData&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.name, name) || other.name == name)&&(identical(other.mobileNo, mobileNo) || other.mobileNo == mobileNo)&&(identical(other.profileImage, profileImage) || other.profileImage == profileImage)&&(identical(other.gender, gender) || other.gender == gender)&&(identical(other.messType, messType) || other.messType == messType)&&(identical(other.messTime, messTime) || other.messTime == messTime));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,userId,name,mobileNo,profileImage,gender,messType,messTime);

@override
String toString() {
  return 'UserData(userId: $userId, name: $name, mobileNo: $mobileNo, profileImage: $profileImage, gender: $gender, messType: $messType, messTime: $messTime)';
}


}

/// @nodoc
abstract mixin class _$UserDataCopyWith<$Res> implements $UserDataCopyWith<$Res> {
  factory _$UserDataCopyWith(_UserData value, $Res Function(_UserData) _then) = __$UserDataCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'user_id') int? userId, String? name,@JsonKey(name: 'mobile_no') String? mobileNo,@JsonKey(name: 'profile_image') String? profileImage, String? gender,@JsonKey(name: 'mess_type') String? messType,@JsonKey(name: 'mess_time') String? messTime
});




}
/// @nodoc
class __$UserDataCopyWithImpl<$Res>
    implements _$UserDataCopyWith<$Res> {
  __$UserDataCopyWithImpl(this._self, this._then);

  final _UserData _self;
  final $Res Function(_UserData) _then;

/// Create a copy of UserData
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? userId = freezed,Object? name = freezed,Object? mobileNo = freezed,Object? profileImage = freezed,Object? gender = freezed,Object? messType = freezed,Object? messTime = freezed,}) {
  return _then(_UserData(
userId: freezed == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as int?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,mobileNo: freezed == mobileNo ? _self.mobileNo : mobileNo // ignore: cast_nullable_to_non_nullable
as String?,profileImage: freezed == profileImage ? _self.profileImage : profileImage // ignore: cast_nullable_to_non_nullable
as String?,gender: freezed == gender ? _self.gender : gender // ignore: cast_nullable_to_non_nullable
as String?,messType: freezed == messType ? _self.messType : messType // ignore: cast_nullable_to_non_nullable
as String?,messTime: freezed == messTime ? _self.messTime : messTime // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$PackageData {

@JsonKey(name: 'package_name') String? get packageName;@JsonKey(name: 'package_type') String? get packageType;@JsonKey(name: 'package_days') int? get packageDays;@JsonKey(name: 'package_amount') int? get packageAmount;@JsonKey(name: 'start_date') String? get startDate;@JsonKey(name: 'end_date') String? get endDate;
/// Create a copy of PackageData
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PackageDataCopyWith<PackageData> get copyWith => _$PackageDataCopyWithImpl<PackageData>(this as PackageData, _$identity);

  /// Serializes this PackageData to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PackageData&&(identical(other.packageName, packageName) || other.packageName == packageName)&&(identical(other.packageType, packageType) || other.packageType == packageType)&&(identical(other.packageDays, packageDays) || other.packageDays == packageDays)&&(identical(other.packageAmount, packageAmount) || other.packageAmount == packageAmount)&&(identical(other.startDate, startDate) || other.startDate == startDate)&&(identical(other.endDate, endDate) || other.endDate == endDate));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,packageName,packageType,packageDays,packageAmount,startDate,endDate);

@override
String toString() {
  return 'PackageData(packageName: $packageName, packageType: $packageType, packageDays: $packageDays, packageAmount: $packageAmount, startDate: $startDate, endDate: $endDate)';
}


}

/// @nodoc
abstract mixin class $PackageDataCopyWith<$Res>  {
  factory $PackageDataCopyWith(PackageData value, $Res Function(PackageData) _then) = _$PackageDataCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'package_name') String? packageName,@JsonKey(name: 'package_type') String? packageType,@JsonKey(name: 'package_days') int? packageDays,@JsonKey(name: 'package_amount') int? packageAmount,@JsonKey(name: 'start_date') String? startDate,@JsonKey(name: 'end_date') String? endDate
});




}
/// @nodoc
class _$PackageDataCopyWithImpl<$Res>
    implements $PackageDataCopyWith<$Res> {
  _$PackageDataCopyWithImpl(this._self, this._then);

  final PackageData _self;
  final $Res Function(PackageData) _then;

/// Create a copy of PackageData
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? packageName = freezed,Object? packageType = freezed,Object? packageDays = freezed,Object? packageAmount = freezed,Object? startDate = freezed,Object? endDate = freezed,}) {
  return _then(_self.copyWith(
packageName: freezed == packageName ? _self.packageName : packageName // ignore: cast_nullable_to_non_nullable
as String?,packageType: freezed == packageType ? _self.packageType : packageType // ignore: cast_nullable_to_non_nullable
as String?,packageDays: freezed == packageDays ? _self.packageDays : packageDays // ignore: cast_nullable_to_non_nullable
as int?,packageAmount: freezed == packageAmount ? _self.packageAmount : packageAmount // ignore: cast_nullable_to_non_nullable
as int?,startDate: freezed == startDate ? _self.startDate : startDate // ignore: cast_nullable_to_non_nullable
as String?,endDate: freezed == endDate ? _self.endDate : endDate // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [PackageData].
extension PackageDataPatterns on PackageData {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PackageData value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PackageData() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PackageData value)  $default,){
final _that = this;
switch (_that) {
case _PackageData():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PackageData value)?  $default,){
final _that = this;
switch (_that) {
case _PackageData() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'package_name')  String? packageName, @JsonKey(name: 'package_type')  String? packageType, @JsonKey(name: 'package_days')  int? packageDays, @JsonKey(name: 'package_amount')  int? packageAmount, @JsonKey(name: 'start_date')  String? startDate, @JsonKey(name: 'end_date')  String? endDate)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PackageData() when $default != null:
return $default(_that.packageName,_that.packageType,_that.packageDays,_that.packageAmount,_that.startDate,_that.endDate);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'package_name')  String? packageName, @JsonKey(name: 'package_type')  String? packageType, @JsonKey(name: 'package_days')  int? packageDays, @JsonKey(name: 'package_amount')  int? packageAmount, @JsonKey(name: 'start_date')  String? startDate, @JsonKey(name: 'end_date')  String? endDate)  $default,) {final _that = this;
switch (_that) {
case _PackageData():
return $default(_that.packageName,_that.packageType,_that.packageDays,_that.packageAmount,_that.startDate,_that.endDate);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'package_name')  String? packageName, @JsonKey(name: 'package_type')  String? packageType, @JsonKey(name: 'package_days')  int? packageDays, @JsonKey(name: 'package_amount')  int? packageAmount, @JsonKey(name: 'start_date')  String? startDate, @JsonKey(name: 'end_date')  String? endDate)?  $default,) {final _that = this;
switch (_that) {
case _PackageData() when $default != null:
return $default(_that.packageName,_that.packageType,_that.packageDays,_that.packageAmount,_that.startDate,_that.endDate);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _PackageData implements PackageData {
  const _PackageData({@JsonKey(name: 'package_name') this.packageName, @JsonKey(name: 'package_type') this.packageType, @JsonKey(name: 'package_days') this.packageDays, @JsonKey(name: 'package_amount') this.packageAmount, @JsonKey(name: 'start_date') this.startDate, @JsonKey(name: 'end_date') this.endDate});
  factory _PackageData.fromJson(Map<String, dynamic> json) => _$PackageDataFromJson(json);

@override@JsonKey(name: 'package_name') final  String? packageName;
@override@JsonKey(name: 'package_type') final  String? packageType;
@override@JsonKey(name: 'package_days') final  int? packageDays;
@override@JsonKey(name: 'package_amount') final  int? packageAmount;
@override@JsonKey(name: 'start_date') final  String? startDate;
@override@JsonKey(name: 'end_date') final  String? endDate;

/// Create a copy of PackageData
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PackageDataCopyWith<_PackageData> get copyWith => __$PackageDataCopyWithImpl<_PackageData>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PackageDataToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PackageData&&(identical(other.packageName, packageName) || other.packageName == packageName)&&(identical(other.packageType, packageType) || other.packageType == packageType)&&(identical(other.packageDays, packageDays) || other.packageDays == packageDays)&&(identical(other.packageAmount, packageAmount) || other.packageAmount == packageAmount)&&(identical(other.startDate, startDate) || other.startDate == startDate)&&(identical(other.endDate, endDate) || other.endDate == endDate));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,packageName,packageType,packageDays,packageAmount,startDate,endDate);

@override
String toString() {
  return 'PackageData(packageName: $packageName, packageType: $packageType, packageDays: $packageDays, packageAmount: $packageAmount, startDate: $startDate, endDate: $endDate)';
}


}

/// @nodoc
abstract mixin class _$PackageDataCopyWith<$Res> implements $PackageDataCopyWith<$Res> {
  factory _$PackageDataCopyWith(_PackageData value, $Res Function(_PackageData) _then) = __$PackageDataCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'package_name') String? packageName,@JsonKey(name: 'package_type') String? packageType,@JsonKey(name: 'package_days') int? packageDays,@JsonKey(name: 'package_amount') int? packageAmount,@JsonKey(name: 'start_date') String? startDate,@JsonKey(name: 'end_date') String? endDate
});




}
/// @nodoc
class __$PackageDataCopyWithImpl<$Res>
    implements _$PackageDataCopyWith<$Res> {
  __$PackageDataCopyWithImpl(this._self, this._then);

  final _PackageData _self;
  final $Res Function(_PackageData) _then;

/// Create a copy of PackageData
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? packageName = freezed,Object? packageType = freezed,Object? packageDays = freezed,Object? packageAmount = freezed,Object? startDate = freezed,Object? endDate = freezed,}) {
  return _then(_PackageData(
packageName: freezed == packageName ? _self.packageName : packageName // ignore: cast_nullable_to_non_nullable
as String?,packageType: freezed == packageType ? _self.packageType : packageType // ignore: cast_nullable_to_non_nullable
as String?,packageDays: freezed == packageDays ? _self.packageDays : packageDays // ignore: cast_nullable_to_non_nullable
as int?,packageAmount: freezed == packageAmount ? _self.packageAmount : packageAmount // ignore: cast_nullable_to_non_nullable
as int?,startDate: freezed == startDate ? _self.startDate : startDate // ignore: cast_nullable_to_non_nullable
as String?,endDate: freezed == endDate ? _self.endDate : endDate // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$QrData {

@JsonKey(name: 'total_qrs') int? get totalQrs;@JsonKey(name: 'used_qrs') int? get usedQrs;@JsonKey(name: 'pending_qrs') int? get pendingQrs;@JsonKey(name: 'expired_qrs') int? get expiredQrs;
/// Create a copy of QrData
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$QrDataCopyWith<QrData> get copyWith => _$QrDataCopyWithImpl<QrData>(this as QrData, _$identity);

  /// Serializes this QrData to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is QrData&&(identical(other.totalQrs, totalQrs) || other.totalQrs == totalQrs)&&(identical(other.usedQrs, usedQrs) || other.usedQrs == usedQrs)&&(identical(other.pendingQrs, pendingQrs) || other.pendingQrs == pendingQrs)&&(identical(other.expiredQrs, expiredQrs) || other.expiredQrs == expiredQrs));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,totalQrs,usedQrs,pendingQrs,expiredQrs);

@override
String toString() {
  return 'QrData(totalQrs: $totalQrs, usedQrs: $usedQrs, pendingQrs: $pendingQrs, expiredQrs: $expiredQrs)';
}


}

/// @nodoc
abstract mixin class $QrDataCopyWith<$Res>  {
  factory $QrDataCopyWith(QrData value, $Res Function(QrData) _then) = _$QrDataCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'total_qrs') int? totalQrs,@JsonKey(name: 'used_qrs') int? usedQrs,@JsonKey(name: 'pending_qrs') int? pendingQrs,@JsonKey(name: 'expired_qrs') int? expiredQrs
});




}
/// @nodoc
class _$QrDataCopyWithImpl<$Res>
    implements $QrDataCopyWith<$Res> {
  _$QrDataCopyWithImpl(this._self, this._then);

  final QrData _self;
  final $Res Function(QrData) _then;

/// Create a copy of QrData
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? totalQrs = freezed,Object? usedQrs = freezed,Object? pendingQrs = freezed,Object? expiredQrs = freezed,}) {
  return _then(_self.copyWith(
totalQrs: freezed == totalQrs ? _self.totalQrs : totalQrs // ignore: cast_nullable_to_non_nullable
as int?,usedQrs: freezed == usedQrs ? _self.usedQrs : usedQrs // ignore: cast_nullable_to_non_nullable
as int?,pendingQrs: freezed == pendingQrs ? _self.pendingQrs : pendingQrs // ignore: cast_nullable_to_non_nullable
as int?,expiredQrs: freezed == expiredQrs ? _self.expiredQrs : expiredQrs // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}

}


/// Adds pattern-matching-related methods to [QrData].
extension QrDataPatterns on QrData {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _QrData value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _QrData() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _QrData value)  $default,){
final _that = this;
switch (_that) {
case _QrData():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _QrData value)?  $default,){
final _that = this;
switch (_that) {
case _QrData() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'total_qrs')  int? totalQrs, @JsonKey(name: 'used_qrs')  int? usedQrs, @JsonKey(name: 'pending_qrs')  int? pendingQrs, @JsonKey(name: 'expired_qrs')  int? expiredQrs)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _QrData() when $default != null:
return $default(_that.totalQrs,_that.usedQrs,_that.pendingQrs,_that.expiredQrs);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'total_qrs')  int? totalQrs, @JsonKey(name: 'used_qrs')  int? usedQrs, @JsonKey(name: 'pending_qrs')  int? pendingQrs, @JsonKey(name: 'expired_qrs')  int? expiredQrs)  $default,) {final _that = this;
switch (_that) {
case _QrData():
return $default(_that.totalQrs,_that.usedQrs,_that.pendingQrs,_that.expiredQrs);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'total_qrs')  int? totalQrs, @JsonKey(name: 'used_qrs')  int? usedQrs, @JsonKey(name: 'pending_qrs')  int? pendingQrs, @JsonKey(name: 'expired_qrs')  int? expiredQrs)?  $default,) {final _that = this;
switch (_that) {
case _QrData() when $default != null:
return $default(_that.totalQrs,_that.usedQrs,_that.pendingQrs,_that.expiredQrs);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _QrData implements QrData {
  const _QrData({@JsonKey(name: 'total_qrs') this.totalQrs, @JsonKey(name: 'used_qrs') this.usedQrs, @JsonKey(name: 'pending_qrs') this.pendingQrs, @JsonKey(name: 'expired_qrs') this.expiredQrs});
  factory _QrData.fromJson(Map<String, dynamic> json) => _$QrDataFromJson(json);

@override@JsonKey(name: 'total_qrs') final  int? totalQrs;
@override@JsonKey(name: 'used_qrs') final  int? usedQrs;
@override@JsonKey(name: 'pending_qrs') final  int? pendingQrs;
@override@JsonKey(name: 'expired_qrs') final  int? expiredQrs;

/// Create a copy of QrData
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$QrDataCopyWith<_QrData> get copyWith => __$QrDataCopyWithImpl<_QrData>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$QrDataToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _QrData&&(identical(other.totalQrs, totalQrs) || other.totalQrs == totalQrs)&&(identical(other.usedQrs, usedQrs) || other.usedQrs == usedQrs)&&(identical(other.pendingQrs, pendingQrs) || other.pendingQrs == pendingQrs)&&(identical(other.expiredQrs, expiredQrs) || other.expiredQrs == expiredQrs));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,totalQrs,usedQrs,pendingQrs,expiredQrs);

@override
String toString() {
  return 'QrData(totalQrs: $totalQrs, usedQrs: $usedQrs, pendingQrs: $pendingQrs, expiredQrs: $expiredQrs)';
}


}

/// @nodoc
abstract mixin class _$QrDataCopyWith<$Res> implements $QrDataCopyWith<$Res> {
  factory _$QrDataCopyWith(_QrData value, $Res Function(_QrData) _then) = __$QrDataCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'total_qrs') int? totalQrs,@JsonKey(name: 'used_qrs') int? usedQrs,@JsonKey(name: 'pending_qrs') int? pendingQrs,@JsonKey(name: 'expired_qrs') int? expiredQrs
});




}
/// @nodoc
class __$QrDataCopyWithImpl<$Res>
    implements _$QrDataCopyWith<$Res> {
  __$QrDataCopyWithImpl(this._self, this._then);

  final _QrData _self;
  final $Res Function(_QrData) _then;

/// Create a copy of QrData
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? totalQrs = freezed,Object? usedQrs = freezed,Object? pendingQrs = freezed,Object? expiredQrs = freezed,}) {
  return _then(_QrData(
totalQrs: freezed == totalQrs ? _self.totalQrs : totalQrs // ignore: cast_nullable_to_non_nullable
as int?,usedQrs: freezed == usedQrs ? _self.usedQrs : usedQrs // ignore: cast_nullable_to_non_nullable
as int?,pendingQrs: freezed == pendingQrs ? _self.pendingQrs : pendingQrs // ignore: cast_nullable_to_non_nullable
as int?,expiredQrs: freezed == expiredQrs ? _self.expiredQrs : expiredQrs // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}


}


/// @nodoc
mixin _$ScannedPaymentData {

@JsonKey(name: 'payment_status') String? get paymentStatus;@JsonKey(name: 'total_amount') String? get totalAmount;@JsonKey(name: 'paid_amount') String? get paidAmount;@JsonKey(name: 'remaining_amount') int? get remainingAmount;
/// Create a copy of ScannedPaymentData
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ScannedPaymentDataCopyWith<ScannedPaymentData> get copyWith => _$ScannedPaymentDataCopyWithImpl<ScannedPaymentData>(this as ScannedPaymentData, _$identity);

  /// Serializes this ScannedPaymentData to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ScannedPaymentData&&(identical(other.paymentStatus, paymentStatus) || other.paymentStatus == paymentStatus)&&(identical(other.totalAmount, totalAmount) || other.totalAmount == totalAmount)&&(identical(other.paidAmount, paidAmount) || other.paidAmount == paidAmount)&&(identical(other.remainingAmount, remainingAmount) || other.remainingAmount == remainingAmount));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,paymentStatus,totalAmount,paidAmount,remainingAmount);

@override
String toString() {
  return 'ScannedPaymentData(paymentStatus: $paymentStatus, totalAmount: $totalAmount, paidAmount: $paidAmount, remainingAmount: $remainingAmount)';
}


}

/// @nodoc
abstract mixin class $ScannedPaymentDataCopyWith<$Res>  {
  factory $ScannedPaymentDataCopyWith(ScannedPaymentData value, $Res Function(ScannedPaymentData) _then) = _$ScannedPaymentDataCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'payment_status') String? paymentStatus,@JsonKey(name: 'total_amount') String? totalAmount,@JsonKey(name: 'paid_amount') String? paidAmount,@JsonKey(name: 'remaining_amount') int? remainingAmount
});




}
/// @nodoc
class _$ScannedPaymentDataCopyWithImpl<$Res>
    implements $ScannedPaymentDataCopyWith<$Res> {
  _$ScannedPaymentDataCopyWithImpl(this._self, this._then);

  final ScannedPaymentData _self;
  final $Res Function(ScannedPaymentData) _then;

/// Create a copy of ScannedPaymentData
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? paymentStatus = freezed,Object? totalAmount = freezed,Object? paidAmount = freezed,Object? remainingAmount = freezed,}) {
  return _then(_self.copyWith(
paymentStatus: freezed == paymentStatus ? _self.paymentStatus : paymentStatus // ignore: cast_nullable_to_non_nullable
as String?,totalAmount: freezed == totalAmount ? _self.totalAmount : totalAmount // ignore: cast_nullable_to_non_nullable
as String?,paidAmount: freezed == paidAmount ? _self.paidAmount : paidAmount // ignore: cast_nullable_to_non_nullable
as String?,remainingAmount: freezed == remainingAmount ? _self.remainingAmount : remainingAmount // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}

}


/// Adds pattern-matching-related methods to [ScannedPaymentData].
extension ScannedPaymentDataPatterns on ScannedPaymentData {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ScannedPaymentData value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ScannedPaymentData() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ScannedPaymentData value)  $default,){
final _that = this;
switch (_that) {
case _ScannedPaymentData():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ScannedPaymentData value)?  $default,){
final _that = this;
switch (_that) {
case _ScannedPaymentData() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'payment_status')  String? paymentStatus, @JsonKey(name: 'total_amount')  String? totalAmount, @JsonKey(name: 'paid_amount')  String? paidAmount, @JsonKey(name: 'remaining_amount')  int? remainingAmount)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ScannedPaymentData() when $default != null:
return $default(_that.paymentStatus,_that.totalAmount,_that.paidAmount,_that.remainingAmount);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'payment_status')  String? paymentStatus, @JsonKey(name: 'total_amount')  String? totalAmount, @JsonKey(name: 'paid_amount')  String? paidAmount, @JsonKey(name: 'remaining_amount')  int? remainingAmount)  $default,) {final _that = this;
switch (_that) {
case _ScannedPaymentData():
return $default(_that.paymentStatus,_that.totalAmount,_that.paidAmount,_that.remainingAmount);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'payment_status')  String? paymentStatus, @JsonKey(name: 'total_amount')  String? totalAmount, @JsonKey(name: 'paid_amount')  String? paidAmount, @JsonKey(name: 'remaining_amount')  int? remainingAmount)?  $default,) {final _that = this;
switch (_that) {
case _ScannedPaymentData() when $default != null:
return $default(_that.paymentStatus,_that.totalAmount,_that.paidAmount,_that.remainingAmount);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ScannedPaymentData implements ScannedPaymentData {
  const _ScannedPaymentData({@JsonKey(name: 'payment_status') this.paymentStatus, @JsonKey(name: 'total_amount') this.totalAmount, @JsonKey(name: 'paid_amount') this.paidAmount, @JsonKey(name: 'remaining_amount') this.remainingAmount});
  factory _ScannedPaymentData.fromJson(Map<String, dynamic> json) => _$ScannedPaymentDataFromJson(json);

@override@JsonKey(name: 'payment_status') final  String? paymentStatus;
@override@JsonKey(name: 'total_amount') final  String? totalAmount;
@override@JsonKey(name: 'paid_amount') final  String? paidAmount;
@override@JsonKey(name: 'remaining_amount') final  int? remainingAmount;

/// Create a copy of ScannedPaymentData
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ScannedPaymentDataCopyWith<_ScannedPaymentData> get copyWith => __$ScannedPaymentDataCopyWithImpl<_ScannedPaymentData>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ScannedPaymentDataToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ScannedPaymentData&&(identical(other.paymentStatus, paymentStatus) || other.paymentStatus == paymentStatus)&&(identical(other.totalAmount, totalAmount) || other.totalAmount == totalAmount)&&(identical(other.paidAmount, paidAmount) || other.paidAmount == paidAmount)&&(identical(other.remainingAmount, remainingAmount) || other.remainingAmount == remainingAmount));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,paymentStatus,totalAmount,paidAmount,remainingAmount);

@override
String toString() {
  return 'ScannedPaymentData(paymentStatus: $paymentStatus, totalAmount: $totalAmount, paidAmount: $paidAmount, remainingAmount: $remainingAmount)';
}


}

/// @nodoc
abstract mixin class _$ScannedPaymentDataCopyWith<$Res> implements $ScannedPaymentDataCopyWith<$Res> {
  factory _$ScannedPaymentDataCopyWith(_ScannedPaymentData value, $Res Function(_ScannedPaymentData) _then) = __$ScannedPaymentDataCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'payment_status') String? paymentStatus,@JsonKey(name: 'total_amount') String? totalAmount,@JsonKey(name: 'paid_amount') String? paidAmount,@JsonKey(name: 'remaining_amount') int? remainingAmount
});




}
/// @nodoc
class __$ScannedPaymentDataCopyWithImpl<$Res>
    implements _$ScannedPaymentDataCopyWith<$Res> {
  __$ScannedPaymentDataCopyWithImpl(this._self, this._then);

  final _ScannedPaymentData _self;
  final $Res Function(_ScannedPaymentData) _then;

/// Create a copy of ScannedPaymentData
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? paymentStatus = freezed,Object? totalAmount = freezed,Object? paidAmount = freezed,Object? remainingAmount = freezed,}) {
  return _then(_ScannedPaymentData(
paymentStatus: freezed == paymentStatus ? _self.paymentStatus : paymentStatus // ignore: cast_nullable_to_non_nullable
as String?,totalAmount: freezed == totalAmount ? _self.totalAmount : totalAmount // ignore: cast_nullable_to_non_nullable
as String?,paidAmount: freezed == paidAmount ? _self.paidAmount : paidAmount // ignore: cast_nullable_to_non_nullable
as String?,remainingAmount: freezed == remainingAmount ? _self.remainingAmount : remainingAmount // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}


}

// dart format on
