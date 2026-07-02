// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'scan_data_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ScanDataModel {

@JsonKey(name: 'meal_type') String? get scanMessType;@JsonKey(name: 'scanned_date') String? get scannedDate;@JsonKey(name: 'scanned_at') String? get scannedAt;
/// Create a copy of ScanDataModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ScanDataModelCopyWith<ScanDataModel> get copyWith => _$ScanDataModelCopyWithImpl<ScanDataModel>(this as ScanDataModel, _$identity);

  /// Serializes this ScanDataModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ScanDataModel&&(identical(other.scanMessType, scanMessType) || other.scanMessType == scanMessType)&&(identical(other.scannedDate, scannedDate) || other.scannedDate == scannedDate)&&(identical(other.scannedAt, scannedAt) || other.scannedAt == scannedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,scanMessType,scannedDate,scannedAt);

@override
String toString() {
  return 'ScanDataModel(scanMessType: $scanMessType, scannedDate: $scannedDate, scannedAt: $scannedAt)';
}


}

/// @nodoc
abstract mixin class $ScanDataModelCopyWith<$Res>  {
  factory $ScanDataModelCopyWith(ScanDataModel value, $Res Function(ScanDataModel) _then) = _$ScanDataModelCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'meal_type') String? scanMessType,@JsonKey(name: 'scanned_date') String? scannedDate,@JsonKey(name: 'scanned_at') String? scannedAt
});




}
/// @nodoc
class _$ScanDataModelCopyWithImpl<$Res>
    implements $ScanDataModelCopyWith<$Res> {
  _$ScanDataModelCopyWithImpl(this._self, this._then);

  final ScanDataModel _self;
  final $Res Function(ScanDataModel) _then;

/// Create a copy of ScanDataModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? scanMessType = freezed,Object? scannedDate = freezed,Object? scannedAt = freezed,}) {
  return _then(_self.copyWith(
scanMessType: freezed == scanMessType ? _self.scanMessType : scanMessType // ignore: cast_nullable_to_non_nullable
as String?,scannedDate: freezed == scannedDate ? _self.scannedDate : scannedDate // ignore: cast_nullable_to_non_nullable
as String?,scannedAt: freezed == scannedAt ? _self.scannedAt : scannedAt // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [ScanDataModel].
extension ScanDataModelPatterns on ScanDataModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ScanDataModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ScanDataModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ScanDataModel value)  $default,){
final _that = this;
switch (_that) {
case _ScanDataModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ScanDataModel value)?  $default,){
final _that = this;
switch (_that) {
case _ScanDataModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'meal_type')  String? scanMessType, @JsonKey(name: 'scanned_date')  String? scannedDate, @JsonKey(name: 'scanned_at')  String? scannedAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ScanDataModel() when $default != null:
return $default(_that.scanMessType,_that.scannedDate,_that.scannedAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'meal_type')  String? scanMessType, @JsonKey(name: 'scanned_date')  String? scannedDate, @JsonKey(name: 'scanned_at')  String? scannedAt)  $default,) {final _that = this;
switch (_that) {
case _ScanDataModel():
return $default(_that.scanMessType,_that.scannedDate,_that.scannedAt);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'meal_type')  String? scanMessType, @JsonKey(name: 'scanned_date')  String? scannedDate, @JsonKey(name: 'scanned_at')  String? scannedAt)?  $default,) {final _that = this;
switch (_that) {
case _ScanDataModel() when $default != null:
return $default(_that.scanMessType,_that.scannedDate,_that.scannedAt);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ScanDataModel implements ScanDataModel {
  const _ScanDataModel({@JsonKey(name: 'meal_type') this.scanMessType, @JsonKey(name: 'scanned_date') this.scannedDate, @JsonKey(name: 'scanned_at') this.scannedAt});
  factory _ScanDataModel.fromJson(Map<String, dynamic> json) => _$ScanDataModelFromJson(json);

@override@JsonKey(name: 'meal_type') final  String? scanMessType;
@override@JsonKey(name: 'scanned_date') final  String? scannedDate;
@override@JsonKey(name: 'scanned_at') final  String? scannedAt;

/// Create a copy of ScanDataModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ScanDataModelCopyWith<_ScanDataModel> get copyWith => __$ScanDataModelCopyWithImpl<_ScanDataModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ScanDataModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ScanDataModel&&(identical(other.scanMessType, scanMessType) || other.scanMessType == scanMessType)&&(identical(other.scannedDate, scannedDate) || other.scannedDate == scannedDate)&&(identical(other.scannedAt, scannedAt) || other.scannedAt == scannedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,scanMessType,scannedDate,scannedAt);

@override
String toString() {
  return 'ScanDataModel(scanMessType: $scanMessType, scannedDate: $scannedDate, scannedAt: $scannedAt)';
}


}

/// @nodoc
abstract mixin class _$ScanDataModelCopyWith<$Res> implements $ScanDataModelCopyWith<$Res> {
  factory _$ScanDataModelCopyWith(_ScanDataModel value, $Res Function(_ScanDataModel) _then) = __$ScanDataModelCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'meal_type') String? scanMessType,@JsonKey(name: 'scanned_date') String? scannedDate,@JsonKey(name: 'scanned_at') String? scannedAt
});




}
/// @nodoc
class __$ScanDataModelCopyWithImpl<$Res>
    implements _$ScanDataModelCopyWith<$Res> {
  __$ScanDataModelCopyWithImpl(this._self, this._then);

  final _ScanDataModel _self;
  final $Res Function(_ScanDataModel) _then;

/// Create a copy of ScanDataModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? scanMessType = freezed,Object? scannedDate = freezed,Object? scannedAt = freezed,}) {
  return _then(_ScanDataModel(
scanMessType: freezed == scanMessType ? _self.scanMessType : scanMessType // ignore: cast_nullable_to_non_nullable
as String?,scannedDate: freezed == scannedDate ? _self.scannedDate : scannedDate // ignore: cast_nullable_to_non_nullable
as String?,scannedAt: freezed == scannedAt ? _self.scannedAt : scannedAt // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
