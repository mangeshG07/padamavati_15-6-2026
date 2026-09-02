// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'scanned_response_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ScannedResponseModel {

@JsonKey(name: 'mess_time') String? get messTime;@JsonKey(name: 'total_count') int? get totalCount;@JsonKey(name: 'total_pages') int? get totalPages;@JsonKey(name: 'current_page') int? get currentPage;@JsonKey(name: 'per_page') int? get perPage;@JsonKey(name: 'scanned_users') List<ScannedUserModel>? get scannedUsers;
/// Create a copy of ScannedResponseModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ScannedResponseModelCopyWith<ScannedResponseModel> get copyWith => _$ScannedResponseModelCopyWithImpl<ScannedResponseModel>(this as ScannedResponseModel, _$identity);

  /// Serializes this ScannedResponseModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ScannedResponseModel&&(identical(other.messTime, messTime) || other.messTime == messTime)&&(identical(other.totalCount, totalCount) || other.totalCount == totalCount)&&(identical(other.totalPages, totalPages) || other.totalPages == totalPages)&&(identical(other.currentPage, currentPage) || other.currentPage == currentPage)&&(identical(other.perPage, perPage) || other.perPage == perPage)&&const DeepCollectionEquality().equals(other.scannedUsers, scannedUsers));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,messTime,totalCount,totalPages,currentPage,perPage,const DeepCollectionEquality().hash(scannedUsers));

@override
String toString() {
  return 'ScannedResponseModel(messTime: $messTime, totalCount: $totalCount, totalPages: $totalPages, currentPage: $currentPage, perPage: $perPage, scannedUsers: $scannedUsers)';
}


}

/// @nodoc
abstract mixin class $ScannedResponseModelCopyWith<$Res>  {
  factory $ScannedResponseModelCopyWith(ScannedResponseModel value, $Res Function(ScannedResponseModel) _then) = _$ScannedResponseModelCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'mess_time') String? messTime,@JsonKey(name: 'total_count') int? totalCount,@JsonKey(name: 'total_pages') int? totalPages,@JsonKey(name: 'current_page') int? currentPage,@JsonKey(name: 'per_page') int? perPage,@JsonKey(name: 'scanned_users') List<ScannedUserModel>? scannedUsers
});




}
/// @nodoc
class _$ScannedResponseModelCopyWithImpl<$Res>
    implements $ScannedResponseModelCopyWith<$Res> {
  _$ScannedResponseModelCopyWithImpl(this._self, this._then);

  final ScannedResponseModel _self;
  final $Res Function(ScannedResponseModel) _then;

/// Create a copy of ScannedResponseModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? messTime = freezed,Object? totalCount = freezed,Object? totalPages = freezed,Object? currentPage = freezed,Object? perPage = freezed,Object? scannedUsers = freezed,}) {
  return _then(_self.copyWith(
messTime: freezed == messTime ? _self.messTime : messTime // ignore: cast_nullable_to_non_nullable
as String?,totalCount: freezed == totalCount ? _self.totalCount : totalCount // ignore: cast_nullable_to_non_nullable
as int?,totalPages: freezed == totalPages ? _self.totalPages : totalPages // ignore: cast_nullable_to_non_nullable
as int?,currentPage: freezed == currentPage ? _self.currentPage : currentPage // ignore: cast_nullable_to_non_nullable
as int?,perPage: freezed == perPage ? _self.perPage : perPage // ignore: cast_nullable_to_non_nullable
as int?,scannedUsers: freezed == scannedUsers ? _self.scannedUsers : scannedUsers // ignore: cast_nullable_to_non_nullable
as List<ScannedUserModel>?,
  ));
}

}


