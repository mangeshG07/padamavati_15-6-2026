// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'used_qr_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$UsedQr {

@JsonKey(name: 'mess_valid_date') String get messValidDate; String get mess;@JsonKey(name: 'mess_type') String get messType;@JsonKey(name: 'scanned_at') String get scannedAt;@JsonKey(name: 'scanned_by') String get scannedBy;@JsonKey(name: 'scanned_by_name') String get scannedByName;
/// Create a copy of UsedQr
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UsedQrCopyWith<UsedQr> get copyWith => _$UsedQrCopyWithImpl<UsedQr>(this as UsedQr, _$identity);

  /// Serializes this UsedQr to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UsedQr&&(identical(other.messValidDate, messValidDate) || other.messValidDate == messValidDate)&&(identical(other.mess, mess) || other.mess == mess)&&(identical(other.messType, messType) || other.messType == messType)&&(identical(other.scannedAt, scannedAt) || other.scannedAt == scannedAt)&&(identical(other.scannedBy, scannedBy) || other.scannedBy == scannedBy)&&(identical(other.scannedByName, scannedByName) || other.scannedByName == scannedByName));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,messValidDate,mess,messType,scannedAt,scannedBy,scannedByName);

@override
String toString() {
  return 'UsedQr(messValidDate: $messValidDate, mess: $mess, messType: $messType, scannedAt: $scannedAt, scannedBy: $scannedBy, scannedByName: $scannedByName)';
}


}

/// @nodoc
abstract mixin class $UsedQrCopyWith<$Res>  {
  factory $UsedQrCopyWith(UsedQr value, $Res Function(UsedQr) _then) = _$UsedQrCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'mess_valid_date') String messValidDate, String mess,@JsonKey(name: 'mess_type') String messType,@JsonKey(name: 'scanned_at') String scannedAt,@JsonKey(name: 'scanned_by') String scannedBy,@JsonKey(name: 'scanned_by_name') String scannedByName
});




}
/// @nodoc
class _$UsedQrCopyWithImpl<$Res>
    implements $UsedQrCopyWith<$Res> {
  _$UsedQrCopyWithImpl(this._self, this._then);

  final UsedQr _self;
  final $Res Function(UsedQr) _then;

/// Create a copy of UsedQr
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? messValidDate = null,Object? mess = null,Object? messType = null,Object? scannedAt = null,Object? scannedBy = null,Object? scannedByName = null,}) {
  return _then(_self.copyWith(
messValidDate: null == messValidDate ? _self.messValidDate : messValidDate // ignore: cast_nullable_to_non_nullable
as String,mess: null == mess ? _self.mess : mess // ignore: cast_nullable_to_non_nullable
as String,messType: null == messType ? _self.messType : messType // ignore: cast_nullable_to_non_nullable
as String,scannedAt: null == scannedAt ? _self.scannedAt : scannedAt // ignore: cast_nullable_to_non_nullable
as String,scannedBy: null == scannedBy ? _self.scannedBy : scannedBy // ignore: cast_nullable_to_non_nullable
as String,scannedByName: null == scannedByName ? _self.scannedByName : scannedByName // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [UsedQr].
extension UsedQrPatterns on UsedQr {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _UsedQr value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _UsedQr() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _UsedQr value)  $default,){
final _that = this;
switch (_that) {
case _UsedQr():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _UsedQr value)?  $default,){
final _that = this;
switch (_that) {
case _UsedQr() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'mess_valid_date')  String messValidDate,  String mess, @JsonKey(name: 'mess_type')  String messType, @JsonKey(name: 'scanned_at')  String scannedAt, @JsonKey(name: 'scanned_by')  String scannedBy, @JsonKey(name: 'scanned_by_name')  String scannedByName)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _UsedQr() when $default != null:
return $default(_that.messValidDate,_that.mess,_that.messType,_that.scannedAt,_that.scannedBy,_that.scannedByName);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'mess_valid_date')  String messValidDate,  String mess, @JsonKey(name: 'mess_type')  String messType, @JsonKey(name: 'scanned_at')  String scannedAt, @JsonKey(name: 'scanned_by')  String scannedBy, @JsonKey(name: 'scanned_by_name')  String scannedByName)  $default,) {final _that = this;
switch (_that) {
case _UsedQr():
return $default(_that.messValidDate,_that.mess,_that.messType,_that.scannedAt,_that.scannedBy,_that.scannedByName);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'mess_valid_date')  String messValidDate,  String mess, @JsonKey(name: 'mess_type')  String messType, @JsonKey(name: 'scanned_at')  String scannedAt, @JsonKey(name: 'scanned_by')  String scannedBy, @JsonKey(name: 'scanned_by_name')  String scannedByName)?  $default,) {final _that = this;
switch (_that) {
case _UsedQr() when $default != null:
return $default(_that.messValidDate,_that.mess,_that.messType,_that.scannedAt,_that.scannedBy,_that.scannedByName);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _UsedQr implements UsedQr {
  const _UsedQr({@JsonKey(name: 'mess_valid_date') required this.messValidDate, required this.mess, @JsonKey(name: 'mess_type') required this.messType, @JsonKey(name: 'scanned_at') required this.scannedAt, @JsonKey(name: 'scanned_by') required this.scannedBy, @JsonKey(name: 'scanned_by_name') required this.scannedByName});
  factory _UsedQr.fromJson(Map<String, dynamic> json) => _$UsedQrFromJson(json);

@override@JsonKey(name: 'mess_valid_date') final  String messValidDate;
@override final  String mess;
@override@JsonKey(name: 'mess_type') final  String messType;
@override@JsonKey(name: 'scanned_at') final  String scannedAt;
@override@JsonKey(name: 'scanned_by') final  String scannedBy;
@override@JsonKey(name: 'scanned_by_name') final  String scannedByName;

/// Create a copy of UsedQr
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UsedQrCopyWith<_UsedQr> get copyWith => __$UsedQrCopyWithImpl<_UsedQr>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$UsedQrToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UsedQr&&(identical(other.messValidDate, messValidDate) || other.messValidDate == messValidDate)&&(identical(other.mess, mess) || other.mess == mess)&&(identical(other.messType, messType) || other.messType == messType)&&(identical(other.scannedAt, scannedAt) || other.scannedAt == scannedAt)&&(identical(other.scannedBy, scannedBy) || other.scannedBy == scannedBy)&&(identical(other.scannedByName, scannedByName) || other.scannedByName == scannedByName));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,messValidDate,mess,messType,scannedAt,scannedBy,scannedByName);

@override
String toString() {
  return 'UsedQr(messValidDate: $messValidDate, mess: $mess, messType: $messType, scannedAt: $scannedAt, scannedBy: $scannedBy, scannedByName: $scannedByName)';
}


}

