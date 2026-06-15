// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'master_data_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$MasterDataModel {

 int get id; String get name; String? get address; String? get image;
/// Create a copy of MasterDataModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MasterDataModelCopyWith<MasterDataModel> get copyWith => _$MasterDataModelCopyWithImpl<MasterDataModel>(this as MasterDataModel, _$identity);

  /// Serializes this MasterDataModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MasterDataModel&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.address, address) || other.address == address)&&(identical(other.image, image) || other.image == image));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,address,image);

@override
String toString() {
  return 'MasterDataModel(id: $id, name: $name, address: $address, image: $image)';
}


}

/// @nodoc
abstract mixin class $MasterDataModelCopyWith<$Res>  {
  factory $MasterDataModelCopyWith(MasterDataModel value, $Res Function(MasterDataModel) _then) = _$MasterDataModelCopyWithImpl;
@useResult
$Res call({
 int id, String name, String? address, String? image
});




}
/// @nodoc
class _$MasterDataModelCopyWithImpl<$Res>
    implements $MasterDataModelCopyWith<$Res> {
  _$MasterDataModelCopyWithImpl(this._self, this._then);

  final MasterDataModel _self;
  final $Res Function(MasterDataModel) _then;

/// Create a copy of MasterDataModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,Object? address = freezed,Object? image = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,address: freezed == address ? _self.address : address // ignore: cast_nullable_to_non_nullable
as String?,image: freezed == image ? _self.image : image // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [MasterDataModel].
extension MasterDataModelPatterns on MasterDataModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _MasterDataModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _MasterDataModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _MasterDataModel value)  $default,){
final _that = this;
switch (_that) {
case _MasterDataModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _MasterDataModel value)?  $default,){
final _that = this;
switch (_that) {
case _MasterDataModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id,  String name,  String? address,  String? image)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _MasterDataModel() when $default != null:
return $default(_that.id,_that.name,_that.address,_that.image);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id,  String name,  String? address,  String? image)  $default,) {final _that = this;
switch (_that) {
case _MasterDataModel():
return $default(_that.id,_that.name,_that.address,_that.image);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id,  String name,  String? address,  String? image)?  $default,) {final _that = this;
switch (_that) {
case _MasterDataModel() when $default != null:
return $default(_that.id,_that.name,_that.address,_that.image);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _MasterDataModel implements MasterDataModel {
  const _MasterDataModel({required this.id, required this.name, this.address, this.image});
  factory _MasterDataModel.fromJson(Map<String, dynamic> json) => _$MasterDataModelFromJson(json);

@override final  int id;
@override final  String name;
@override final  String? address;
@override final  String? image;

/// Create a copy of MasterDataModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MasterDataModelCopyWith<_MasterDataModel> get copyWith => __$MasterDataModelCopyWithImpl<_MasterDataModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$MasterDataModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _MasterDataModel&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.address, address) || other.address == address)&&(identical(other.image, image) || other.image == image));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,address,image);

@override
String toString() {
  return 'MasterDataModel(id: $id, name: $name, address: $address, image: $image)';
}


}

/// @nodoc
abstract mixin class _$MasterDataModelCopyWith<$Res> implements $MasterDataModelCopyWith<$Res> {
  factory _$MasterDataModelCopyWith(_MasterDataModel value, $Res Function(_MasterDataModel) _then) = __$MasterDataModelCopyWithImpl;
@override @useResult
$Res call({
 int id, String name, String? address, String? image
});




}
/// @nodoc
class __$MasterDataModelCopyWithImpl<$Res>
    implements _$MasterDataModelCopyWith<$Res> {
  __$MasterDataModelCopyWithImpl(this._self, this._then);

  final _MasterDataModel _self;
  final $Res Function(_MasterDataModel) _then;

/// Create a copy of MasterDataModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? address = freezed,Object? image = freezed,}) {
  return _then(_MasterDataModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,address: freezed == address ? _self.address : address // ignore: cast_nullable_to_non_nullable
as String?,image: freezed == image ? _self.image : image // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
