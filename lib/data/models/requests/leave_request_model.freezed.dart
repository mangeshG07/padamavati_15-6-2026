// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'leave_request_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$LeaveRequestModel {

 int? get id; String? get name;@JsonKey(name: 'from_date') String? get fromDate;@JsonKey(name: 'to_date') String? get toDate;@JsonKey(name: 'total_days') int? get totalDays; String? get gender;@JsonKey(name: 'branch_id') int? get branchId; String? get status;@JsonKey(name: 'status_text') String? get statusText;@JsonKey(name: 'created_at') String? get createdAt;@JsonKey(name: 'requested_on') String? get requestedOn;
/// Create a copy of LeaveRequestModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LeaveRequestModelCopyWith<LeaveRequestModel> get copyWith => _$LeaveRequestModelCopyWithImpl<LeaveRequestModel>(this as LeaveRequestModel, _$identity);

  /// Serializes this LeaveRequestModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LeaveRequestModel&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.fromDate, fromDate) || other.fromDate == fromDate)&&(identical(other.toDate, toDate) || other.toDate == toDate)&&(identical(other.totalDays, totalDays) || other.totalDays == totalDays)&&(identical(other.gender, gender) || other.gender == gender)&&(identical(other.branchId, branchId) || other.branchId == branchId)&&(identical(other.status, status) || other.status == status)&&(identical(other.statusText, statusText) || other.statusText == statusText)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.requestedOn, requestedOn) || other.requestedOn == requestedOn));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,fromDate,toDate,totalDays,gender,branchId,status,statusText,createdAt,requestedOn);

@override
String toString() {
  return 'LeaveRequestModel(id: $id, name: $name, fromDate: $fromDate, toDate: $toDate, totalDays: $totalDays, gender: $gender, branchId: $branchId, status: $status, statusText: $statusText, createdAt: $createdAt, requestedOn: $requestedOn)';
}


}

