// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'qr_response_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$QRResponseModel {

@JsonKey(name: 'user_data') QRUserDataModel? get userData;@JsonKey(name: 'payment_data') PaymentDataModel? get paymentData;@JsonKey(name: 'qr_data') QRDataModel? get qrData;@JsonKey(name: 'scan_data') ScanDataModel? get scanData;
/// Create a copy of QRResponseModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$QRResponseModelCopyWith<QRResponseModel> get copyWith => _$QRResponseModelCopyWithImpl<QRResponseModel>(this as QRResponseModel, _$identity);

  /// Serializes this QRResponseModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is QRResponseModel&&(identical(other.userData, userData) || other.userData == userData)&&(identical(other.paymentData, paymentData) || other.paymentData == paymentData)&&(identical(other.qrData, qrData) || other.qrData == qrData)&&(identical(other.scanData, scanData) || other.scanData == scanData));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,userData,paymentData,qrData,scanData);

@override
String toString() {
  return 'QRResponseModel(userData: $userData, paymentData: $paymentData, qrData: $qrData, scanData: $scanData)';
}


}

/// @nodoc
abstract mixin class $QRResponseModelCopyWith<$Res>  {
  factory $QRResponseModelCopyWith(QRResponseModel value, $Res Function(QRResponseModel) _then) = _$QRResponseModelCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'user_data') QRUserDataModel? userData,@JsonKey(name: 'payment_data') PaymentDataModel? paymentData,@JsonKey(name: 'qr_data') QRDataModel? qrData,@JsonKey(name: 'scan_data') ScanDataModel? scanData
});


$QRUserDataModelCopyWith<$Res>? get userData;$PaymentDataModelCopyWith<$Res>? get paymentData;$QRDataModelCopyWith<$Res>? get qrData;$ScanDataModelCopyWith<$Res>? get scanData;

}
/// @nodoc
class _$QRResponseModelCopyWithImpl<$Res>
    implements $QRResponseModelCopyWith<$Res> {
  _$QRResponseModelCopyWithImpl(this._self, this._then);

  final QRResponseModel _self;
  final $Res Function(QRResponseModel) _then;

/// Create a copy of QRResponseModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? userData = freezed,Object? paymentData = freezed,Object? qrData = freezed,Object? scanData = freezed,}) {
  return _then(_self.copyWith(
userData: freezed == userData ? _self.userData : userData // ignore: cast_nullable_to_non_nullable
as QRUserDataModel?,paymentData: freezed == paymentData ? _self.paymentData : paymentData // ignore: cast_nullable_to_non_nullable
as PaymentDataModel?,qrData: freezed == qrData ? _self.qrData : qrData // ignore: cast_nullable_to_non_nullable
as QRDataModel?,scanData: freezed == scanData ? _self.scanData : scanData // ignore: cast_nullable_to_non_nullable
as ScanDataModel?,
  ));
}
/// Create a copy of QRResponseModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$QRUserDataModelCopyWith<$Res>? get userData {
    if (_self.userData == null) {
    return null;
  }

  return $QRUserDataModelCopyWith<$Res>(_self.userData!, (value) {
    return _then(_self.copyWith(userData: value));
  });
}/// Create a copy of QRResponseModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PaymentDataModelCopyWith<$Res>? get paymentData {
    if (_self.paymentData == null) {
    return null;
  }

  return $PaymentDataModelCopyWith<$Res>(_self.paymentData!, (value) {
    return _then(_self.copyWith(paymentData: value));
  });
}/// Create a copy of QRResponseModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$QRDataModelCopyWith<$Res>? get qrData {
    if (_self.qrData == null) {
    return null;
  }

  return $QRDataModelCopyWith<$Res>(_self.qrData!, (value) {
    return _then(_self.copyWith(qrData: value));
  });
}/// Create a copy of QRResponseModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ScanDataModelCopyWith<$Res>? get scanData {
    if (_self.scanData == null) {
    return null;
  }

  return $ScanDataModelCopyWith<$Res>(_self.scanData!, (value) {
    return _then(_self.copyWith(scanData: value));
  });
}
}


