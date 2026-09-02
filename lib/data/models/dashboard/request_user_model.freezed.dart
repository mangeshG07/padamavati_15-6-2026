// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'request_user_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$RequestUserModel {

 String? get name;@JsonKey(name: 'mobile_no') String? get mobileNo;@JsonKey(name: 'from_date') String? get fromDate;@JsonKey(name: 'to_date') String? get toDate;@JsonKey(name: 'total_days') int? get totalDays; int? get id;@JsonKey(name: 'food_name') String? get foodName;@JsonKey(name: 'requested_by') String? get requestedBy;@JsonKey(name: 'for_date') String? get forDate;@JsonKey(name: 'requested_on') String? get requestedOn;
/// Create a copy of RequestUserModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RequestUserModelCopyWith<RequestUserModel> get copyWith => _$RequestUserModelCopyWithImpl<RequestUserModel>(this as RequestUserModel, _$identity);

  /// Serializes this RequestUserModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RequestUserModel&&(identical(other.name, name) || other.name == name)&&(identical(other.mobileNo, mobileNo) || other.mobileNo == mobileNo)&&(identical(other.fromDate, fromDate) || other.fromDate == fromDate)&&(identical(other.toDate, toDate) || other.toDate == toDate)&&(identical(other.totalDays, totalDays) || other.totalDays == totalDays)&&(identical(other.id, id) || other.id == id)&&(identical(other.foodName, foodName) || other.foodName == foodName)&&(identical(other.requestedBy, requestedBy) || other.requestedBy == requestedBy)&&(identical(other.forDate, forDate) || other.forDate == forDate)&&(identical(other.requestedOn, requestedOn) || other.requestedOn == requestedOn));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,mobileNo,fromDate,toDate,totalDays,id,foodName,requestedBy,forDate,requestedOn);

@override
String toString() {
  return 'RequestUserModel(name: $name, mobileNo: $mobileNo, fromDate: $fromDate, toDate: $toDate, totalDays: $totalDays, id: $id, foodName: $foodName, requestedBy: $requestedBy, forDate: $forDate, requestedOn: $requestedOn)';
}


}

