// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'payment_data_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$PaymentDataModel {

@JsonKey(name: 'package_amount') int? get packageAmount;@JsonKey(name: 'remaining_amount') int? get remainingAmount;@JsonKey(name: 'payment_status') String? get paymentStatus;@JsonKey(name: 'paid_amount') String? get paidAmount;@JsonKey(name: 'paid_date') String? get paidDate;
/// Create a copy of PaymentDataModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PaymentDataModelCopyWith<PaymentDataModel> get copyWith => _$PaymentDataModelCopyWithImpl<PaymentDataModel>(this as PaymentDataModel, _$identity);

  /// Serializes this PaymentDataModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PaymentDataModel&&(identical(other.packageAmount, packageAmount) || other.packageAmount == packageAmount)&&(identical(other.remainingAmount, remainingAmount) || other.remainingAmount == remainingAmount)&&(identical(other.paymentStatus, paymentStatus) || other.paymentStatus == paymentStatus)&&(identical(other.paidAmount, paidAmount) || other.paidAmount == paidAmount)&&(identical(other.paidDate, paidDate) || other.paidDate == paidDate));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,packageAmount,remainingAmount,paymentStatus,paidAmount,paidDate);

@override
String toString() {
  return 'PaymentDataModel(packageAmount: $packageAmount, remainingAmount: $remainingAmount, paymentStatus: $paymentStatus, paidAmount: $paidAmount, paidDate: $paidDate)';
}


}