/// Adds pattern-matching-related methods to [ScannedResponseModel].
extension ScannedResponseModelPatterns on ScannedResponseModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ScannedResponseModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ScannedResponseModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ScannedResponseModel value)  $default,){
final _that = this;
switch (_that) {
case _ScannedResponseModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ScannedResponseModel value)?  $default,){
final _that = this;
switch (_that) {
case _ScannedResponseModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'mess_time')  String? messTime, @JsonKey(name: 'total_count')  int? totalCount, @JsonKey(name: 'total_pages')  int? totalPages, @JsonKey(name: 'current_page')  int? currentPage, @JsonKey(name: 'per_page')  int? perPage, @JsonKey(name: 'scanned_users')  List<ScannedUserModel>? scannedUsers)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ScannedResponseModel() when $default != null:
return $default(_that.messTime,_that.totalCount,_that.totalPages,_that.currentPage,_that.perPage,_that.scannedUsers);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'mess_time')  String? messTime, @JsonKey(name: 'total_count')  int? totalCount, @JsonKey(name: 'total_pages')  int? totalPages, @JsonKey(name: 'current_page')  int? currentPage, @JsonKey(name: 'per_page')  int? perPage, @JsonKey(name: 'scanned_users')  List<ScannedUserModel>? scannedUsers)  $default,) {final _that = this;
switch (_that) {
case _ScannedResponseModel():
return $default(_that.messTime,_that.totalCount,_that.totalPages,_that.currentPage,_that.perPage,_that.scannedUsers);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'mess_time')  String? messTime, @JsonKey(name: 'total_count')  int? totalCount, @JsonKey(name: 'total_pages')  int? totalPages, @JsonKey(name: 'current_page')  int? currentPage, @JsonKey(name: 'per_page')  int? perPage, @JsonKey(name: 'scanned_users')  List<ScannedUserModel>? scannedUsers)?  $default,) {final _that = this;
switch (_that) {
case _ScannedResponseModel() when $default != null:
return $default(_that.messTime,_that.totalCount,_that.totalPages,_that.currentPage,_that.perPage,_that.scannedUsers);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ScannedResponseModel implements ScannedResponseModel {
  const _ScannedResponseModel({@JsonKey(name: 'mess_time') this.messTime, @JsonKey(name: 'total_count') this.totalCount, @JsonKey(name: 'total_pages') this.totalPages, @JsonKey(name: 'current_page') this.currentPage, @JsonKey(name: 'per_page') this.perPage, @JsonKey(name: 'scanned_users')   List<ScannedUserModel>? scannedUsers}): _scannedUsers = scannedUsers;
  factory _ScannedResponseModel.fromJson(Map<String, dynamic> json) => _$ScannedResponseModelFromJson(json);

@override@JsonKey(name: 'mess_time') final  String? messTime;
@override@JsonKey(name: 'total_count') final  int? totalCount;
@override@JsonKey(name: 'total_pages') final  int? totalPages;
@override@JsonKey(name: 'current_page') final  int? currentPage;
@override@JsonKey(name: 'per_page') final  int? perPage;
 final  List<ScannedUserModel>? _scannedUsers;
@override@JsonKey(name: 'scanned_users') List<ScannedUserModel>? get scannedUsers {
  final value = _scannedUsers;
  if (value == null) return null;
  if (_scannedUsers is EqualUnmodifiableListView) return _scannedUsers;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}


/// Create a copy of ScannedResponseModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ScannedResponseModelCopyWith<_ScannedResponseModel> get copyWith => __$ScannedResponseModelCopyWithImpl<_ScannedResponseModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ScannedResponseModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ScannedResponseModel&&(identical(other.messTime, messTime) || other.messTime == messTime)&&(identical(other.totalCount, totalCount) || other.totalCount == totalCount)&&(identical(other.totalPages, totalPages) || other.totalPages == totalPages)&&(identical(other.currentPage, currentPage) || other.currentPage == currentPage)&&(identical(other.perPage, perPage) || other.perPage == perPage)&&const DeepCollectionEquality().equals(other._scannedUsers, _scannedUsers));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,messTime,totalCount,totalPages,currentPage,perPage,const DeepCollectionEquality().hash(_scannedUsers));

@override
String toString() {
  return 'ScannedResponseModel(messTime: $messTime, totalCount: $totalCount, totalPages: $totalPages, currentPage: $currentPage, perPage: $perPage, scannedUsers: $scannedUsers)';
}


}

/// @nodoc
abstract mixin class _$ScannedResponseModelCopyWith<$Res> implements $ScannedResponseModelCopyWith<$Res> {
  factory _$ScannedResponseModelCopyWith(_ScannedResponseModel value, $Res Function(_ScannedResponseModel) _then) = __$ScannedResponseModelCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'mess_time') String? messTime,@JsonKey(name: 'total_count') int? totalCount,@JsonKey(name: 'total_pages') int? totalPages,@JsonKey(name: 'current_page') int? currentPage,@JsonKey(name: 'per_page') int? perPage,@JsonKey(name: 'scanned_users') List<ScannedUserModel>? scannedUsers
});




}
/// @nodoc
class __$ScannedResponseModelCopyWithImpl<$Res>
    implements _$ScannedResponseModelCopyWith<$Res> {
  __$ScannedResponseModelCopyWithImpl(this._self, this._then);

  final _ScannedResponseModel _self;
  final $Res Function(_ScannedResponseModel) _then;

/// Create a copy of ScannedResponseModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? messTime = freezed,Object? totalCount = freezed,Object? totalPages = freezed,Object? currentPage = freezed,Object? perPage = freezed,Object? scannedUsers = freezed,}) {
  return _then(_ScannedResponseModel(
messTime: freezed == messTime ? _self.messTime : messTime // ignore: cast_nullable_to_non_nullable
as String?,totalCount: freezed == totalCount ? _self.totalCount : totalCount // ignore: cast_nullable_to_non_nullable
as int?,totalPages: freezed == totalPages ? _self.totalPages : totalPages // ignore: cast_nullable_to_non_nullable
as int?,currentPage: freezed == currentPage ? _self.currentPage : currentPage // ignore: cast_nullable_to_non_nullable
as int?,perPage: freezed == perPage ? _self.perPage : perPage // ignore: cast_nullable_to_non_nullable
as int?,scannedUsers: freezed == scannedUsers ? _self._scannedUsers : scannedUsers // ignore: cast_nullable_to_non_nullable
as List<ScannedUserModel>?,
  ));
}


}

// dart format on
