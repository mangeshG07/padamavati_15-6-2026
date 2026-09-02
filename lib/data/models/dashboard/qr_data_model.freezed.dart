// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'qr_data_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$QRDataModel {

@JsonKey(name: 'total_qrs') int? get totalQr;@JsonKey(name: 'used_qrs') int? get usedQr;@JsonKey(name: 'pending_qrs') int? get pendingQr;@JsonKey(name: 'expired_qrs') int? get expiredQr;
/// Create a copy of QRDataModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$QRDataModelCopyWith<QRDataModel> get copyWith => _$QRDataModelCopyWithImpl<QRDataModel>(this as QRDataModel, _$identity);

  /// Serializes this QRDataModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is QRDataModel&&(identical(other.totalQr, totalQr) || other.totalQr == totalQr)&&(identical(other.usedQr, usedQr) || other.usedQr == usedQr)&&(identical(other.pendingQr, pendingQr) || other.pendingQr == pendingQr)&&(identical(other.expiredQr, expiredQr) || other.expiredQr == expiredQr));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,totalQr,usedQr,pendingQr,expiredQr);

@override
String toString() {
  return 'QRDataModel(totalQr: $totalQr, usedQr: $usedQr, pendingQr: $pendingQr, expiredQr: $expiredQr)';
}


}

/// @nodoc
abstract mixin class $QRDataModelCopyWith<$Res>  {
  factory $QRDataModelCopyWith(QRDataModel value, $Res Function(QRDataModel) _then) = _$QRDataModelCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'total_qrs') int? totalQr,@JsonKey(name: 'used_qrs') int? usedQr,@JsonKey(name: 'pending_qrs') int? pendingQr,@JsonKey(name: 'expired_qrs') int? expiredQr
});




}
/// @nodoc
class _$QRDataModelCopyWithImpl<$Res>
    implements $QRDataModelCopyWith<$Res> {
  _$QRDataModelCopyWithImpl(this._self, this._then);

  final QRDataModel _self;
  final $Res Function(QRDataModel) _then;

/// Create a copy of QRDataModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? totalQr = freezed,Object? usedQr = freezed,Object? pendingQr = freezed,Object? expiredQr = freezed,}) {
  return _then(_self.copyWith(
totalQr: freezed == totalQr ? _self.totalQr : totalQr // ignore: cast_nullable_to_non_nullable
as int?,usedQr: freezed == usedQr ? _self.usedQr : usedQr // ignore: cast_nullable_to_non_nullable
as int?,pendingQr: freezed == pendingQr ? _self.pendingQr : pendingQr // ignore: cast_nullable_to_non_nullable
as int?,expiredQr: freezed == expiredQr ? _self.expiredQr : expiredQr // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}

}


/// Adds pattern-matching-related methods to [QRDataModel].
extension QRDataModelPatterns on QRDataModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _QRDataModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _QRDataModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _QRDataModel value)  $default,){
final _that = this;
switch (_that) {
case _QRDataModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _QRDataModel value)?  $default,){
final _that = this;
switch (_that) {
case _QRDataModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'total_qrs')  int? totalQr, @JsonKey(name: 'used_qrs')  int? usedQr, @JsonKey(name: 'pending_qrs')  int? pendingQr, @JsonKey(name: 'expired_qrs')  int? expiredQr)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _QRDataModel() when $default != null:
return $default(_that.totalQr,_that.usedQr,_that.pendingQr,_that.expiredQr);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'total_qrs')  int? totalQr, @JsonKey(name: 'used_qrs')  int? usedQr, @JsonKey(name: 'pending_qrs')  int? pendingQr, @JsonKey(name: 'expired_qrs')  int? expiredQr)  $default,) {final _that = this;
switch (_that) {
case _QRDataModel():
return $default(_that.totalQr,_that.usedQr,_that.pendingQr,_that.expiredQr);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'total_qrs')  int? totalQr, @JsonKey(name: 'used_qrs')  int? usedQr, @JsonKey(name: 'pending_qrs')  int? pendingQr, @JsonKey(name: 'expired_qrs')  int? expiredQr)?  $default,) {final _that = this;
switch (_that) {
case _QRDataModel() when $default != null:
return $default(_that.totalQr,_that.usedQr,_that.pendingQr,_that.expiredQr);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _QRDataModel implements QRDataModel {
  const _QRDataModel({@JsonKey(name: 'total_qrs') this.totalQr, @JsonKey(name: 'used_qrs') this.usedQr, @JsonKey(name: 'pending_qrs') this.pendingQr, @JsonKey(name: 'expired_qrs') this.expiredQr});
  factory _QRDataModel.fromJson(Map<String, dynamic> json) => _$QRDataModelFromJson(json);

@override@JsonKey(name: 'total_qrs') final  int? totalQr;
@override@JsonKey(name: 'used_qrs') final  int? usedQr;
@override@JsonKey(name: 'pending_qrs') final  int? pendingQr;
@override@JsonKey(name: 'expired_qrs') final  int? expiredQr;

/// Create a copy of QRDataModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$QRDataModelCopyWith<_QRDataModel> get copyWith => __$QRDataModelCopyWithImpl<_QRDataModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$QRDataModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _QRDataModel&&(identical(other.totalQr, totalQr) || other.totalQr == totalQr)&&(identical(other.usedQr, usedQr) || other.usedQr == usedQr)&&(identical(other.pendingQr, pendingQr) || other.pendingQr == pendingQr)&&(identical(other.expiredQr, expiredQr) || other.expiredQr == expiredQr));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,totalQr,usedQr,pendingQr,expiredQr);

@override
String toString() {
  return 'QRDataModel(totalQr: $totalQr, usedQr: $usedQr, pendingQr: $pendingQr, expiredQr: $expiredQr)';
}


}

/// @nodoc
abstract mixin class _$QRDataModelCopyWith<$Res> implements $QRDataModelCopyWith<$Res> {
  factory _$QRDataModelCopyWith(_QRDataModel value, $Res Function(_QRDataModel) _then) = __$QRDataModelCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'total_qrs') int? totalQr,@JsonKey(name: 'used_qrs') int? usedQr,@JsonKey(name: 'pending_qrs') int? pendingQr,@JsonKey(name: 'expired_qrs') int? expiredQr
});




}
/// @nodoc
class __$QRDataModelCopyWithImpl<$Res>
    implements _$QRDataModelCopyWith<$Res> {
  __$QRDataModelCopyWithImpl(this._self, this._then);

  final _QRDataModel _self;
  final $Res Function(_QRDataModel) _then;

/// Create a copy of QRDataModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? totalQr = freezed,Object? usedQr = freezed,Object? pendingQr = freezed,Object? expiredQr = freezed,}) {
  return _then(_QRDataModel(
totalQr: freezed == totalQr ? _self.totalQr : totalQr // ignore: cast_nullable_to_non_nullable
as int?,usedQr: freezed == usedQr ? _self.usedQr : usedQr // ignore: cast_nullable_to_non_nullable
as int?,pendingQr: freezed == pendingQr ? _self.pendingQr : pendingQr // ignore: cast_nullable_to_non_nullable
as int?,expiredQr: freezed == expiredQr ? _self.expiredQr : expiredQr // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}


}

// dart format on
