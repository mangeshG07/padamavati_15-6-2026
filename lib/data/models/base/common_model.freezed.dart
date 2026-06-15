// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'common_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$CommonModel {

 bool get status; String get message;
/// Create a copy of CommonModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CommonModelCopyWith<CommonModel> get copyWith => _$CommonModelCopyWithImpl<CommonModel>(this as CommonModel, _$identity);

  /// Serializes this CommonModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CommonModel&&(identical(other.status, status) || other.status == status)&&(identical(other.message, message) || other.message == message));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,status,message);

@override
String toString() {
  return 'CommonModel(status: $status, message: $message)';
}


}

/// @nodoc
abstract mixin class $CommonModelCopyWith<$Res>  {
  factory $CommonModelCopyWith(CommonModel value, $Res Function(CommonModel) _then) = _$CommonModelCopyWithImpl;
@useResult
$Res call({
 bool status, String message
});




}
/// @nodoc
class _$CommonModelCopyWithImpl<$Res>
    implements $CommonModelCopyWith<$Res> {
  _$CommonModelCopyWithImpl(this._self, this._then);

  final CommonModel _self;
  final $Res Function(CommonModel) _then;

/// Create a copy of CommonModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? status = null,Object? message = null,}) {
  return _then(_self.copyWith(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as bool,message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [CommonModel].
extension CommonModelPatterns on CommonModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CommonModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CommonModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CommonModel value)  $default,){
final _that = this;
switch (_that) {
case _CommonModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CommonModel value)?  $default,){
final _that = this;
switch (_that) {
case _CommonModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool status,  String message)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CommonModel() when $default != null:
return $default(_that.status,_that.message);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool status,  String message)  $default,) {final _that = this;
switch (_that) {
case _CommonModel():
return $default(_that.status,_that.message);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool status,  String message)?  $default,) {final _that = this;
switch (_that) {
case _CommonModel() when $default != null:
return $default(_that.status,_that.message);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CommonModel implements CommonModel {
  const _CommonModel({required this.status, required this.message});
  factory _CommonModel.fromJson(Map<String, dynamic> json) => _$CommonModelFromJson(json);

@override final  bool status;
@override final  String message;

/// Create a copy of CommonModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CommonModelCopyWith<_CommonModel> get copyWith => __$CommonModelCopyWithImpl<_CommonModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CommonModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CommonModel&&(identical(other.status, status) || other.status == status)&&(identical(other.message, message) || other.message == message));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,status,message);

@override
String toString() {
  return 'CommonModel(status: $status, message: $message)';
}


}

/// @nodoc
abstract mixin class _$CommonModelCopyWith<$Res> implements $CommonModelCopyWith<$Res> {
  factory _$CommonModelCopyWith(_CommonModel value, $Res Function(_CommonModel) _then) = __$CommonModelCopyWithImpl;
@override @useResult
$Res call({
 bool status, String message
});




}
/// @nodoc
class __$CommonModelCopyWithImpl<$Res>
    implements _$CommonModelCopyWith<$Res> {
  __$CommonModelCopyWithImpl(this._self, this._then);

  final _CommonModel _self;
  final $Res Function(_CommonModel) _then;

/// Create a copy of CommonModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? status = null,Object? message = null,}) {
  return _then(_CommonModel(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as bool,message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
