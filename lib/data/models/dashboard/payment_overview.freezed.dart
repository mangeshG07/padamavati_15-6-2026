// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'payment_overview.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$PaymentOverview {

@JsonKey(name: 'total_payment') int? get totalPayment;@JsonKey(name: 'received_payment') int? get receivedPayment;@JsonKey(name: 'pending_payment') int? get pendingPayment;
/// Create a copy of PaymentOverview
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PaymentOverviewCopyWith<PaymentOverview> get copyWith => _$PaymentOverviewCopyWithImpl<PaymentOverview>(this as PaymentOverview, _$identity);

  /// Serializes this PaymentOverview to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PaymentOverview&&(identical(other.totalPayment, totalPayment) || other.totalPayment == totalPayment)&&(identical(other.receivedPayment, receivedPayment) || other.receivedPayment == receivedPayment)&&(identical(other.pendingPayment, pendingPayment) || other.pendingPayment == pendingPayment));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,totalPayment,receivedPayment,pendingPayment);

@override
String toString() {
  return 'PaymentOverview(totalPayment: $totalPayment, receivedPayment: $receivedPayment, pendingPayment: $pendingPayment)';
}


}

/// @nodoc
abstract mixin class $PaymentOverviewCopyWith<$Res>  {
  factory $PaymentOverviewCopyWith(PaymentOverview value, $Res Function(PaymentOverview) _then) = _$PaymentOverviewCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'total_payment') int? totalPayment,@JsonKey(name: 'received_payment') int? receivedPayment,@JsonKey(name: 'pending_payment') int? pendingPayment
});




}
/// @nodoc
class _$PaymentOverviewCopyWithImpl<$Res>
    implements $PaymentOverviewCopyWith<$Res> {
  _$PaymentOverviewCopyWithImpl(this._self, this._then);

  final PaymentOverview _self;
  final $Res Function(PaymentOverview) _then;

/// Create a copy of PaymentOverview
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? totalPayment = freezed,Object? receivedPayment = freezed,Object? pendingPayment = freezed,}) {
  return _then(_self.copyWith(
totalPayment: freezed == totalPayment ? _self.totalPayment : totalPayment // ignore: cast_nullable_to_non_nullable
as int?,receivedPayment: freezed == receivedPayment ? _self.receivedPayment : receivedPayment // ignore: cast_nullable_to_non_nullable
as int?,pendingPayment: freezed == pendingPayment ? _self.pendingPayment : pendingPayment // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}

}


/// Adds pattern-matching-related methods to [PaymentOverview].
extension PaymentOverviewPatterns on PaymentOverview {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PaymentOverview value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PaymentOverview() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PaymentOverview value)  $default,){
final _that = this;
switch (_that) {
case _PaymentOverview():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PaymentOverview value)?  $default,){
final _that = this;
switch (_that) {
case _PaymentOverview() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'total_payment')  int? totalPayment, @JsonKey(name: 'received_payment')  int? receivedPayment, @JsonKey(name: 'pending_payment')  int? pendingPayment)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PaymentOverview() when $default != null:
return $default(_that.totalPayment,_that.receivedPayment,_that.pendingPayment);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'total_payment')  int? totalPayment, @JsonKey(name: 'received_payment')  int? receivedPayment, @JsonKey(name: 'pending_payment')  int? pendingPayment)  $default,) {final _that = this;
switch (_that) {
case _PaymentOverview():
return $default(_that.totalPayment,_that.receivedPayment,_that.pendingPayment);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'total_payment')  int? totalPayment, @JsonKey(name: 'received_payment')  int? receivedPayment, @JsonKey(name: 'pending_payment')  int? pendingPayment)?  $default,) {final _that = this;
switch (_that) {
case _PaymentOverview() when $default != null:
return $default(_that.totalPayment,_that.receivedPayment,_that.pendingPayment);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _PaymentOverview implements PaymentOverview {
  const _PaymentOverview({@JsonKey(name: 'total_payment') this.totalPayment, @JsonKey(name: 'received_payment') this.receivedPayment, @JsonKey(name: 'pending_payment') this.pendingPayment});
  factory _PaymentOverview.fromJson(Map<String, dynamic> json) => _$PaymentOverviewFromJson(json);

@override@JsonKey(name: 'total_payment') final  int? totalPayment;
@override@JsonKey(name: 'received_payment') final  int? receivedPayment;
@override@JsonKey(name: 'pending_payment') final  int? pendingPayment;

/// Create a copy of PaymentOverview
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PaymentOverviewCopyWith<_PaymentOverview> get copyWith => __$PaymentOverviewCopyWithImpl<_PaymentOverview>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PaymentOverviewToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PaymentOverview&&(identical(other.totalPayment, totalPayment) || other.totalPayment == totalPayment)&&(identical(other.receivedPayment, receivedPayment) || other.receivedPayment == receivedPayment)&&(identical(other.pendingPayment, pendingPayment) || other.pendingPayment == pendingPayment));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,totalPayment,receivedPayment,pendingPayment);

@override
String toString() {
  return 'PaymentOverview(totalPayment: $totalPayment, receivedPayment: $receivedPayment, pendingPayment: $pendingPayment)';
}


}

/// @nodoc
abstract mixin class _$PaymentOverviewCopyWith<$Res> implements $PaymentOverviewCopyWith<$Res> {
  factory _$PaymentOverviewCopyWith(_PaymentOverview value, $Res Function(_PaymentOverview) _then) = __$PaymentOverviewCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'total_payment') int? totalPayment,@JsonKey(name: 'received_payment') int? receivedPayment,@JsonKey(name: 'pending_payment') int? pendingPayment
});




}
/// @nodoc
class __$PaymentOverviewCopyWithImpl<$Res>
    implements _$PaymentOverviewCopyWith<$Res> {
  __$PaymentOverviewCopyWithImpl(this._self, this._then);

  final _PaymentOverview _self;
  final $Res Function(_PaymentOverview) _then;

/// Create a copy of PaymentOverview
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? totalPayment = freezed,Object? receivedPayment = freezed,Object? pendingPayment = freezed,}) {
  return _then(_PaymentOverview(
totalPayment: freezed == totalPayment ? _self.totalPayment : totalPayment // ignore: cast_nullable_to_non_nullable
as int?,receivedPayment: freezed == receivedPayment ? _self.receivedPayment : receivedPayment // ignore: cast_nullable_to_non_nullable
as int?,pendingPayment: freezed == pendingPayment ? _self.pendingPayment : pendingPayment // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}


}

// dart format on
