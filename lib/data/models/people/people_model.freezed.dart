// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'people_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$PeopleModel {

 String? get code; String? get name;@JsonKey(name: 'app_id') int? get id;@JsonKey(name: 'due_amount') String? get dueAmount;@JsonKey(name: 'profile_image') String? get profileImage;@JsonKey(name: 'account_status') String? get status;@JsonKey(name: 'account_status_label') String? get statusLabel;
/// Create a copy of PeopleModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PeopleModelCopyWith<PeopleModel> get copyWith => _$PeopleModelCopyWithImpl<PeopleModel>(this as PeopleModel, _$identity);

  /// Serializes this PeopleModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PeopleModel&&(identical(other.code, code) || other.code == code)&&(identical(other.name, name) || other.name == name)&&(identical(other.id, id) || other.id == id)&&(identical(other.dueAmount, dueAmount) || other.dueAmount == dueAmount)&&(identical(other.profileImage, profileImage) || other.profileImage == profileImage)&&(identical(other.status, status) || other.status == status)&&(identical(other.statusLabel, statusLabel) || other.statusLabel == statusLabel));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,code,name,id,dueAmount,profileImage,status,statusLabel);

@override
String toString() {
  return 'PeopleModel(code: $code, name: $name, id: $id, dueAmount: $dueAmount, profileImage: $profileImage, status: $status, statusLabel: $statusLabel)';
}


}