/// @nodoc
abstract mixin class $LeaveRequestModelCopyWith<$Res>  {
  factory $LeaveRequestModelCopyWith(LeaveRequestModel value, $Res Function(LeaveRequestModel) _then) = _$LeaveRequestModelCopyWithImpl;
@useResult
$Res call({
 int? id, String? name,@JsonKey(name: 'from_date') String? fromDate,@JsonKey(name: 'to_date') String? toDate,@JsonKey(name: 'total_days') int? totalDays, String? gender,@JsonKey(name: 'branch_id') int? branchId, String? status,@JsonKey(name: 'status_text') String? statusText,@JsonKey(name: 'created_at') String? createdAt,@JsonKey(name: 'requested_on') String? requestedOn
});




}
/// @nodoc
class _$LeaveRequestModelCopyWithImpl<$Res>
    implements $LeaveRequestModelCopyWith<$Res> {
  _$LeaveRequestModelCopyWithImpl(this._self, this._then);

  final LeaveRequestModel _self;
  final $Res Function(LeaveRequestModel) _then;

/// Create a copy of LeaveRequestModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? name = freezed,Object? fromDate = freezed,Object? toDate = freezed,Object? totalDays = freezed,Object? gender = freezed,Object? branchId = freezed,Object? status = freezed,Object? statusText = freezed,Object? createdAt = freezed,Object? requestedOn = freezed,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,fromDate: freezed == fromDate ? _self.fromDate : fromDate // ignore: cast_nullable_to_non_nullable
as String?,toDate: freezed == toDate ? _self.toDate : toDate // ignore: cast_nullable_to_non_nullable
as String?,totalDays: freezed == totalDays ? _self.totalDays : totalDays // ignore: cast_nullable_to_non_nullable
as int?,gender: freezed == gender ? _self.gender : gender // ignore: cast_nullable_to_non_nullable
as String?,branchId: freezed == branchId ? _self.branchId : branchId // ignore: cast_nullable_to_non_nullable
as int?,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String?,statusText: freezed == statusText ? _self.statusText : statusText // ignore: cast_nullable_to_non_nullable
as String?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String?,requestedOn: freezed == requestedOn ? _self.requestedOn : requestedOn // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [LeaveRequestModel].
extension LeaveRequestModelPatterns on LeaveRequestModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _LeaveRequestModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _LeaveRequestModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _LeaveRequestModel value)  $default,){
final _that = this;
switch (_that) {
case _LeaveRequestModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _LeaveRequestModel value)?  $default,){
final _that = this;
switch (_that) {
case _LeaveRequestModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int? id,  String? name, @JsonKey(name: 'from_date')  String? fromDate, @JsonKey(name: 'to_date')  String? toDate, @JsonKey(name: 'total_days')  int? totalDays,  String? gender, @JsonKey(name: 'branch_id')  int? branchId,  String? status, @JsonKey(name: 'status_text')  String? statusText, @JsonKey(name: 'created_at')  String? createdAt, @JsonKey(name: 'requested_on')  String? requestedOn)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _LeaveRequestModel() when $default != null:
return $default(_that.id,_that.name,_that.fromDate,_that.toDate,_that.totalDays,_that.gender,_that.branchId,_that.status,_that.statusText,_that.createdAt,_that.requestedOn);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int? id,  String? name, @JsonKey(name: 'from_date')  String? fromDate, @JsonKey(name: 'to_date')  String? toDate, @JsonKey(name: 'total_days')  int? totalDays,  String? gender, @JsonKey(name: 'branch_id')  int? branchId,  String? status, @JsonKey(name: 'status_text')  String? statusText, @JsonKey(name: 'created_at')  String? createdAt, @JsonKey(name: 'requested_on')  String? requestedOn)  $default,) {final _that = this;
switch (_that) {
case _LeaveRequestModel():
return $default(_that.id,_that.name,_that.fromDate,_that.toDate,_that.totalDays,_that.gender,_that.branchId,_that.status,_that.statusText,_that.createdAt,_that.requestedOn);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int? id,  String? name, @JsonKey(name: 'from_date')  String? fromDate, @JsonKey(name: 'to_date')  String? toDate, @JsonKey(name: 'total_days')  int? totalDays,  String? gender, @JsonKey(name: 'branch_id')  int? branchId,  String? status, @JsonKey(name: 'status_text')  String? statusText, @JsonKey(name: 'created_at')  String? createdAt, @JsonKey(name: 'requested_on')  String? requestedOn)?  $default,) {final _that = this;
switch (_that) {
case _LeaveRequestModel() when $default != null:
return $default(_that.id,_that.name,_that.fromDate,_that.toDate,_that.totalDays,_that.gender,_that.branchId,_that.status,_that.statusText,_that.createdAt,_that.requestedOn);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _LeaveRequestModel implements LeaveRequestModel {
  const _LeaveRequestModel({this.id, this.name, @JsonKey(name: 'from_date') this.fromDate, @JsonKey(name: 'to_date') this.toDate, @JsonKey(name: 'total_days') this.totalDays, this.gender, @JsonKey(name: 'branch_id') this.branchId, this.status, @JsonKey(name: 'status_text') this.statusText, @JsonKey(name: 'created_at') this.createdAt, @JsonKey(name: 'requested_on') this.requestedOn});
  factory _LeaveRequestModel.fromJson(Map<String, dynamic> json) => _$LeaveRequestModelFromJson(json);

@override final  int? id;
@override final  String? name;
@override@JsonKey(name: 'from_date') final  String? fromDate;
@override@JsonKey(name: 'to_date') final  String? toDate;
@override@JsonKey(name: 'total_days') final  int? totalDays;
@override final  String? gender;
@override@JsonKey(name: 'branch_id') final  int? branchId;
@override final  String? status;
@override@JsonKey(name: 'status_text') final  String? statusText;
@override@JsonKey(name: 'created_at') final  String? createdAt;
@override@JsonKey(name: 'requested_on') final  String? requestedOn;

/// Create a copy of LeaveRequestModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$LeaveRequestModelCopyWith<_LeaveRequestModel> get copyWith => __$LeaveRequestModelCopyWithImpl<_LeaveRequestModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$LeaveRequestModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _LeaveRequestModel&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.fromDate, fromDate) || other.fromDate == fromDate)&&(identical(other.toDate, toDate) || other.toDate == toDate)&&(identical(other.totalDays, totalDays) || other.totalDays == totalDays)&&(identical(other.gender, gender) || other.gender == gender)&&(identical(other.branchId, branchId) || other.branchId == branchId)&&(identical(other.status, status) || other.status == status)&&(identical(other.statusText, statusText) || other.statusText == statusText)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.requestedOn, requestedOn) || other.requestedOn == requestedOn));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,fromDate,toDate,totalDays,gender,branchId,status,statusText,createdAt,requestedOn);

@override
String toString() {
  return 'LeaveRequestModel(id: $id, name: $name, fromDate: $fromDate, toDate: $toDate, totalDays: $totalDays, gender: $gender, branchId: $branchId, status: $status, statusText: $statusText, createdAt: $createdAt, requestedOn: $requestedOn)';
}


}

/// @nodoc
abstract mixin class _$LeaveRequestModelCopyWith<$Res> implements $LeaveRequestModelCopyWith<$Res> {
  factory _$LeaveRequestModelCopyWith(_LeaveRequestModel value, $Res Function(_LeaveRequestModel) _then) = __$LeaveRequestModelCopyWithImpl;
@override @useResult
$Res call({
 int? id, String? name,@JsonKey(name: 'from_date') String? fromDate,@JsonKey(name: 'to_date') String? toDate,@JsonKey(name: 'total_days') int? totalDays, String? gender,@JsonKey(name: 'branch_id') int? branchId, String? status,@JsonKey(name: 'status_text') String? statusText,@JsonKey(name: 'created_at') String? createdAt,@JsonKey(name: 'requested_on') String? requestedOn
});




}
/// @nodoc
class __$LeaveRequestModelCopyWithImpl<$Res>
    implements _$LeaveRequestModelCopyWith<$Res> {
  __$LeaveRequestModelCopyWithImpl(this._self, this._then);

  final _LeaveRequestModel _self;
  final $Res Function(_LeaveRequestModel) _then;

/// Create a copy of LeaveRequestModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? name = freezed,Object? fromDate = freezed,Object? toDate = freezed,Object? totalDays = freezed,Object? gender = freezed,Object? branchId = freezed,Object? status = freezed,Object? statusText = freezed,Object? createdAt = freezed,Object? requestedOn = freezed,}) {
  return _then(_LeaveRequestModel(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,fromDate: freezed == fromDate ? _self.fromDate : fromDate // ignore: cast_nullable_to_non_nullable
as String?,toDate: freezed == toDate ? _self.toDate : toDate // ignore: cast_nullable_to_non_nullable
as String?,totalDays: freezed == totalDays ? _self.totalDays : totalDays // ignore: cast_nullable_to_non_nullable
as int?,gender: freezed == gender ? _self.gender : gender // ignore: cast_nullable_to_non_nullable
as String?,branchId: freezed == branchId ? _self.branchId : branchId // ignore: cast_nullable_to_non_nullable
as int?,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String?,statusText: freezed == statusText ? _self.statusText : statusText // ignore: cast_nullable_to_non_nullable
as String?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String?,requestedOn: freezed == requestedOn ? _self.requestedOn : requestedOn // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