/// @nodoc
abstract mixin class $RequestUserModelCopyWith<$Res>  {
  factory $RequestUserModelCopyWith(RequestUserModel value, $Res Function(RequestUserModel) _then) = _$RequestUserModelCopyWithImpl;
@useResult
$Res call({
 String? name,@JsonKey(name: 'mobile_no') String? mobileNo,@JsonKey(name: 'from_date') String? fromDate,@JsonKey(name: 'to_date') String? toDate,@JsonKey(name: 'total_days') int? totalDays, int? id,@JsonKey(name: 'food_name') String? foodName,@JsonKey(name: 'requested_by') String? requestedBy,@JsonKey(name: 'for_date') String? forDate,@JsonKey(name: 'requested_on') String? requestedOn
});




}
/// @nodoc
class _$RequestUserModelCopyWithImpl<$Res>
    implements $RequestUserModelCopyWith<$Res> {
  _$RequestUserModelCopyWithImpl(this._self, this._then);

  final RequestUserModel _self;
  final $Res Function(RequestUserModel) _then;

/// Create a copy of RequestUserModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? name = freezed,Object? mobileNo = freezed,Object? fromDate = freezed,Object? toDate = freezed,Object? totalDays = freezed,Object? id = freezed,Object? foodName = freezed,Object? requestedBy = freezed,Object? forDate = freezed,Object? requestedOn = freezed,}) {
  return _then(_self.copyWith(
name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,mobileNo: freezed == mobileNo ? _self.mobileNo : mobileNo // ignore: cast_nullable_to_non_nullable
as String?,fromDate: freezed == fromDate ? _self.fromDate : fromDate // ignore: cast_nullable_to_non_nullable
as String?,toDate: freezed == toDate ? _self.toDate : toDate // ignore: cast_nullable_to_non_nullable
as String?,totalDays: freezed == totalDays ? _self.totalDays : totalDays // ignore: cast_nullable_to_non_nullable
as int?,id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,foodName: freezed == foodName ? _self.foodName : foodName // ignore: cast_nullable_to_non_nullable
as String?,requestedBy: freezed == requestedBy ? _self.requestedBy : requestedBy // ignore: cast_nullable_to_non_nullable
as String?,forDate: freezed == forDate ? _self.forDate : forDate // ignore: cast_nullable_to_non_nullable
as String?,requestedOn: freezed == requestedOn ? _self.requestedOn : requestedOn // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [RequestUserModel].
extension RequestUserModelPatterns on RequestUserModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _RequestUserModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _RequestUserModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _RequestUserModel value)  $default,){
final _that = this;
switch (_that) {
case _RequestUserModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _RequestUserModel value)?  $default,){
final _that = this;
switch (_that) {
case _RequestUserModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? name, @JsonKey(name: 'mobile_no')  String? mobileNo, @JsonKey(name: 'from_date')  String? fromDate, @JsonKey(name: 'to_date')  String? toDate, @JsonKey(name: 'total_days')  int? totalDays,  int? id, @JsonKey(name: 'food_name')  String? foodName, @JsonKey(name: 'requested_by')  String? requestedBy, @JsonKey(name: 'for_date')  String? forDate, @JsonKey(name: 'requested_on')  String? requestedOn)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _RequestUserModel() when $default != null:
return $default(_that.name,_that.mobileNo,_that.fromDate,_that.toDate,_that.totalDays,_that.id,_that.foodName,_that.requestedBy,_that.forDate,_that.requestedOn);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? name, @JsonKey(name: 'mobile_no')  String? mobileNo, @JsonKey(name: 'from_date')  String? fromDate, @JsonKey(name: 'to_date')  String? toDate, @JsonKey(name: 'total_days')  int? totalDays,  int? id, @JsonKey(name: 'food_name')  String? foodName, @JsonKey(name: 'requested_by')  String? requestedBy, @JsonKey(name: 'for_date')  String? forDate, @JsonKey(name: 'requested_on')  String? requestedOn)  $default,) {final _that = this;
switch (_that) {
case _RequestUserModel():
return $default(_that.name,_that.mobileNo,_that.fromDate,_that.toDate,_that.totalDays,_that.id,_that.foodName,_that.requestedBy,_that.forDate,_that.requestedOn);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? name, @JsonKey(name: 'mobile_no')  String? mobileNo, @JsonKey(name: 'from_date')  String? fromDate, @JsonKey(name: 'to_date')  String? toDate, @JsonKey(name: 'total_days')  int? totalDays,  int? id, @JsonKey(name: 'food_name')  String? foodName, @JsonKey(name: 'requested_by')  String? requestedBy, @JsonKey(name: 'for_date')  String? forDate, @JsonKey(name: 'requested_on')  String? requestedOn)?  $default,) {final _that = this;
switch (_that) {
case _RequestUserModel() when $default != null:
return $default(_that.name,_that.mobileNo,_that.fromDate,_that.toDate,_that.totalDays,_that.id,_that.foodName,_that.requestedBy,_that.forDate,_that.requestedOn);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _RequestUserModel implements RequestUserModel {
  const _RequestUserModel({this.name, @JsonKey(name: 'mobile_no') this.mobileNo, @JsonKey(name: 'from_date') this.fromDate, @JsonKey(name: 'to_date') this.toDate, @JsonKey(name: 'total_days') this.totalDays, this.id, @JsonKey(name: 'food_name') this.foodName, @JsonKey(name: 'requested_by') this.requestedBy, @JsonKey(name: 'for_date') this.forDate, @JsonKey(name: 'requested_on') this.requestedOn});
  factory _RequestUserModel.fromJson(Map<String, dynamic> json) => _$RequestUserModelFromJson(json);

@override final  String? name;
@override@JsonKey(name: 'mobile_no') final  String? mobileNo;
@override@JsonKey(name: 'from_date') final  String? fromDate;
@override@JsonKey(name: 'to_date') final  String? toDate;
@override@JsonKey(name: 'total_days') final  int? totalDays;
@override final  int? id;
@override@JsonKey(name: 'food_name') final  String? foodName;
@override@JsonKey(name: 'requested_by') final  String? requestedBy;
@override@JsonKey(name: 'for_date') final  String? forDate;
@override@JsonKey(name: 'requested_on') final  String? requestedOn;

/// Create a copy of RequestUserModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$RequestUserModelCopyWith<_RequestUserModel> get copyWith => __$RequestUserModelCopyWithImpl<_RequestUserModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$RequestUserModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _RequestUserModel&&(identical(other.name, name) || other.name == name)&&(identical(other.mobileNo, mobileNo) || other.mobileNo == mobileNo)&&(identical(other.fromDate, fromDate) || other.fromDate == fromDate)&&(identical(other.toDate, toDate) || other.toDate == toDate)&&(identical(other.totalDays, totalDays) || other.totalDays == totalDays)&&(identical(other.id, id) || other.id == id)&&(identical(other.foodName, foodName) || other.foodName == foodName)&&(identical(other.requestedBy, requestedBy) || other.requestedBy == requestedBy)&&(identical(other.forDate, forDate) || other.forDate == forDate)&&(identical(other.requestedOn, requestedOn) || other.requestedOn == requestedOn));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,mobileNo,fromDate,toDate,totalDays,id,foodName,requestedBy,forDate,requestedOn);

@override
String toString() {
  return 'RequestUserModel(name: $name, mobileNo: $mobileNo, fromDate: $fromDate, toDate: $toDate, totalDays: $totalDays, id: $id, foodName: $foodName, requestedBy: $requestedBy, forDate: $forDate, requestedOn: $requestedOn)';
}


}

/// @nodoc
abstract mixin class _$RequestUserModelCopyWith<$Res> implements $RequestUserModelCopyWith<$Res> {
  factory _$RequestUserModelCopyWith(_RequestUserModel value, $Res Function(_RequestUserModel) _then) = __$RequestUserModelCopyWithImpl;
@override @useResult
$Res call({
 String? name,@JsonKey(name: 'mobile_no') String? mobileNo,@JsonKey(name: 'from_date') String? fromDate,@JsonKey(name: 'to_date') String? toDate,@JsonKey(name: 'total_days') int? totalDays, int? id,@JsonKey(name: 'food_name') String? foodName,@JsonKey(name: 'requested_by') String? requestedBy,@JsonKey(name: 'for_date') String? forDate,@JsonKey(name: 'requested_on') String? requestedOn
});




}
/// @nodoc
class __$RequestUserModelCopyWithImpl<$Res>
    implements _$RequestUserModelCopyWith<$Res> {
  __$RequestUserModelCopyWithImpl(this._self, this._then);

  final _RequestUserModel _self;
  final $Res Function(_RequestUserModel) _then;

/// Create a copy of RequestUserModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? name = freezed,Object? mobileNo = freezed,Object? fromDate = freezed,Object? toDate = freezed,Object? totalDays = freezed,Object? id = freezed,Object? foodName = freezed,Object? requestedBy = freezed,Object? forDate = freezed,Object? requestedOn = freezed,}) {
  return _then(_RequestUserModel(
name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,mobileNo: freezed == mobileNo ? _self.mobileNo : mobileNo // ignore: cast_nullable_to_non_nullable
as String?,fromDate: freezed == fromDate ? _self.fromDate : fromDate // ignore: cast_nullable_to_non_nullable
as String?,toDate: freezed == toDate ? _self.toDate : toDate // ignore: cast_nullable_to_non_nullable
as String?,totalDays: freezed == totalDays ? _self.totalDays : totalDays // ignore: cast_nullable_to_non_nullable
as int?,id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,foodName: freezed == foodName ? _self.foodName : foodName // ignore: cast_nullable_to_non_nullable
as String?,requestedBy: freezed == requestedBy ? _self.requestedBy : requestedBy // ignore: cast_nullable_to_non_nullable
as String?,forDate: freezed == forDate ? _self.forDate : forDate // ignore: cast_nullable_to_non_nullable
as String?,requestedOn: freezed == requestedOn ? _self.requestedOn : requestedOn // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
