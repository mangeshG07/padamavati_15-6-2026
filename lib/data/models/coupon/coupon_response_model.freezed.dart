// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'coupon_response_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$CouponResponseModel {

@JsonKey(name: 'coupon_summary') CouponSummaryModel? get couponSummary;@JsonKey(name: 'today_qr_codes') List<QRModel>? get todayQr;@JsonKey(name: 'scanned_qr_codes') List<QRModel>? get scannedQr;
/// Create a copy of CouponResponseModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CouponResponseModelCopyWith<CouponResponseModel> get copyWith => _$CouponResponseModelCopyWithImpl<CouponResponseModel>(this as CouponResponseModel, _$identity);

  /// Serializes this CouponResponseModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CouponResponseModel&&(identical(other.couponSummary, couponSummary) || other.couponSummary == couponSummary)&&const DeepCollectionEquality().equals(other.todayQr, todayQr)&&const DeepCollectionEquality().equals(other.scannedQr, scannedQr));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,couponSummary,const DeepCollectionEquality().hash(todayQr),const DeepCollectionEquality().hash(scannedQr));

@override
String toString() {
  return 'CouponResponseModel(couponSummary: $couponSummary, todayQr: $todayQr, scannedQr: $scannedQr)';
}


}

/// @nodoc
abstract mixin class $CouponResponseModelCopyWith<$Res>  {
  factory $CouponResponseModelCopyWith(CouponResponseModel value, $Res Function(CouponResponseModel) _then) = _$CouponResponseModelCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'coupon_summary') CouponSummaryModel? couponSummary,@JsonKey(name: 'today_qr_codes') List<QRModel>? todayQr,@JsonKey(name: 'scanned_qr_codes') List<QRModel>? scannedQr
});


$CouponSummaryModelCopyWith<$Res>? get couponSummary;

}
/// @nodoc
class _$CouponResponseModelCopyWithImpl<$Res>
    implements $CouponResponseModelCopyWith<$Res> {
  _$CouponResponseModelCopyWithImpl(this._self, this._then);

  final CouponResponseModel _self;
  final $Res Function(CouponResponseModel) _then;

/// Create a copy of CouponResponseModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? couponSummary = freezed,Object? todayQr = freezed,Object? scannedQr = freezed,}) {
  return _then(_self.copyWith(
couponSummary: freezed == couponSummary ? _self.couponSummary : couponSummary // ignore: cast_nullable_to_non_nullable
as CouponSummaryModel?,todayQr: freezed == todayQr ? _self.todayQr : todayQr // ignore: cast_nullable_to_non_nullable
as List<QRModel>?,scannedQr: freezed == scannedQr ? _self.scannedQr : scannedQr // ignore: cast_nullable_to_non_nullable
as List<QRModel>?,
  ));
}
/// Create a copy of CouponResponseModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CouponSummaryModelCopyWith<$Res>? get couponSummary {
    if (_self.couponSummary == null) {
    return null;
  }

  return $CouponSummaryModelCopyWith<$Res>(_self.couponSummary!, (value) {
    return _then(_self.copyWith(couponSummary: value));
  });
}
}


