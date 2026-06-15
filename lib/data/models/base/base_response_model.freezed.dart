// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'base_response_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$BaseResponseModel<T> {

 CommonModel get common; AppConfigModel get android; AppConfigModel get ios; T? get data;
/// Create a copy of BaseResponseModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$BaseResponseModelCopyWith<T, BaseResponseModel<T>> get copyWith => _$BaseResponseModelCopyWithImpl<T, BaseResponseModel<T>>(this as BaseResponseModel<T>, _$identity);

  /// Serializes this BaseResponseModel to a JSON map.
  Map<String, dynamic> toJson(Object? Function(T) toJsonT);


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is BaseResponseModel<T>&&(identical(other.common, common) || other.common == common)&&(identical(other.android, android) || other.android == android)&&(identical(other.ios, ios) || other.ios == ios)&&const DeepCollectionEquality().equals(other.data, data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,common,android,ios,const DeepCollectionEquality().hash(data));

@override
String toString() {
  return 'BaseResponseModel<$T>(common: $common, android: $android, ios: $ios, data: $data)';
}


}

/// @nodoc
abstract mixin class $BaseResponseModelCopyWith<T,$Res>  {
  factory $BaseResponseModelCopyWith(BaseResponseModel<T> value, $Res Function(BaseResponseModel<T>) _then) = _$BaseResponseModelCopyWithImpl;
@useResult
$Res call({
 CommonModel common, AppConfigModel android, AppConfigModel ios, T? data
});


$CommonModelCopyWith<$Res> get common;$AppConfigModelCopyWith<$Res> get android;$AppConfigModelCopyWith<$Res> get ios;

}
/// @nodoc
class _$BaseResponseModelCopyWithImpl<T,$Res>
    implements $BaseResponseModelCopyWith<T, $Res> {
  _$BaseResponseModelCopyWithImpl(this._self, this._then);

  final BaseResponseModel<T> _self;
  final $Res Function(BaseResponseModel<T>) _then;

/// Create a copy of BaseResponseModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? common = null,Object? android = null,Object? ios = null,Object? data = freezed,}) {
  return _then(_self.copyWith(
common: null == common ? _self.common : common // ignore: cast_nullable_to_non_nullable
as CommonModel,android: null == android ? _self.android : android // ignore: cast_nullable_to_non_nullable
as AppConfigModel,ios: null == ios ? _self.ios : ios // ignore: cast_nullable_to_non_nullable
as AppConfigModel,data: freezed == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as T?,
  ));
}
/// Create a copy of BaseResponseModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CommonModelCopyWith<$Res> get common {
  
  return $CommonModelCopyWith<$Res>(_self.common, (value) {
    return _then(_self.copyWith(common: value));
  });
}/// Create a copy of BaseResponseModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AppConfigModelCopyWith<$Res> get android {
  
  return $AppConfigModelCopyWith<$Res>(_self.android, (value) {
    return _then(_self.copyWith(android: value));
  });
}/// Create a copy of BaseResponseModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AppConfigModelCopyWith<$Res> get ios {
  
  return $AppConfigModelCopyWith<$Res>(_self.ios, (value) {
    return _then(_self.copyWith(ios: value));
  });
}
}


