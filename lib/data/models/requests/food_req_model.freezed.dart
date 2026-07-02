// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'food_req_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$FoodRequestModel {

@JsonKey(name: 'id') int? get id;@JsonKey(name: 'food_type_name') String? get foodType;@JsonKey(name: 'food_name') String? get foodName;@JsonKey(name: 'requested_by') String? get requestedBy;@JsonKey(name: 'for_date') String? get foodDate;@JsonKey(name: 'requested_on') String? get requestedOn;@JsonKey(name: 'date') String? get forDate;@JsonKey(name: 'created_at') String? get requestDate;
/// Create a copy of FoodRequestModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FoodRequestModelCopyWith<FoodRequestModel> get copyWith => _$FoodRequestModelCopyWithImpl<FoodRequestModel>(this as FoodRequestModel, _$identity);

  /// Serializes this FoodRequestModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FoodRequestModel&&(identical(other.id, id) || other.id == id)&&(identical(other.foodType, foodType) || other.foodType == foodType)&&(identical(other.foodName, foodName) || other.foodName == foodName)&&(identical(other.requestedBy, requestedBy) || other.requestedBy == requestedBy)&&(identical(other.foodDate, foodDate) || other.foodDate == foodDate)&&(identical(other.requestedOn, requestedOn) || other.requestedOn == requestedOn)&&(identical(other.forDate, forDate) || other.forDate == forDate)&&(identical(other.requestDate, requestDate) || other.requestDate == requestDate));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,foodType,foodName,requestedBy,foodDate,requestedOn,forDate,requestDate);

@override
String toString() {
  return 'FoodRequestModel(id: $id, foodType: $foodType, foodName: $foodName, requestedBy: $requestedBy, foodDate: $foodDate, requestedOn: $requestedOn, forDate: $forDate, requestDate: $requestDate)';
}


}