/// Adds pattern-matching-related methods to [QRResponseModel].
extension QRResponseModelPatterns on QRResponseModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _QRResponseModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _QRResponseModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _QRResponseModel value)  $default,){
final _that = this;
switch (_that) {
case _QRResponseModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _QRResponseModel value)?  $default,){
final _that = this;
switch (_that) {
case _QRResponseModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'user_data')  QRUserDataModel? userData, @JsonKey(name: 'payment_data')  PaymentDataModel? paymentData, @JsonKey(name: 'qr_data')  QRDataModel? qrData, @JsonKey(name: 'scan_data')  ScanDataModel? scanData)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _QRResponseModel() when $default != null:
return $default(_that.userData,_that.paymentData,_that.qrData,_that.scanData);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'user_data')  QRUserDataModel? userData, @JsonKey(name: 'payment_data')  PaymentDataModel? paymentData, @JsonKey(name: 'qr_data')  QRDataModel? qrData, @JsonKey(name: 'scan_data')  ScanDataModel? scanData)  $default,) {final _that = this;
switch (_that) {
case _QRResponseModel():
return $default(_that.userData,_that.paymentData,_that.qrData,_that.scanData);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'user_data')  QRUserDataModel? userData, @JsonKey(name: 'payment_data')  PaymentDataModel? paymentData, @JsonKey(name: 'qr_data')  QRDataModel? qrData, @JsonKey(name: 'scan_data')  ScanDataModel? scanData)?  $default,) {final _that = this;
switch (_that) {
case _QRResponseModel() when $default != null:
return $default(_that.userData,_that.paymentData,_that.qrData,_that.scanData);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _QRResponseModel implements QRResponseModel {
  const _QRResponseModel({@JsonKey(name: 'user_data') this.userData, @JsonKey(name: 'payment_data') this.paymentData, @JsonKey(name: 'qr_data') this.qrData, @JsonKey(name: 'scan_data') this.scanData});
  factory _QRResponseModel.fromJson(Map<String, dynamic> json) => _$QRResponseModelFromJson(json);

@override@JsonKey(name: 'user_data') final  QRUserDataModel? userData;
@override@JsonKey(name: 'payment_data') final  PaymentDataModel? paymentData;
@override@JsonKey(name: 'qr_data') final  QRDataModel? qrData;
@override@JsonKey(name: 'scan_data') final  ScanDataModel? scanData;

/// Create a copy of QRResponseModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$QRResponseModelCopyWith<_QRResponseModel> get copyWith => __$QRResponseModelCopyWithImpl<_QRResponseModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$QRResponseModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _QRResponseModel&&(identical(other.userData, userData) || other.userData == userData)&&(identical(other.paymentData, paymentData) || other.paymentData == paymentData)&&(identical(other.qrData, qrData) || other.qrData == qrData)&&(identical(other.scanData, scanData) || other.scanData == scanData));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,userData,paymentData,qrData,scanData);

@override
String toString() {
  return 'QRResponseModel(userData: $userData, paymentData: $paymentData, qrData: $qrData, scanData: $scanData)';
}


}

/// @nodoc
abstract mixin class _$QRResponseModelCopyWith<$Res> implements $QRResponseModelCopyWith<$Res> {
  factory _$QRResponseModelCopyWith(_QRResponseModel value, $Res Function(_QRResponseModel) _then) = __$QRResponseModelCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'user_data') QRUserDataModel? userData,@JsonKey(name: 'payment_data') PaymentDataModel? paymentData,@JsonKey(name: 'qr_data') QRDataModel? qrData,@JsonKey(name: 'scan_data') ScanDataModel? scanData
});


@override $QRUserDataModelCopyWith<$Res>? get userData;@override $PaymentDataModelCopyWith<$Res>? get paymentData;@override $QRDataModelCopyWith<$Res>? get qrData;@override $ScanDataModelCopyWith<$Res>? get scanData;

}
/// @nodoc
class __$QRResponseModelCopyWithImpl<$Res>
    implements _$QRResponseModelCopyWith<$Res> {
  __$QRResponseModelCopyWithImpl(this._self, this._then);

  final _QRResponseModel _self;
  final $Res Function(_QRResponseModel) _then;

/// Create a copy of QRResponseModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? userData = freezed,Object? paymentData = freezed,Object? qrData = freezed,Object? scanData = freezed,}) {
  return _then(_QRResponseModel(
userData: freezed == userData ? _self.userData : userData // ignore: cast_nullable_to_non_nullable
as QRUserDataModel?,paymentData: freezed == paymentData ? _self.paymentData : paymentData // ignore: cast_nullable_to_non_nullable
as PaymentDataModel?,qrData: freezed == qrData ? _self.qrData : qrData // ignore: cast_nullable_to_non_nullable
as QRDataModel?,scanData: freezed == scanData ? _self.scanData : scanData // ignore: cast_nullable_to_non_nullable
as ScanDataModel?,
  ));
}

/// Create a copy of QRResponseModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$QRUserDataModelCopyWith<$Res>? get userData {
    if (_self.userData == null) {
    return null;
  }

  return $QRUserDataModelCopyWith<$Res>(_self.userData!, (value) {
    return _then(_self.copyWith(userData: value));
  });
}/// Create a copy of QRResponseModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PaymentDataModelCopyWith<$Res>? get paymentData {
    if (_self.paymentData == null) {
    return null;
  }

  return $PaymentDataModelCopyWith<$Res>(_self.paymentData!, (value) {
    return _then(_self.copyWith(paymentData: value));
  });
}/// Create a copy of QRResponseModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$QRDataModelCopyWith<$Res>? get qrData {
    if (_self.qrData == null) {
    return null;
  }

  return $QRDataModelCopyWith<$Res>(_self.qrData!, (value) {
    return _then(_self.copyWith(qrData: value));
  });
}/// Create a copy of QRResponseModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ScanDataModelCopyWith<$Res>? get scanData {
    if (_self.scanData == null) {
    return null;
  }

  return $ScanDataModelCopyWith<$Res>(_self.scanData!, (value) {
    return _then(_self.copyWith(scanData: value));
  });
}
}

// dart format on