/// @nodoc
abstract mixin class $PeopleModelCopyWith<$Res>  {
  factory $PeopleModelCopyWith(PeopleModel value, $Res Function(PeopleModel) _then) = _$PeopleModelCopyWithImpl;
@useResult
$Res call({
 String? code, String? name,@JsonKey(name: 'app_id') int? id,@JsonKey(name: 'due_amount') String? dueAmount,@JsonKey(name: 'profile_image') String? profileImage,@JsonKey(name: 'account_status') String? status,@JsonKey(name: 'account_status_label') String? statusLabel
});




}
/// @nodoc
class _$PeopleModelCopyWithImpl<$Res>
    implements $PeopleModelCopyWith<$Res> {
  _$PeopleModelCopyWithImpl(this._self, this._then);

  final PeopleModel _self;
  final $Res Function(PeopleModel) _then;

/// Create a copy of PeopleModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? code = freezed,Object? name = freezed,Object? id = freezed,Object? dueAmount = freezed,Object? profileImage = freezed,Object? status = freezed,Object? statusLabel = freezed,}) {
  return _then(_self.copyWith(
code: freezed == code ? _self.code : code // ignore: cast_nullable_to_non_nullable
as String?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,dueAmount: freezed == dueAmount ? _self.dueAmount : dueAmount // ignore: cast_nullable_to_non_nullable
as String?,profileImage: freezed == profileImage ? _self.profileImage : profileImage // ignore: cast_nullable_to_non_nullable
as String?,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String?,statusLabel: freezed == statusLabel ? _self.statusLabel : statusLabel // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [PeopleModel].
extension PeopleModelPatterns on PeopleModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PeopleModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PeopleModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PeopleModel value)  $default,){
final _that = this;
switch (_that) {
case _PeopleModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PeopleModel value)?  $default,){
final _that = this;
switch (_that) {
case _PeopleModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? code,  String? name, @JsonKey(name: 'app_id')  int? id, @JsonKey(name: 'due_amount')  String? dueAmount, @JsonKey(name: 'profile_image')  String? profileImage, @JsonKey(name: 'account_status')  String? status, @JsonKey(name: 'account_status_label')  String? statusLabel)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PeopleModel() when $default != null:
return $default(_that.code,_that.name,_that.id,_that.dueAmount,_that.profileImage,_that.status,_that.statusLabel);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? code,  String? name, @JsonKey(name: 'app_id')  int? id, @JsonKey(name: 'due_amount')  String? dueAmount, @JsonKey(name: 'profile_image')  String? profileImage, @JsonKey(name: 'account_status')  String? status, @JsonKey(name: 'account_status_label')  String? statusLabel)  $default,) {final _that = this;
switch (_that) {
case _PeopleModel():
return $default(_that.code,_that.name,_that.id,_that.dueAmount,_that.profileImage,_that.status,_that.statusLabel);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? code,  String? name, @JsonKey(name: 'app_id')  int? id, @JsonKey(name: 'due_amount')  String? dueAmount, @JsonKey(name: 'profile_image')  String? profileImage, @JsonKey(name: 'account_status')  String? status, @JsonKey(name: 'account_status_label')  String? statusLabel)?  $default,) {final _that = this;
switch (_that) {
case _PeopleModel() when $default != null:
return $default(_that.code,_that.name,_that.id,_that.dueAmount,_that.profileImage,_that.status,_that.statusLabel);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _PeopleModel implements PeopleModel {
  const _PeopleModel({this.code, this.name, @JsonKey(name: 'app_id') this.id, @JsonKey(name: 'due_amount') this.dueAmount, @JsonKey(name: 'profile_image') this.profileImage, @JsonKey(name: 'account_status') this.status, @JsonKey(name: 'account_status_label') this.statusLabel});
  factory _PeopleModel.fromJson(Map<String, dynamic> json) => _$PeopleModelFromJson(json);

@override final  String? code;
@override final  String? name;
@override@JsonKey(name: 'app_id') final  int? id;
@override@JsonKey(name: 'due_amount') final  String? dueAmount;
@override@JsonKey(name: 'profile_image') final  String? profileImage;
@override@JsonKey(name: 'account_status') final  String? status;
@override@JsonKey(name: 'account_status_label') final  String? statusLabel;

/// Create a copy of PeopleModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PeopleModelCopyWith<_PeopleModel> get copyWith => __$PeopleModelCopyWithImpl<_PeopleModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PeopleModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PeopleModel&&(identical(other.code, code) || other.code == code)&&(identical(other.name, name) || other.name == name)&&(identical(other.id, id) || other.id == id)&&(identical(other.dueAmount, dueAmount) || other.dueAmount == dueAmount)&&(identical(other.profileImage, profileImage) || other.profileImage == profileImage)&&(identical(other.status, status) || other.status == status)&&(identical(other.statusLabel, statusLabel) || other.statusLabel == statusLabel));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,code,name,id,dueAmount,profileImage,status,statusLabel);

@override
String toString() {
  return 'PeopleModel(code: $code, name: $name, id: $id, dueAmount: $dueAmount, profileImage: $profileImage, status: $status, statusLabel: $statusLabel)';
}


}

/// @nodoc
abstract mixin class _$PeopleModelCopyWith<$Res> implements $PeopleModelCopyWith<$Res> {
  factory _$PeopleModelCopyWith(_PeopleModel value, $Res Function(_PeopleModel) _then) = __$PeopleModelCopyWithImpl;
@override @useResult
$Res call({
 String? code, String? name,@JsonKey(name: 'app_id') int? id,@JsonKey(name: 'due_amount') String? dueAmount,@JsonKey(name: 'profile_image') String? profileImage,@JsonKey(name: 'account_status') String? status,@JsonKey(name: 'account_status_label') String? statusLabel
});




}
/// @nodoc
class __$PeopleModelCopyWithImpl<$Res>
    implements _$PeopleModelCopyWith<$Res> {
  __$PeopleModelCopyWithImpl(this._self, this._then);

  final _PeopleModel _self;
  final $Res Function(_PeopleModel) _then;

/// Create a copy of PeopleModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? code = freezed,Object? name = freezed,Object? id = freezed,Object? dueAmount = freezed,Object? profileImage = freezed,Object? status = freezed,Object? statusLabel = freezed,}) {
  return _then(_PeopleModel(
code: freezed == code ? _self.code : code // ignore: cast_nullable_to_non_nullable
as String?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,dueAmount: freezed == dueAmount ? _self.dueAmount : dueAmount // ignore: cast_nullable_to_non_nullable
as String?,profileImage: freezed == profileImage ? _self.profileImage : profileImage // ignore: cast_nullable_to_non_nullable
as String?,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String?,statusLabel: freezed == statusLabel ? _self.statusLabel : statusLabel // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
