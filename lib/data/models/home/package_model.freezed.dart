// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'package_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$PackageModel {

 int? get id; String? get name; int? get amount; String? get type; int? get days; String? get gender;@JsonKey(name: 'mess_time') String? get messTime;
/// Create a copy of PackageModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PackageModelCopyWith<PackageModel> get copyWith => _$PackageModelCopyWithImpl<PackageModel>(this as PackageModel, _$identity);

  /// Serializes this PackageModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PackageModel&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.amount, amount) || other.amount == amount)&&(identical(other.type, type) || other.type == type)&&(identical(other.days, days) || other.days == days)&&(identical(other.gender, gender) || other.gender == gender)&&(identical(other.messTime, messTime) || other.messTime == messTime));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,amount,type,days,gender,messTime);

@override
String toString() {
  return 'PackageModel(id: $id, name: $name, amount: $amount, type: $type, days: $days, gender: $gender, messTime: $messTime)';
}


}

/// @nodoc
abstract mixin class $PackageModelCopyWith<$Res>  {
  factory $PackageModelCopyWith(PackageModel value, $Res Function(PackageModel) _then) = _$PackageModelCopyWithImpl;
@useResult
$Res call({
 int? id, String? name, int? amount, String? type, int? days, String? gender,@JsonKey(name: 'mess_time') String? messTime
});




}
/// @nodoc
class _$PackageModelCopyWithImpl<$Res>
    implements $PackageModelCopyWith<$Res> {
  _$PackageModelCopyWithImpl(this._self, this._then);

  final PackageModel _self;
  final $Res Function(PackageModel) _then;

/// Create a copy of PackageModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? name = freezed,Object? amount = freezed,Object? type = freezed,Object? days = freezed,Object? gender = freezed,Object? messTime = freezed,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,amount: freezed == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as int?,type: freezed == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String?,days: freezed == days ? _self.days : days // ignore: cast_nullable_to_non_nullable
as int?,gender: freezed == gender ? _self.gender : gender // ignore: cast_nullable_to_non_nullable
as String?,messTime: freezed == messTime ? _self.messTime : messTime // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [PackageModel].
extension PackageModelPatterns on PackageModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PackageModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PackageModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PackageModel value)  $default,){
final _that = this;
switch (_that) {
case _PackageModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PackageModel value)?  $default,){
final _that = this;
switch (_that) {
case _PackageModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int? id,  String? name,  int? amount,  String? type,  int? days,  String? gender, @JsonKey(name: 'mess_time')  String? messTime)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PackageModel() when $default != null:
return $default(_that.id,_that.name,_that.amount,_that.type,_that.days,_that.gender,_that.messTime);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int? id,  String? name,  int? amount,  String? type,  int? days,  String? gender, @JsonKey(name: 'mess_time')  String? messTime)  $default,) {final _that = this;
switch (_that) {
case _PackageModel():
return $default(_that.id,_that.name,_that.amount,_that.type,_that.days,_that.gender,_that.messTime);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int? id,  String? name,  int? amount,  String? type,  int? days,  String? gender, @JsonKey(name: 'mess_time')  String? messTime)?  $default,) {final _that = this;
switch (_that) {
case _PackageModel() when $default != null:
return $default(_that.id,_that.name,_that.amount,_that.type,_that.days,_that.gender,_that.messTime);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _PackageModel implements PackageModel {
  const _PackageModel({this.id, this.name, this.amount, this.type, this.days, this.gender, @JsonKey(name: 'mess_time') this.messTime});
  factory _PackageModel.fromJson(Map<String, dynamic> json) => _$PackageModelFromJson(json);

@override final  int? id;
@override final  String? name;
@override final  int? amount;
@override final  String? type;
@override final  int? days;
@override final  String? gender;
@override@JsonKey(name: 'mess_time') final  String? messTime;

/// Create a copy of PackageModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PackageModelCopyWith<_PackageModel> get copyWith => __$PackageModelCopyWithImpl<_PackageModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PackageModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PackageModel&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.amount, amount) || other.amount == amount)&&(identical(other.type, type) || other.type == type)&&(identical(other.days, days) || other.days == days)&&(identical(other.gender, gender) || other.gender == gender)&&(identical(other.messTime, messTime) || other.messTime == messTime));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,amount,type,days,gender,messTime);

@override
String toString() {
  return 'PackageModel(id: $id, name: $name, amount: $amount, type: $type, days: $days, gender: $gender, messTime: $messTime)';
}


}

/// @nodoc
abstract mixin class _$PackageModelCopyWith<$Res> implements $PackageModelCopyWith<$Res> {
  factory _$PackageModelCopyWith(_PackageModel value, $Res Function(_PackageModel) _then) = __$PackageModelCopyWithImpl;
@override @useResult
$Res call({
 int? id, String? name, int? amount, String? type, int? days, String? gender,@JsonKey(name: 'mess_time') String? messTime
});




}
/// @nodoc
class __$PackageModelCopyWithImpl<$Res>
    implements _$PackageModelCopyWith<$Res> {
  __$PackageModelCopyWithImpl(this._self, this._then);

  final _PackageModel _self;
  final $Res Function(_PackageModel) _then;

/// Create a copy of PackageModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? name = freezed,Object? amount = freezed,Object? type = freezed,Object? days = freezed,Object? gender = freezed,Object? messTime = freezed,}) {
  return _then(_PackageModel(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,amount: freezed == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as int?,type: freezed == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String?,days: freezed == days ? _self.days : days // ignore: cast_nullable_to_non_nullable
as int?,gender: freezed == gender ? _self.gender : gender // ignore: cast_nullable_to_non_nullable
as String?,messTime: freezed == messTime ? _self.messTime : messTime // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
