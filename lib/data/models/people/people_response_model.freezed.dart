// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'people_response_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$PeopleResponseModel {

@JsonKey(name: 'total_count') int? get totalCount;@JsonKey(name: 'total_pages') int? get totalPages;@JsonKey(name: 'current_page') int? get currentPage;@JsonKey(name: 'per_page') int? get perPage; List<PeopleModel>? get users;
/// Create a copy of PeopleResponseModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PeopleResponseModelCopyWith<PeopleResponseModel> get copyWith => _$PeopleResponseModelCopyWithImpl<PeopleResponseModel>(this as PeopleResponseModel, _$identity);

  /// Serializes this PeopleResponseModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PeopleResponseModel&&(identical(other.totalCount, totalCount) || other.totalCount == totalCount)&&(identical(other.totalPages, totalPages) || other.totalPages == totalPages)&&(identical(other.currentPage, currentPage) || other.currentPage == currentPage)&&(identical(other.perPage, perPage) || other.perPage == perPage)&&const DeepCollectionEquality().equals(other.users, users));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,totalCount,totalPages,currentPage,perPage,const DeepCollectionEquality().hash(users));

@override
String toString() {
  return 'PeopleResponseModel(totalCount: $totalCount, totalPages: $totalPages, currentPage: $currentPage, perPage: $perPage, users: $users)';
}


}

/// @nodoc
abstract mixin class $PeopleResponseModelCopyWith<$Res>  {
  factory $PeopleResponseModelCopyWith(PeopleResponseModel value, $Res Function(PeopleResponseModel) _then) = _$PeopleResponseModelCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'total_count') int? totalCount,@JsonKey(name: 'total_pages') int? totalPages,@JsonKey(name: 'current_page') int? currentPage,@JsonKey(name: 'per_page') int? perPage, List<PeopleModel>? users
});




}
/// @nodoc
class _$PeopleResponseModelCopyWithImpl<$Res>
    implements $PeopleResponseModelCopyWith<$Res> {
  _$PeopleResponseModelCopyWithImpl(this._self, this._then);

  final PeopleResponseModel _self;
  final $Res Function(PeopleResponseModel) _then;

/// Create a copy of PeopleResponseModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? totalCount = freezed,Object? totalPages = freezed,Object? currentPage = freezed,Object? perPage = freezed,Object? users = freezed,}) {
  return _then(_self.copyWith(
totalCount: freezed == totalCount ? _self.totalCount : totalCount // ignore: cast_nullable_to_non_nullable
as int?,totalPages: freezed == totalPages ? _self.totalPages : totalPages // ignore: cast_nullable_to_non_nullable
as int?,currentPage: freezed == currentPage ? _self.currentPage : currentPage // ignore: cast_nullable_to_non_nullable
as int?,perPage: freezed == perPage ? _self.perPage : perPage // ignore: cast_nullable_to_non_nullable
as int?,users: freezed == users ? _self.users : users // ignore: cast_nullable_to_non_nullable
as List<PeopleModel>?,
  ));
}

}


