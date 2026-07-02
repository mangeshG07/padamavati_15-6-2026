// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'profile_response_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ProfileResponseModel {

 int? get id; String? get name;@JsonKey(name: 'mobile_no') String? get mobileNo;@JsonKey(name: 'per_address') String? get perAddress;@JsonKey(name: 'curr_address') String? get curAddress;@JsonKey(name: 'profile_image') String? get profileImage;@JsonKey(name: 'degree_id') int? get degreeId; String? get degree; String? get branch; String? get position;
/// Create a copy of ProfileResponseModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ProfileResponseModelCopyWith<ProfileResponseModel> get copyWith => _$ProfileResponseModelCopyWithImpl<ProfileResponseModel>(this as ProfileResponseModel, _$identity);

  /// Serializes this ProfileResponseModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ProfileResponseModel&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.mobileNo, mobileNo) || other.mobileNo == mobileNo)&&(identical(other.perAddress, perAddress) || other.perAddress == perAddress)&&(identical(other.curAddress, curAddress) || other.curAddress == curAddress)&&(identical(other.profileImage, profileImage) || other.profileImage == profileImage)&&(identical(other.degreeId, degreeId) || other.degreeId == degreeId)&&(identical(other.degree, degree) || other.degree == degree)&&(identical(other.branch, branch) || other.branch == branch)&&(identical(other.position, position) || other.position == position));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,mobileNo,perAddress,curAddress,profileImage,degreeId,degree,branch,position);

@override
String toString() {
  return 'ProfileResponseModel(id: $id, name: $name, mobileNo: $mobileNo, perAddress: $perAddress, curAddress: $curAddress, profileImage: $profileImage, degreeId: $degreeId, degree: $degree, branch: $branch, position: $position)';
}


}