/// @nodoc
abstract mixin class $PaymentDataModelCopyWith<$Res>  {
  factory $PaymentDataModelCopyWith(PaymentDataModel value, $Res Function(PaymentDataModel) _then) = _$PaymentDataModelCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'package_amount') int? packageAmount,@JsonKey(name: 'remaining_amount') int? remainingAmount,@JsonKey(name: 'payment_status') String? paymentStatus,@JsonKey(name: 'paid_amount') String? paidAmount,@JsonKey(name: 'paid_date') String? paidDate
});




}
/// @nodoc
class _$PaymentDataModelCopyWithImpl<$Res>
    implements $PaymentDataModelCopyWith<$Res> {
  _$PaymentDataModelCopyWithImpl(this._self, this._then);

  final PaymentDataModel _self;
  final $Res Function(PaymentDataModel) _then;

/// Create a copy of PaymentDataModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? packageAmount = freezed,Object? remainingAmount = freezed,Object? paymentStatus = freezed,Object? paidAmount = freezed,Object? paidDate = freezed,}) {
  return _then(_self.copyWith(
packageAmount: freezed == packageAmount ? _self.packageAmount : packageAmount // ignore: cast_nullable_to_non_nullable
as int?,remainingAmount: freezed == remainingAmount ? _self.remainingAmount : remainingAmount // ignore: cast_nullable_to_non_nullable
as int?,paymentStatus: freezed == paymentStatus ? _self.paymentStatus : paymentStatus // ignore: cast_nullable_to_non_nullable
as String?,paidAmount: freezed == paidAmount ? _self.paidAmount : paidAmount // ignore: cast_nullable_to_non_nullable
as String?,paidDate: freezed == paidDate ? _self.paidDate : paidDate // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [PaymentDataModel].
extension PaymentDataModelPatterns on PaymentDataModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PaymentDataModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PaymentDataModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PaymentDataModel value)  $default,){
final _that = this;
switch (_that) {
case _PaymentDataModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PaymentDataModel value)?  $default,){
final _that = this;
switch (_that) {
case _PaymentDataModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'package_amount')  int? packageAmount, @JsonKey(name: 'remaining_amount')  int? remainingAmount, @JsonKey(name: 'payment_status')  String? paymentStatus, @JsonKey(name: 'paid_amount')  String? paidAmount, @JsonKey(name: 'paid_date')  String? paidDate)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PaymentDataModel() when $default != null:
return $default(_that.packageAmount,_that.remainingAmount,_that.paymentStatus,_that.paidAmount,_that.paidDate);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'package_amount')  int? packageAmount, @JsonKey(name: 'remaining_amount')  int? remainingAmount, @JsonKey(name: 'payment_status')  String? paymentStatus, @JsonKey(name: 'paid_amount')  String? paidAmount, @JsonKey(name: 'paid_date')  String? paidDate)  $default,) {final _that = this;
switch (_that) {
case _PaymentDataModel():
return $default(_that.packageAmount,_that.remainingAmount,_that.paymentStatus,_that.paidAmount,_that.paidDate);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'package_amount')  int? packageAmount, @JsonKey(name: 'remaining_amount')  int? remainingAmount, @JsonKey(name: 'payment_status')  String? paymentStatus, @JsonKey(name: 'paid_amount')  String? paidAmount, @JsonKey(name: 'paid_date')  String? paidDate)?  $default,) {final _that = this;
switch (_that) {
case _PaymentDataModel() when $default != null:
return $default(_that.packageAmount,_that.remainingAmount,_that.paymentStatus,_that.paidAmount,_that.paidDate);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _PaymentDataModel implements PaymentDataModel {
  const _PaymentDataModel({@JsonKey(name: 'package_amount') this.packageAmount, @JsonKey(name: 'remaining_amount') this.remainingAmount, @JsonKey(name: 'payment_status') this.paymentStatus, @JsonKey(name: 'paid_amount') this.paidAmount, @JsonKey(name: 'paid_date') this.paidDate});
  factory _PaymentDataModel.fromJson(Map<String, dynamic> json) => _$PaymentDataModelFromJson(json);

@override@JsonKey(name: 'package_amount') final  int? packageAmount;
@override@JsonKey(name: 'remaining_amount') final  int? remainingAmount;
@override@JsonKey(name: 'payment_status') final  String? paymentStatus;
@override@JsonKey(name: 'paid_amount') final  String? paidAmount;
@override@JsonKey(name: 'paid_date') final  String? paidDate;

/// Create a copy of PaymentDataModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PaymentDataModelCopyWith<_PaymentDataModel> get copyWith => __$PaymentDataModelCopyWithImpl<_PaymentDataModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PaymentDataModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PaymentDataModel&&(identical(other.packageAmount, packageAmount) || other.packageAmount == packageAmount)&&(identical(other.remainingAmount, remainingAmount) || other.remainingAmount == remainingAmount)&&(identical(other.paymentStatus, paymentStatus) || other.paymentStatus == paymentStatus)&&(identical(other.paidAmount, paidAmount) || other.paidAmount == paidAmount)&&(identical(other.paidDate, paidDate) || other.paidDate == paidDate));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,packageAmount,remainingAmount,paymentStatus,paidAmount,paidDate);

@override
String toString() {
  return 'PaymentDataModel(packageAmount: $packageAmount, remainingAmount: $remainingAmount, paymentStatus: $paymentStatus, paidAmount: $paidAmount, paidDate: $paidDate)';
}


}

/// @nodoc
abstract mixin class _$PaymentDataModelCopyWith<$Res> implements $PaymentDataModelCopyWith<$Res> {
  factory _$PaymentDataModelCopyWith(_PaymentDataModel value, $Res Function(_PaymentDataModel) _then) = __$PaymentDataModelCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'package_amount') int? packageAmount,@JsonKey(name: 'remaining_amount') int? remainingAmount,@JsonKey(name: 'payment_status') String? paymentStatus,@JsonKey(name: 'paid_amount') String? paidAmount,@JsonKey(name: 'paid_date') String? paidDate
});




}
/// @nodoc
class __$PaymentDataModelCopyWithImpl<$Res>
    implements _$PaymentDataModelCopyWith<$Res> {
  __$PaymentDataModelCopyWithImpl(this._self, this._then);

  final _PaymentDataModel _self;
  final $Res Function(_PaymentDataModel) _then;

/// Create a copy of PaymentDataModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? packageAmount = freezed,Object? remainingAmount = freezed,Object? paymentStatus = freezed,Object? paidAmount = freezed,Object? paidDate = freezed,}) {
  return _then(_PaymentDataModel(
packageAmount: freezed == packageAmount ? _self.packageAmount : packageAmount // ignore: cast_nullable_to_non_nullable
as int?,remainingAmount: freezed == remainingAmount ? _self.remainingAmount : remainingAmount // ignore: cast_nullable_to_non_nullable
as int?,paymentStatus: freezed == paymentStatus ? _self.paymentStatus : paymentStatus // ignore: cast_nullable_to_non_nullable
as String?,paidAmount: freezed == paidAmount ? _self.paidAmount : paidAmount // ignore: cast_nullable_to_non_nullable
as String?,paidDate: freezed == paidDate ? _self.paidDate : paidDate // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