/// @nodoc
abstract mixin class $FoodRequestModelCopyWith<$Res>  {
  factory $FoodRequestModelCopyWith(FoodRequestModel value, $Res Function(FoodRequestModel) _then) = _$FoodRequestModelCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'id') int? id,@JsonKey(name: 'food_type_name') String? foodType,@JsonKey(name: 'food_name') String? foodName,@JsonKey(name: 'requested_by') String? requestedBy,@JsonKey(name: 'for_date') String? foodDate,@JsonKey(name: 'requested_on') String? requestedOn,@JsonKey(name: 'date') String? forDate,@JsonKey(name: 'created_at') String? requestDate
});




}
/// @nodoc
class _$FoodRequestModelCopyWithImpl<$Res>
    implements $FoodRequestModelCopyWith<$Res> {
  _$FoodRequestModelCopyWithImpl(this._self, this._then);

  final FoodRequestModel _self;
  final $Res Function(FoodRequestModel) _then;

/// Create a copy of FoodRequestModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? foodType = freezed,Object? foodName = freezed,Object? requestedBy = freezed,Object? foodDate = freezed,Object? requestedOn = freezed,Object? forDate = freezed,Object? requestDate = freezed,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,foodType: freezed == foodType ? _self.foodType : foodType // ignore: cast_nullable_to_non_nullable
as String?,foodName: freezed == foodName ? _self.foodName : foodName // ignore: cast_nullable_to_non_nullable
as String?,requestedBy: freezed == requestedBy ? _self.requestedBy : requestedBy // ignore: cast_nullable_to_non_nullable
as String?,foodDate: freezed == foodDate ? _self.foodDate : foodDate // ignore: cast_nullable_to_non_nullable
as String?,requestedOn: freezed == requestedOn ? _self.requestedOn : requestedOn // ignore: cast_nullable_to_non_nullable
as String?,forDate: freezed == forDate ? _self.forDate : forDate // ignore: cast_nullable_to_non_nullable
as String?,requestDate: freezed == requestDate ? _self.requestDate : requestDate // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [FoodRequestModel].
extension FoodRequestModelPatterns on FoodRequestModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _FoodRequestModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _FoodRequestModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _FoodRequestModel value)  $default,){
final _that = this;
switch (_that) {
case _FoodRequestModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _FoodRequestModel value)?  $default,){
final _that = this;
switch (_that) {
case _FoodRequestModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'id')  int? id, @JsonKey(name: 'food_type_name')  String? foodType, @JsonKey(name: 'food_name')  String? foodName, @JsonKey(name: 'requested_by')  String? requestedBy, @JsonKey(name: 'for_date')  String? foodDate, @JsonKey(name: 'requested_on')  String? requestedOn, @JsonKey(name: 'date')  String? forDate, @JsonKey(name: 'created_at')  String? requestDate)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _FoodRequestModel() when $default != null:
return $default(_that.id,_that.foodType,_that.foodName,_that.requestedBy,_that.foodDate,_that.requestedOn,_that.forDate,_that.requestDate);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'id')  int? id, @JsonKey(name: 'food_type_name')  String? foodType, @JsonKey(name: 'food_name')  String? foodName, @JsonKey(name: 'requested_by')  String? requestedBy, @JsonKey(name: 'for_date')  String? foodDate, @JsonKey(name: 'requested_on')  String? requestedOn, @JsonKey(name: 'date')  String? forDate, @JsonKey(name: 'created_at')  String? requestDate)  $default,) {final _that = this;
switch (_that) {
case _FoodRequestModel():
return $default(_that.id,_that.foodType,_that.foodName,_that.requestedBy,_that.foodDate,_that.requestedOn,_that.forDate,_that.requestDate);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'id')  int? id, @JsonKey(name: 'food_type_name')  String? foodType, @JsonKey(name: 'food_name')  String? foodName, @JsonKey(name: 'requested_by')  String? requestedBy, @JsonKey(name: 'for_date')  String? foodDate, @JsonKey(name: 'requested_on')  String? requestedOn, @JsonKey(name: 'date')  String? forDate, @JsonKey(name: 'created_at')  String? requestDate)?  $default,) {final _that = this;
switch (_that) {
case _FoodRequestModel() when $default != null:
return $default(_that.id,_that.foodType,_that.foodName,_that.requestedBy,_that.foodDate,_that.requestedOn,_that.forDate,_that.requestDate);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _FoodRequestModel implements FoodRequestModel {
  const _FoodRequestModel({@JsonKey(name: 'id') this.id, @JsonKey(name: 'food_type_name') this.foodType, @JsonKey(name: 'food_name') this.foodName, @JsonKey(name: 'requested_by') this.requestedBy, @JsonKey(name: 'for_date') this.foodDate, @JsonKey(name: 'requested_on') this.requestedOn, @JsonKey(name: 'date') this.forDate, @JsonKey(name: 'created_at') this.requestDate});
  factory _FoodRequestModel.fromJson(Map<String, dynamic> json) => _$FoodRequestModelFromJson(json);

@override@JsonKey(name: 'id') final  int? id;
@override@JsonKey(name: 'food_type_name') final  String? foodType;
@override@JsonKey(name: 'food_name') final  String? foodName;
@override@JsonKey(name: 'requested_by') final  String? requestedBy;
@override@JsonKey(name: 'for_date') final  String? foodDate;
@override@JsonKey(name: 'requested_on') final  String? requestedOn;
@override@JsonKey(name: 'date') final  String? forDate;
@override@JsonKey(name: 'created_at') final  String? requestDate;

/// Create a copy of FoodRequestModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$FoodRequestModelCopyWith<_FoodRequestModel> get copyWith => __$FoodRequestModelCopyWithImpl<_FoodRequestModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$FoodRequestModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _FoodRequestModel&&(identical(other.id, id) || other.id == id)&&(identical(other.foodType, foodType) || other.foodType == foodType)&&(identical(other.foodName, foodName) || other.foodName == foodName)&&(identical(other.requestedBy, requestedBy) || other.requestedBy == requestedBy)&&(identical(other.foodDate, foodDate) || other.foodDate == foodDate)&&(identical(other.requestedOn, requestedOn) || other.requestedOn == requestedOn)&&(identical(other.forDate, forDate) || other.forDate == forDate)&&(identical(other.requestDate, requestDate) || other.requestDate == requestDate));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,foodType,foodName,requestedBy,foodDate,requestedOn,forDate,requestDate);

@override
String toString() {
  return 'FoodRequestModel(id: $id, foodType: $foodType, foodName: $foodName, requestedBy: $requestedBy, foodDate: $foodDate, requestedOn: $requestedOn, forDate: $forDate, requestDate: $requestDate)';
}


}

/// @nodoc
abstract mixin class _$FoodRequestModelCopyWith<$Res> implements $FoodRequestModelCopyWith<$Res> {
  factory _$FoodRequestModelCopyWith(_FoodRequestModel value, $Res Function(_FoodRequestModel) _then) = __$FoodRequestModelCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'id') int? id,@JsonKey(name: 'food_type_name') String? foodType,@JsonKey(name: 'food_name') String? foodName,@JsonKey(name: 'requested_by') String? requestedBy,@JsonKey(name: 'for_date') String? foodDate,@JsonKey(name: 'requested_on') String? requestedOn,@JsonKey(name: 'date') String? forDate,@JsonKey(name: 'created_at') String? requestDate
});




}
/// @nodoc
class __$FoodRequestModelCopyWithImpl<$Res>
    implements _$FoodRequestModelCopyWith<$Res> {
  __$FoodRequestModelCopyWithImpl(this._self, this._then);

  final _FoodRequestModel _self;
  final $Res Function(_FoodRequestModel) _then;

/// Create a copy of FoodRequestModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? foodType = freezed,Object? foodName = freezed,Object? requestedBy = freezed,Object? foodDate = freezed,Object? requestedOn = freezed,Object? forDate = freezed,Object? requestDate = freezed,}) {
  return _then(_FoodRequestModel(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,foodType: freezed == foodType ? _self.foodType : foodType // ignore: cast_nullable_to_non_nullable
as String?,foodName: freezed == foodName ? _self.foodName : foodName // ignore: cast_nullable_to_non_nullable
as String?,requestedBy: freezed == requestedBy ? _self.requestedBy : requestedBy // ignore: cast_nullable_to_non_nullable
as String?,foodDate: freezed == foodDate ? _self.foodDate : foodDate // ignore: cast_nullable_to_non_nullable
as String?,requestedOn: freezed == requestedOn ? _self.requestedOn : requestedOn // ignore: cast_nullable_to_non_nullable
as String?,forDate: freezed == forDate ? _self.forDate : forDate // ignore: cast_nullable_to_non_nullable
as String?,requestDate: freezed == requestDate ? _self.requestDate : requestDate // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
