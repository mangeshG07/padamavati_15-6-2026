// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'payment_response_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$PaymentData {

 List<PaymentModel> get payments;
/// Create a copy of PaymentData
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PaymentDataCopyWith<PaymentData> get copyWith => _$PaymentDataCopyWithImpl<PaymentData>(this as PaymentData, _$identity);

  /// Serializes this PaymentData to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PaymentData&&const DeepCollectionEquality().equals(other.payments, payments));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(payments));

@override
String toString() {
  return 'PaymentData(payments: $payments)';
}


}

/// @nodoc
abstract mixin class $PaymentDataCopyWith<$Res>  {
  factory $PaymentDataCopyWith(PaymentData value, $Res Function(PaymentData) _then) = _$PaymentDataCopyWithImpl;
@useResult
$Res call({
 List<PaymentModel> payments
});




}
/// @nodoc
class _$PaymentDataCopyWithImpl<$Res>
    implements $PaymentDataCopyWith<$Res> {
  _$PaymentDataCopyWithImpl(this._self, this._then);

  final PaymentData _self;
  final $Res Function(PaymentData) _then;

/// Create a copy of PaymentData
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? payments = null,}) {
  return _then(_self.copyWith(
payments: null == payments ? _self.payments : payments // ignore: cast_nullable_to_non_nullable
as List<PaymentModel>,
  ));
}

}


/// Adds pattern-matching-related methods to [PaymentData].
extension PaymentDataPatterns on PaymentData {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PaymentData value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PaymentData() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PaymentData value)  $default,){
final _that = this;
switch (_that) {
case _PaymentData():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PaymentData value)?  $default,){
final _that = this;
switch (_that) {
case _PaymentData() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<PaymentModel> payments)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PaymentData() when $default != null:
return $default(_that.payments);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<PaymentModel> payments)  $default,) {final _that = this;
switch (_that) {
case _PaymentData():
return $default(_that.payments);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<PaymentModel> payments)?  $default,) {final _that = this;
switch (_that) {
case _PaymentData() when $default != null:
return $default(_that.payments);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _PaymentData implements PaymentData {
  const _PaymentData({  List<PaymentModel> payments = const []}): _payments = payments;
  factory _PaymentData.fromJson(Map<String, dynamic> json) => _$PaymentDataFromJson(json);

 final  List<PaymentModel> _payments;
@override@JsonKey() List<PaymentModel> get payments {
  if (_payments is EqualUnmodifiableListView) return _payments;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_payments);
}


/// Create a copy of PaymentData
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PaymentDataCopyWith<_PaymentData> get copyWith => __$PaymentDataCopyWithImpl<_PaymentData>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PaymentDataToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PaymentData&&const DeepCollectionEquality().equals(other._payments, _payments));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_payments));

@override
String toString() {
  return 'PaymentData(payments: $payments)';
}


}

/// @nodoc
abstract mixin class _$PaymentDataCopyWith<$Res> implements $PaymentDataCopyWith<$Res> {
  factory _$PaymentDataCopyWith(_PaymentData value, $Res Function(_PaymentData) _then) = __$PaymentDataCopyWithImpl;
@override @useResult
$Res call({
 List<PaymentModel> payments
});




}
/// @nodoc
class __$PaymentDataCopyWithImpl<$Res>
    implements _$PaymentDataCopyWith<$Res> {
  __$PaymentDataCopyWithImpl(this._self, this._then);

  final _PaymentData _self;
  final $Res Function(_PaymentData) _then;

/// Create a copy of PaymentData
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? payments = null,}) {
  return _then(_PaymentData(
payments: null == payments ? _self._payments : payments // ignore: cast_nullable_to_non_nullable
as List<PaymentModel>,
  ));
}


}

// dart format on