/// Adds pattern-matching-related methods to [CouponResponseModel].
extension CouponResponseModelPatterns on CouponResponseModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CouponResponseModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CouponResponseModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CouponResponseModel value)  $default,){
final _that = this;
switch (_that) {
case _CouponResponseModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CouponResponseModel value)?  $default,){
final _that = this;
switch (_that) {
case _CouponResponseModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'coupon_summary')  CouponSummaryModel? couponSummary, @JsonKey(name: 'today_qr_codes')  List<QRModel>? todayQr, @JsonKey(name: 'scanned_qr_codes')  List<QRModel>? scannedQr)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CouponResponseModel() when $default != null:
return $default(_that.couponSummary,_that.todayQr,_that.scannedQr);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'coupon_summary')  CouponSummaryModel? couponSummary, @JsonKey(name: 'today_qr_codes')  List<QRModel>? todayQr, @JsonKey(name: 'scanned_qr_codes')  List<QRModel>? scannedQr)  $default,) {final _that = this;
switch (_that) {
case _CouponResponseModel():
return $default(_that.couponSummary,_that.todayQr,_that.scannedQr);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'coupon_summary')  CouponSummaryModel? couponSummary, @JsonKey(name: 'today_qr_codes')  List<QRModel>? todayQr, @JsonKey(name: 'scanned_qr_codes')  List<QRModel>? scannedQr)?  $default,) {final _that = this;
switch (_that) {
case _CouponResponseModel() when $default != null:
return $default(_that.couponSummary,_that.todayQr,_that.scannedQr);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CouponResponseModel implements CouponResponseModel {
  const _CouponResponseModel({@JsonKey(name: 'coupon_summary') this.couponSummary, @JsonKey(name: 'today_qr_codes') final  List<QRModel>? todayQr, @JsonKey(name: 'scanned_qr_codes') final  List<QRModel>? scannedQr}): _todayQr = todayQr,_scannedQr = scannedQr;
  factory _CouponResponseModel.fromJson(Map<String, dynamic> json) => _$CouponResponseModelFromJson(json);

@override@JsonKey(name: 'coupon_summary') final  CouponSummaryModel? couponSummary;
 final  List<QRModel>? _todayQr;
@override@JsonKey(name: 'today_qr_codes') List<QRModel>? get todayQr {
  final value = _todayQr;
  if (value == null) return null;
  if (_todayQr is EqualUnmodifiableListView) return _todayQr;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

 final  List<QRModel>? _scannedQr;
@override@JsonKey(name: 'scanned_qr_codes') List<QRModel>? get scannedQr {
  final value = _scannedQr;
  if (value == null) return null;
  if (_scannedQr is EqualUnmodifiableListView) return _scannedQr;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}


/// Create a copy of CouponResponseModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CouponResponseModelCopyWith<_CouponResponseModel> get copyWith => __$CouponResponseModelCopyWithImpl<_CouponResponseModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CouponResponseModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CouponResponseModel&&(identical(other.couponSummary, couponSummary) || other.couponSummary == couponSummary)&&const DeepCollectionEquality().equals(other._todayQr, _todayQr)&&const DeepCollectionEquality().equals(other._scannedQr, _scannedQr));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,couponSummary,const DeepCollectionEquality().hash(_todayQr),const DeepCollectionEquality().hash(_scannedQr));

@override
String toString() {
  return 'CouponResponseModel(couponSummary: $couponSummary, todayQr: $todayQr, scannedQr: $scannedQr)';
}


}

/// @nodoc
abstract mixin class _$CouponResponseModelCopyWith<$Res> implements $CouponResponseModelCopyWith<$Res> {
  factory _$CouponResponseModelCopyWith(_CouponResponseModel value, $Res Function(_CouponResponseModel) _then) = __$CouponResponseModelCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'coupon_summary') CouponSummaryModel? couponSummary,@JsonKey(name: 'today_qr_codes') List<QRModel>? todayQr,@JsonKey(name: 'scanned_qr_codes') List<QRModel>? scannedQr
});


@override $CouponSummaryModelCopyWith<$Res>? get couponSummary;

}
/// @nodoc
class __$CouponResponseModelCopyWithImpl<$Res>
    implements _$CouponResponseModelCopyWith<$Res> {
  __$CouponResponseModelCopyWithImpl(this._self, this._then);

  final _CouponResponseModel _self;
  final $Res Function(_CouponResponseModel) _then;

/// Create a copy of CouponResponseModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? couponSummary = freezed,Object? todayQr = freezed,Object? scannedQr = freezed,}) {
  return _then(_CouponResponseModel(
couponSummary: freezed == couponSummary ? _self.couponSummary : couponSummary // ignore: cast_nullable_to_non_nullable
as CouponSummaryModel?,todayQr: freezed == todayQr ? _self._todayQr : todayQr // ignore: cast_nullable_to_non_nullable
as List<QRModel>?,scannedQr: freezed == scannedQr ? _self._scannedQr : scannedQr // ignore: cast_nullable_to_non_nullable
as List<QRModel>?,
  ));
}

/// Create a copy of CouponResponseModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CouponSummaryModelCopyWith<$Res>? get couponSummary {
    if (_self.couponSummary == null) {
    return null;
  }

  return $CouponSummaryModelCopyWith<$Res>(_self.couponSummary!, (value) {
    return _then(_self.copyWith(couponSummary: value));
  });
}
}

// dart format on