/// Adds pattern-matching-related methods to [BaseResponseModel].
extension BaseResponseModelPatterns<T> on BaseResponseModel<T> {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _BaseResponseModel<T> value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _BaseResponseModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _BaseResponseModel<T> value)  $default,){
final _that = this;
switch (_that) {
case _BaseResponseModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _BaseResponseModel<T> value)?  $default,){
final _that = this;
switch (_that) {
case _BaseResponseModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( CommonModel common,  AppConfigModel android,  AppConfigModel ios,  T? data)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _BaseResponseModel() when $default != null:
return $default(_that.common,_that.android,_that.ios,_that.data);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( CommonModel common,  AppConfigModel android,  AppConfigModel ios,  T? data)  $default,) {final _that = this;
switch (_that) {
case _BaseResponseModel():
return $default(_that.common,_that.android,_that.ios,_that.data);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( CommonModel common,  AppConfigModel android,  AppConfigModel ios,  T? data)?  $default,) {final _that = this;
switch (_that) {
case _BaseResponseModel() when $default != null:
return $default(_that.common,_that.android,_that.ios,_that.data);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable(genericArgumentFactories: true)

class _BaseResponseModel<T> implements BaseResponseModel<T> {
  const _BaseResponseModel({required this.common, required this.android, required this.ios, this.data});
  factory _BaseResponseModel.fromJson(Map<String, dynamic> json,T Function(Object?) fromJsonT) => _$BaseResponseModelFromJson(json,fromJsonT);

@override final  CommonModel common;
@override final  AppConfigModel android;
@override final  AppConfigModel ios;
@override final  T? data;

/// Create a copy of BaseResponseModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$BaseResponseModelCopyWith<T, _BaseResponseModel<T>> get copyWith => __$BaseResponseModelCopyWithImpl<T, _BaseResponseModel<T>>(this, _$identity);

@override
Map<String, dynamic> toJson(Object? Function(T) toJsonT) {
  return _$BaseResponseModelToJson<T>(this, toJsonT);
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _BaseResponseModel<T>&&(identical(other.common, common) || other.common == common)&&(identical(other.android, android) || other.android == android)&&(identical(other.ios, ios) || other.ios == ios)&&const DeepCollectionEquality().equals(other.data, data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,common,android,ios,const DeepCollectionEquality().hash(data));

@override
String toString() {
  return 'BaseResponseModel<$T>(common: $common, android: $android, ios: $ios, data: $data)';
}


}

/// @nodoc
abstract mixin class _$BaseResponseModelCopyWith<T,$Res> implements $BaseResponseModelCopyWith<T, $Res> {
  factory _$BaseResponseModelCopyWith(_BaseResponseModel<T> value, $Res Function(_BaseResponseModel<T>) _then) = __$BaseResponseModelCopyWithImpl;
@override @useResult
$Res call({
 CommonModel common, AppConfigModel android, AppConfigModel ios, T? data
});


@override $CommonModelCopyWith<$Res> get common;@override $AppConfigModelCopyWith<$Res> get android;@override $AppConfigModelCopyWith<$Res> get ios;

}
/// @nodoc
class __$BaseResponseModelCopyWithImpl<T,$Res>
    implements _$BaseResponseModelCopyWith<T, $Res> {
  __$BaseResponseModelCopyWithImpl(this._self, this._then);

  final _BaseResponseModel<T> _self;
  final $Res Function(_BaseResponseModel<T>) _then;

/// Create a copy of BaseResponseModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? common = null,Object? android = null,Object? ios = null,Object? data = freezed,}) {
  return _then(_BaseResponseModel<T>(
common: null == common ? _self.common : common // ignore: cast_nullable_to_non_nullable
as CommonModel,android: null == android ? _self.android : android // ignore: cast_nullable_to_non_nullable
as AppConfigModel,ios: null == ios ? _self.ios : ios // ignore: cast_nullable_to_non_nullable
as AppConfigModel,data: freezed == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as T?,
  ));
}

/// Create a copy of BaseResponseModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CommonModelCopyWith<$Res> get common {
  
  return $CommonModelCopyWith<$Res>(_self.common, (value) {
    return _then(_self.copyWith(common: value));
  });
}/// Create a copy of BaseResponseModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AppConfigModelCopyWith<$Res> get android {
  
  return $AppConfigModelCopyWith<$Res>(_self.android, (value) {
    return _then(_self.copyWith(android: value));
  });
}/// Create a copy of BaseResponseModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AppConfigModelCopyWith<$Res> get ios {
  
  return $AppConfigModelCopyWith<$Res>(_self.ios, (value) {
    return _then(_self.copyWith(ios: value));
  });
}
}

// dart format on
