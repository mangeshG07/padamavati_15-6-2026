// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'qr_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$QRModel {

@JsonKey(name: 'id') int? get id; String? get uuid;@JsonKey(name: 'mess_transaction_id') int? get messTransactionId;@JsonKey(name: 'app_id') int? get appId;@JsonKey(name: 'mess_valid_date') String? get messValidDate;@JsonKey(name: 'mess_type') String? get messType;@JsonKey(name: 'mess_time') String? get messTime; String? get status;@JsonKey(name: 'expires_at') String? get expiresAt;@JsonKey(name: 'scanned_at') String? get scannedAt;
/// Create a copy of QRModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$QRModelCopyWith<QRModel> get copyWith => _$QRModelCopyWithImpl<QRModel>(this as QRModel, _$identity);

  /// Serializes this QRModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is QRModel&&(identical(other.id, id) || other.id == id)&&(identical(other.uuid, uuid) || other.uuid == uuid)&&(identical(other.messTransactionId, messTransactionId) || other.messTransactionId == messTransactionId)&&(identical(other.appId, appId) || other.appId == appId)&&(identical(other.messValidDate, messValidDate) || other.messValidDate == messValidDate)&&(identical(other.messType, messType) || other.messType == messType)&&(identical(other.messTime, messTime) || other.messTime == messTime)&&(identical(other.status, status) || other.status == status)&&(identical(other.expiresAt, expiresAt) || other.expiresAt == expiresAt)&&(identical(other.scannedAt, scannedAt) || other.scannedAt == scannedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,uuid,messTransactionId,appId,messValidDate,messType,messTime,status,expiresAt,scannedAt);

@override
String toString() {
  return 'QRModel(id: $id, uuid: $uuid, messTransactionId: $messTransactionId, appId: $appId, messValidDate: $messValidDate, messType: $messType, messTime: $messTime, status: $status, expiresAt: $expiresAt, scannedAt: $scannedAt)';
}


}