/// Adds pattern-matching-related methods to [PeopleResponseModel].
extension PeopleResponseModelPatterns on PeopleResponseModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PeopleResponseModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PeopleResponseModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PeopleResponseModel value)  $default,){
final _that = this;
switch (_that) {
case _PeopleResponseModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PeopleResponseModel value)?  $default,){
final _that = this;
switch (_that) {
case _PeopleResponseModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'total_count')  int? totalCount, @JsonKey(name: 'total_pages')  int? totalPages, @JsonKey(name: 'current_page')  int? currentPage, @JsonKey(name: 'per_page')  int? perPage,  List<PeopleModel>? users)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PeopleResponseModel() when $default != null:
return $default(_that.totalCount,_that.totalPages,_that.currentPage,_that.perPage,_that.users);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'total_count')  int? totalCount, @JsonKey(name: 'total_pages')  int? totalPages, @JsonKey(name: 'current_page')  int? currentPage, @JsonKey(name: 'per_page')  int? perPage,  List<PeopleModel>? users)  $default,) {final _that = this;
switch (_that) {
case _PeopleResponseModel():
return $default(_that.totalCount,_that.totalPages,_that.currentPage,_that.perPage,_that.users);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'total_count')  int? totalCount, @JsonKey(name: 'total_pages')  int? totalPages, @JsonKey(name: 'current_page')  int? currentPage, @JsonKey(name: 'per_page')  int? perPage,  List<PeopleModel>? users)?  $default,) {final _that = this;
switch (_that) {
case _PeopleResponseModel() when $default != null:
return $default(_that.totalCount,_that.totalPages,_that.currentPage,_that.perPage,_that.users);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _PeopleResponseModel implements PeopleResponseModel {
  const _PeopleResponseModel({@JsonKey(name: 'total_count') this.totalCount, @JsonKey(name: 'total_pages') this.totalPages, @JsonKey(name: 'current_page') this.currentPage, @JsonKey(name: 'per_page') this.perPage, final  List<PeopleModel>? users}): _users = users;
  factory _PeopleResponseModel.fromJson(Map<String, dynamic> json) => _$PeopleResponseModelFromJson(json);

@override@JsonKey(name: 'total_count') final  int? totalCount;
@override@JsonKey(name: 'total_pages') final  int? totalPages;
@override@JsonKey(name: 'current_page') final  int? currentPage;
@override@JsonKey(name: 'per_page') final  int? perPage;
 final  List<PeopleModel>? _users;
@override List<PeopleModel>? get users {
  final value = _users;
  if (value == null) return null;
  if (_users is EqualUnmodifiableListView) return _users;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}


/// Create a copy of PeopleResponseModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PeopleResponseModelCopyWith<_PeopleResponseModel> get copyWith => __$PeopleResponseModelCopyWithImpl<_PeopleResponseModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PeopleResponseModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PeopleResponseModel&&(identical(other.totalCount, totalCount) || other.totalCount == totalCount)&&(identical(other.totalPages, totalPages) || other.totalPages == totalPages)&&(identical(other.currentPage, currentPage) || other.currentPage == currentPage)&&(identical(other.perPage, perPage) || other.perPage == perPage)&&const DeepCollectionEquality().equals(other._users, _users));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,totalCount,totalPages,currentPage,perPage,const DeepCollectionEquality().hash(_users));

@override
String toString() {
  return 'PeopleResponseModel(totalCount: $totalCount, totalPages: $totalPages, currentPage: $currentPage, perPage: $perPage, users: $users)';
}


}

/// @nodoc
abstract mixin class _$PeopleResponseModelCopyWith<$Res> implements $PeopleResponseModelCopyWith<$Res> {
  factory _$PeopleResponseModelCopyWith(_PeopleResponseModel value, $Res Function(_PeopleResponseModel) _then) = __$PeopleResponseModelCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'total_count') int? totalCount,@JsonKey(name: 'total_pages') int? totalPages,@JsonKey(name: 'current_page') int? currentPage,@JsonKey(name: 'per_page') int? perPage, List<PeopleModel>? users
});




}
/// @nodoc
class __$PeopleResponseModelCopyWithImpl<$Res>
    implements _$PeopleResponseModelCopyWith<$Res> {
  __$PeopleResponseModelCopyWithImpl(this._self, this._then);

  final _PeopleResponseModel _self;
  final $Res Function(_PeopleResponseModel) _then;

/// Create a copy of PeopleResponseModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? totalCount = freezed,Object? totalPages = freezed,Object? currentPage = freezed,Object? perPage = freezed,Object? users = freezed,}) {
  return _then(_PeopleResponseModel(
totalCount: freezed == totalCount ? _self.totalCount : totalCount // ignore: cast_nullable_to_non_nullable
as int?,totalPages: freezed == totalPages ? _self.totalPages : totalPages // ignore: cast_nullable_to_non_nullable
as int?,currentPage: freezed == currentPage ? _self.currentPage : currentPage // ignore: cast_nullable_to_non_nullable
as int?,perPage: freezed == perPage ? _self.perPage : perPage // ignore: cast_nullable_to_non_nullable
as int?,users: freezed == users ? _self._users : users // ignore: cast_nullable_to_non_nullable
as List<PeopleModel>?,
  ));
}


}

// dart format on