/// @nodoc
abstract mixin class $ProfileResponseModelCopyWith<$Res>  {
  factory $ProfileResponseModelCopyWith(ProfileResponseModel value, $Res Function(ProfileResponseModel) _then) = _$ProfileResponseModelCopyWithImpl;
@useResult
$Res call({
 int? id, String? name,@JsonKey(name: 'mobile_no') String? mobileNo,@JsonKey(name: 'per_address') String? perAddress,@JsonKey(name: 'curr_address') String? curAddress,@JsonKey(name: 'profile_image') String? profileImage,@JsonKey(name: 'degree_id') int? degreeId, String? degree, String? branch, String? position
});




}
/// @nodoc
class _$ProfileResponseModelCopyWithImpl<$Res>
    implements $ProfileResponseModelCopyWith<$Res> {
  _$ProfileResponseModelCopyWithImpl(this._self, this._then);

  final ProfileResponseModel _self;
  final $Res Function(ProfileResponseModel) _then;

/// Create a copy of ProfileResponseModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? name = freezed,Object? mobileNo = freezed,Object? perAddress = freezed,Object? curAddress = freezed,Object? profileImage = freezed,Object? degreeId = freezed,Object? degree = freezed,Object? branch = freezed,Object? position = freezed,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,mobileNo: freezed == mobileNo ? _self.mobileNo : mobileNo // ignore: cast_nullable_to_non_nullable
as String?,perAddress: freezed == perAddress ? _self.perAddress : perAddress // ignore: cast_nullable_to_non_nullable
as String?,curAddress: freezed == curAddress ? _self.curAddress : curAddress // ignore: cast_nullable_to_non_nullable
as String?,profileImage: freezed == profileImage ? _self.profileImage : profileImage // ignore: cast_nullable_to_non_nullable
as String?,degreeId: freezed == degreeId ? _self.degreeId : degreeId // ignore: cast_nullable_to_non_nullable
as int?,degree: freezed == degree ? _self.degree : degree // ignore: cast_nullable_to_non_nullable
as String?,branch: freezed == branch ? _self.branch : branch // ignore: cast_nullable_to_non_nullable
as String?,position: freezed == position ? _self.position : position // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [ProfileResponseModel].
extension ProfileResponseModelPatterns on ProfileResponseModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ProfileResponseModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ProfileResponseModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ProfileResponseModel value)  $default,){
final _that = this;
switch (_that) {
case _ProfileResponseModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ProfileResponseModel value)?  $default,){
final _that = this;
switch (_that) {
case _ProfileResponseModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int? id,  String? name, @JsonKey(name: 'mobile_no')  String? mobileNo, @JsonKey(name: 'per_address')  String? perAddress, @JsonKey(name: 'curr_address')  String? curAddress, @JsonKey(name: 'profile_image')  String? profileImage, @JsonKey(name: 'degree_id')  int? degreeId,  String? degree,  String? branch,  String? position)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ProfileResponseModel() when $default != null:
return $default(_that.id,_that.name,_that.mobileNo,_that.perAddress,_that.curAddress,_that.profileImage,_that.degreeId,_that.degree,_that.branch,_that.position);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int? id,  String? name, @JsonKey(name: 'mobile_no')  String? mobileNo, @JsonKey(name: 'per_address')  String? perAddress, @JsonKey(name: 'curr_address')  String? curAddress, @JsonKey(name: 'profile_image')  String? profileImage, @JsonKey(name: 'degree_id')  int? degreeId,  String? degree,  String? branch,  String? position)  $default,) {final _that = this;
switch (_that) {
case _ProfileResponseModel():
return $default(_that.id,_that.name,_that.mobileNo,_that.perAddress,_that.curAddress,_that.profileImage,_that.degreeId,_that.degree,_that.branch,_that.position);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int? id,  String? name, @JsonKey(name: 'mobile_no')  String? mobileNo, @JsonKey(name: 'per_address')  String? perAddress, @JsonKey(name: 'curr_address')  String? curAddress, @JsonKey(name: 'profile_image')  String? profileImage, @JsonKey(name: 'degree_id')  int? degreeId,  String? degree,  String? branch,  String? position)?  $default,) {final _that = this;
switch (_that) {
case _ProfileResponseModel() when $default != null:
return $default(_that.id,_that.name,_that.mobileNo,_that.perAddress,_that.curAddress,_that.profileImage,_that.degreeId,_that.degree,_that.branch,_that.position);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ProfileResponseModel implements ProfileResponseModel {
  const _ProfileResponseModel({this.id, this.name, @JsonKey(name: 'mobile_no') this.mobileNo, @JsonKey(name: 'per_address') this.perAddress, @JsonKey(name: 'curr_address') this.curAddress, @JsonKey(name: 'profile_image') this.profileImage, @JsonKey(name: 'degree_id') this.degreeId, this.degree, this.branch, this.position});
  factory _ProfileResponseModel.fromJson(Map<String, dynamic> json) => _$ProfileResponseModelFromJson(json);

@override final  int? id;
@override final  String? name;
@override@JsonKey(name: 'mobile_no') final  String? mobileNo;
@override@JsonKey(name: 'per_address') final  String? perAddress;
@override@JsonKey(name: 'curr_address') final  String? curAddress;
@override@JsonKey(name: 'profile_image') final  String? profileImage;
@override@JsonKey(name: 'degree_id') final  int? degreeId;
@override final  String? degree;
@override final  String? branch;
@override final  String? position;

/// Create a copy of ProfileResponseModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ProfileResponseModelCopyWith<_ProfileResponseModel> get copyWith => __$ProfileResponseModelCopyWithImpl<_ProfileResponseModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ProfileResponseModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ProfileResponseModel&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.mobileNo, mobileNo) || other.mobileNo == mobileNo)&&(identical(other.perAddress, perAddress) || other.perAddress == perAddress)&&(identical(other.curAddress, curAddress) || other.curAddress == curAddress)&&(identical(other.profileImage, profileImage) || other.profileImage == profileImage)&&(identical(other.degreeId, degreeId) || other.degreeId == degreeId)&&(identical(other.degree, degree) || other.degree == degree)&&(identical(other.branch, branch) || other.branch == branch)&&(identical(other.position, position) || other.position == position));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,mobileNo,perAddress,curAddress,profileImage,degreeId,degree,branch,position);

@override
String toString() {
  return 'ProfileResponseModel(id: $id, name: $name, mobileNo: $mobileNo, perAddress: $perAddress, curAddress: $curAddress, profileImage: $profileImage, degreeId: $degreeId, degree: $degree, branch: $branch, position: $position)';
}


}

/// @nodoc
abstract mixin class _$ProfileResponseModelCopyWith<$Res> implements $ProfileResponseModelCopyWith<$Res> {
  factory _$ProfileResponseModelCopyWith(_ProfileResponseModel value, $Res Function(_ProfileResponseModel) _then) = __$ProfileResponseModelCopyWithImpl;
@override @useResult
$Res call({
 int? id, String? name,@JsonKey(name: 'mobile_no') String? mobileNo,@JsonKey(name: 'per_address') String? perAddress,@JsonKey(name: 'curr_address') String? curAddress,@JsonKey(name: 'profile_image') String? profileImage,@JsonKey(name: 'degree_id') int? degreeId, String? degree, String? branch, String? position
});




}
/// @nodoc
class __$ProfileResponseModelCopyWithImpl<$Res>
    implements _$ProfileResponseModelCopyWith<$Res> {
  __$ProfileResponseModelCopyWithImpl(this._self, this._then);

  final _ProfileResponseModel _self;
  final $Res Function(_ProfileResponseModel) _then;

/// Create a copy of ProfileResponseModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? name = freezed,Object? mobileNo = freezed,Object? perAddress = freezed,Object? curAddress = freezed,Object? profileImage = freezed,Object? degreeId = freezed,Object? degree = freezed,Object? branch = freezed,Object? position = freezed,}) {
  return _then(_ProfileResponseModel(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,mobileNo: freezed == mobileNo ? _self.mobileNo : mobileNo // ignore: cast_nullable_to_non_nullable
as String?,perAddress: freezed == perAddress ? _self.perAddress : perAddress // ignore: cast_nullable_to_non_nullable
as String?,curAddress: freezed == curAddress ? _self.curAddress : curAddress // ignore: cast_nullable_to_non_nullable
as String?,profileImage: freezed == profileImage ? _self.profileImage : profileImage // ignore: cast_nullable_to_non_nullable
as String?,degreeId: freezed == degreeId ? _self.degreeId : degreeId // ignore: cast_nullable_to_non_nullable
as int?,degree: freezed == degree ? _self.degree : degree // ignore: cast_nullable_to_non_nullable
as String?,branch: freezed == branch ? _self.branch : branch // ignore: cast_nullable_to_non_nullable
as String?,position: freezed == position ? _self.position : position // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