/// @nodoc
abstract mixin class $QRModelCopyWith<$Res>  {
  factory $QRModelCopyWith(QRModel value, $Res Function(QRModel) _then) = _$QRModelCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'id') int? id, String? uuid,@JsonKey(name: 'mess_transaction_id') int? messTransactionId,@JsonKey(name: 'app_id') int? appId,@JsonKey(name: 'mess_valid_date') String? messValidDate,@JsonKey(name: 'mess_type') String? messType,@JsonKey(name: 'mess_time') String? messTime, String? status,@JsonKey(name: 'expires_at') String? expiresAt,@JsonKey(name: 'scanned_at') String? scannedAt
});




}
/// @nodoc
class _$QRModelCopyWithImpl<$Res>
    implements $QRModelCopyWith<$Res> {
  _$QRModelCopyWithImpl(this._self, this._then);

  final QRModel _self;
  final $Res Function(QRModel) _then;

/// Create a copy of QRModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? uuid = freezed,Object? messTransactionId = freezed,Object? appId = freezed,Object? messValidDate = freezed,Object? messType = freezed,Object? messTime = freezed,Object? status = freezed,Object? expiresAt = freezed,Object? scannedAt = freezed,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,uuid: freezed == uuid ? _self.uuid : uuid // ignore: cast_nullable_to_non_nullable
as String?,messTransactionId: freezed == messTransactionId ? _self.messTransactionId : messTransactionId // ignore: cast_nullable_to_non_nullable
as int?,appId: freezed == appId ? _self.appId : appId // ignore: cast_nullable_to_non_nullable
as int?,messValidDate: freezed == messValidDate ? _self.messValidDate : messValidDate // ignore: cast_nullable_to_non_nullable
as String?,messType: freezed == messType ? _self.messType : messType // ignore: cast_nullable_to_non_nullable
as String?,messTime: freezed == messTime ? _self.messTime : messTime // ignore: cast_nullable_to_non_nullable
as String?,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String?,expiresAt: freezed == expiresAt ? _self.expiresAt : expiresAt // ignore: cast_nullable_to_non_nullable
as String?,scannedAt: freezed == scannedAt ? _self.scannedAt : scannedAt // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [QRModel].
extension QRModelPatterns on QRModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _QRModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _QRModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _QRModel value)  $default,){
final _that = this;
switch (_that) {
case _QRModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _QRModel value)?  $default,){
final _that = this;
switch (_that) {
case _QRModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'id')  int? id,  String? uuid, @JsonKey(name: 'mess_transaction_id')  int? messTransactionId, @JsonKey(name: 'app_id')  int? appId, @JsonKey(name: 'mess_valid_date')  String? messValidDate, @JsonKey(name: 'mess_type')  String? messType, @JsonKey(name: 'mess_time')  String? messTime,  String? status, @JsonKey(name: 'expires_at')  String? expiresAt, @JsonKey(name: 'scanned_at')  String? scannedAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _QRModel() when $default != null:
return $default(_that.id,_that.uuid,_that.messTransactionId,_that.appId,_that.messValidDate,_that.messType,_that.messTime,_that.status,_that.expiresAt,_that.scannedAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'id')  int? id,  String? uuid, @JsonKey(name: 'mess_transaction_id')  int? messTransactionId, @JsonKey(name: 'app_id')  int? appId, @JsonKey(name: 'mess_valid_date')  String? messValidDate, @JsonKey(name: 'mess_type')  String? messType, @JsonKey(name: 'mess_time')  String? messTime,  String? status, @JsonKey(name: 'expires_at')  String? expiresAt, @JsonKey(name: 'scanned_at')  String? scannedAt)  $default,) {final _that = this;
switch (_that) {
case _QRModel():
return $default(_that.id,_that.uuid,_that.messTransactionId,_that.appId,_that.messValidDate,_that.messType,_that.messTime,_that.status,_that.expiresAt,_that.scannedAt);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'id')  int? id,  String? uuid, @JsonKey(name: 'mess_transaction_id')  int? messTransactionId, @JsonKey(name: 'app_id')  int? appId, @JsonKey(name: 'mess_valid_date')  String? messValidDate, @JsonKey(name: 'mess_type')  String? messType, @JsonKey(name: 'mess_time')  String? messTime,  String? status, @JsonKey(name: 'expires_at')  String? expiresAt, @JsonKey(name: 'scanned_at')  String? scannedAt)?  $default,) {final _that = this;
switch (_that) {
case _QRModel() when $default != null:
return $default(_that.id,_that.uuid,_that.messTransactionId,_that.appId,_that.messValidDate,_that.messType,_that.messTime,_that.status,_that.expiresAt,_that.scannedAt);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _QRModel implements QRModel {
  const _QRModel({@JsonKey(name: 'id') this.id, this.uuid, @JsonKey(name: 'mess_transaction_id') this.messTransactionId, @JsonKey(name: 'app_id') this.appId, @JsonKey(name: 'mess_valid_date') this.messValidDate, @JsonKey(name: 'mess_type') this.messType, @JsonKey(name: 'mess_time') this.messTime, this.status, @JsonKey(name: 'expires_at') this.expiresAt, @JsonKey(name: 'scanned_at') this.scannedAt});
  factory _QRModel.fromJson(Map<String, dynamic> json) => _$QRModelFromJson(json);

@override@JsonKey(name: 'id') final  int? id;
@override final  String? uuid;
@override@JsonKey(name: 'mess_transaction_id') final  int? messTransactionId;
@override@JsonKey(name: 'app_id') final  int? appId;
@override@JsonKey(name: 'mess_valid_date') final  String? messValidDate;
@override@JsonKey(name: 'mess_type') final  String? messType;
@override@JsonKey(name: 'mess_time') final  String? messTime;
@override final  String? status;
@override@JsonKey(name: 'expires_at') final  String? expiresAt;
@override@JsonKey(name: 'scanned_at') final  String? scannedAt;

/// Create a copy of QRModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$QRModelCopyWith<_QRModel> get copyWith => __$QRModelCopyWithImpl<_QRModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$QRModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _QRModel&&(identical(other.id, id) || other.id == id)&&(identical(other.uuid, uuid) || other.uuid == uuid)&&(identical(other.messTransactionId, messTransactionId) || other.messTransactionId == messTransactionId)&&(identical(other.appId, appId) || other.appId == appId)&&(identical(other.messValidDate, messValidDate) || other.messValidDate == messValidDate)&&(identical(other.messType, messType) || other.messType == messType)&&(identical(other.messTime, messTime) || other.messTime == messTime)&&(identical(other.status, status) || other.status == status)&&(identical(other.expiresAt, expiresAt) || other.expiresAt == expiresAt)&&(identical(other.scannedAt, scannedAt) || other.scannedAt == scannedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,uuid,messTransactionId,appId,messValidDate,messType,messTime,status,expiresAt,scannedAt);

@override
String toString() {
  return 'QRModel(id: $id, uuid: $uuid, messTransactionId: $messTransactionId, appId: $appId, messValidDate: $messValidDate, messType: $messType, messTime: $messTime, status: $status, expiresAt: $expiresAt, scannedAt: $scannedAt)';
}


}

/// @nodoc
abstract mixin class _$QRModelCopyWith<$Res> implements $QRModelCopyWith<$Res> {
  factory _$QRModelCopyWith(_QRModel value, $Res Function(_QRModel) _then) = __$QRModelCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'id') int? id, String? uuid,@JsonKey(name: 'mess_transaction_id') int? messTransactionId,@JsonKey(name: 'app_id') int? appId,@JsonKey(name: 'mess_valid_date') String? messValidDate,@JsonKey(name: 'mess_type') String? messType,@JsonKey(name: 'mess_time') String? messTime, String? status,@JsonKey(name: 'expires_at') String? expiresAt,@JsonKey(name: 'scanned_at') String? scannedAt
});




}
/// @nodoc
class __$QRModelCopyWithImpl<$Res>
    implements _$QRModelCopyWith<$Res> {
  __$QRModelCopyWithImpl(this._self, this._then);

  final _QRModel _self;
  final $Res Function(_QRModel) _then;

/// Create a copy of QRModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? uuid = freezed,Object? messTransactionId = freezed,Object? appId = freezed,Object? messValidDate = freezed,Object? messType = freezed,Object? messTime = freezed,Object? status = freezed,Object? expiresAt = freezed,Object? scannedAt = freezed,}) {
  return _then(_QRModel(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,uuid: freezed == uuid ? _self.uuid : uuid // ignore: cast_nullable_to_non_nullable
as String?,messTransactionId: freezed == messTransactionId ? _self.messTransactionId : messTransactionId // ignore: cast_nullable_to_non_nullable
as int?,appId: freezed == appId ? _self.appId : appId // ignore: cast_nullable_to_non_nullable
as int?,messValidDate: freezed == messValidDate ? _self.messValidDate : messValidDate // ignore: cast_nullable_to_non_nullable
as String?,messType: freezed == messType ? _self.messType : messType // ignore: cast_nullable_to_non_nullable
as String?,messTime: freezed == messTime ? _self.messTime : messTime // ignore: cast_nullable_to_non_nullable
as String?,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String?,expiresAt: freezed == expiresAt ? _self.expiresAt : expiresAt // ignore: cast_nullable_to_non_nullable
as String?,scannedAt: freezed == scannedAt ? _self.scannedAt : scannedAt // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