/// @nodoc
abstract mixin class _$UsedQrCopyWith<$Res> implements $UsedQrCopyWith<$Res> {
  factory _$UsedQrCopyWith(_UsedQr value, $Res Function(_UsedQr) _then) = __$UsedQrCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'mess_valid_date') String messValidDate, String mess,@JsonKey(name: 'mess_type') String messType,@JsonKey(name: 'scanned_at') String scannedAt,@JsonKey(name: 'scanned_by') String scannedBy,@JsonKey(name: 'scanned_by_name') String scannedByName
});




}
/// @nodoc
class __$UsedQrCopyWithImpl<$Res>
    implements _$UsedQrCopyWith<$Res> {
  __$UsedQrCopyWithImpl(this._self, this._then);

  final _UsedQr _self;
  final $Res Function(_UsedQr) _then;

/// Create a copy of UsedQr
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? messValidDate = null,Object? mess = null,Object? messType = null,Object? scannedAt = null,Object? scannedBy = null,Object? scannedByName = null,}) {
  return _then(_UsedQr(
messValidDate: null == messValidDate ? _self.messValidDate : messValidDate // ignore: cast_nullable_to_non_nullable
as String,mess: null == mess ? _self.mess : mess // ignore: cast_nullable_to_non_nullable
as String,messType: null == messType ? _self.messType : messType // ignore: cast_nullable_to_non_nullable
as String,scannedAt: null == scannedAt ? _self.scannedAt : scannedAt // ignore: cast_nullable_to_non_nullable
as String,scannedBy: null == scannedBy ? _self.scannedBy : scannedBy // ignore: cast_nullable_to_non_nullable
as String,scannedByName: null == scannedByName ? _self.scannedByName : scannedByName // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
