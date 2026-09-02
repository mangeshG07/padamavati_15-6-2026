// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'requests_response_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$RequestsResponseModel {

@JsonKey(name: 'type') String? get type;@JsonKey(name: 'total_count') int? get totalCount;@JsonKey(name: 'total_pages') int? get totalPages;@JsonKey(name: 'current_page') int? get currentPage;@JsonKey(name: 'per_page') int? get perPage;@JsonKey(name: 'requests') List<RequestUserModel>? get request;
/// Create a copy of RequestsResponseModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RequestsResponseModelCopyWith<RequestsResponseModel> get copyWith => _$RequestsResponseModelCopyWithImpl<RequestsResponseModel>(this as RequestsResponseModel, _$identity);

  /// Serializes this RequestsResponseModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RequestsResponseModel&&(identical(other.type, type) || other.type == type)&&(identical(other.totalCount, totalCount) || other.totalCount == totalCount)&&(identical(other.totalPages, totalPages) || other.totalPages == totalPages)&&(identical(other.currentPage, currentPage) || other.currentPage == currentPage)&&(identical(other.perPage, perPage) || other.perPage == perPage)&&const DeepCollectionEquality().equals(other.request, request));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,type,totalCount,totalPages,currentPage,perPage,const DeepCollectionEquality().hash(request));

@override
String toString() {
  return 'RequestsResponseModel(type: $type, totalCount: $totalCount, totalPages: $totalPages, currentPage: $currentPage, perPage: $perPage, request: $request)';
}


}

/// @nodoc
abstract mixin class $RequestsResponseModelCopyWith<$Res>  {
  factory $RequestsResponseModelCopyWith(RequestsResponseModel value, $Res Function(RequestsResponseModel) _then) = _$RequestsResponseModelCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'type') String? type,@JsonKey(name: 'total_count') int? totalCount,@JsonKey(name: 'total_pages') int? totalPages,@JsonKey(name: 'current_page') int? currentPage,@JsonKey(name: 'per_page') int? perPage,@JsonKey(name: 'requests') List<RequestUserModel>? request
});




}
/// @nodoc
class _$RequestsResponseModelCopyWithImpl<$Res>
    implements $RequestsResponseModelCopyWith<$Res> {
  _$RequestsResponseModelCopyWithImpl(this._self, this._then);

  final RequestsResponseModel _self;
  final $Res Function(RequestsResponseModel) _then;

/// Create a copy of RequestsResponseModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? type = freezed,Object? totalCount = freezed,Object? totalPages = freezed,Object? currentPage = freezed,Object? perPage = freezed,Object? request = freezed,}) {
  return _then(_self.copyWith(
type: freezed == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String?,totalCount: freezed == totalCount ? _self.totalCount : totalCount // ignore: cast_nullable_to_non_nullable
as int?,totalPages: freezed == totalPages ? _self.totalPages : totalPages // ignore: cast_nullable_to_non_nullable
as int?,currentPage: freezed == currentPage ? _self.currentPage : currentPage // ignore: cast_nullable_to_non_nullable
as int?,perPage: freezed == perPage ? _self.perPage : perPage // ignore: cast_nullable_to_non_nullable
as int?,request: freezed == request ? _self.request : request // ignore: cast_nullable_to_non_nullable
as List<RequestUserModel>?,
  ));
}

}


/// Adds pattern-matching-related methods to [RequestsResponseModel].
extension RequestsResponseModelPatterns on RequestsResponseModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _RequestsResponseModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _RequestsResponseModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _RequestsResponseModel value)  $default,){
final _that = this;
switch (_that) {
case _RequestsResponseModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _RequestsResponseModel value)?  $default,){
final _that = this;
switch (_that) {
case _RequestsResponseModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'type')  String? type, @JsonKey(name: 'total_count')  int? totalCount, @JsonKey(name: 'total_pages')  int? totalPages, @JsonKey(name: 'current_page')  int? currentPage, @JsonKey(name: 'per_page')  int? perPage, @JsonKey(name: 'requests')  List<RequestUserModel>? request)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _RequestsResponseModel() when $default != null:
return $default(_that.type,_that.totalCount,_that.totalPages,_that.currentPage,_that.perPage,_that.request);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'type')  String? type, @JsonKey(name: 'total_count')  int? totalCount, @JsonKey(name: 'total_pages')  int? totalPages, @JsonKey(name: 'current_page')  int? currentPage, @JsonKey(name: 'per_page')  int? perPage, @JsonKey(name: 'requests')  List<RequestUserModel>? request)  $default,) {final _that = this;
switch (_that) {
case _RequestsResponseModel():
return $default(_that.type,_that.totalCount,_that.totalPages,_that.currentPage,_that.perPage,_that.request);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'type')  String? type, @JsonKey(name: 'total_count')  int? totalCount, @JsonKey(name: 'total_pages')  int? totalPages, @JsonKey(name: 'current_page')  int? currentPage, @JsonKey(name: 'per_page')  int? perPage, @JsonKey(name: 'requests')  List<RequestUserModel>? request)?  $default,) {final _that = this;
switch (_that) {
case _RequestsResponseModel() when $default != null:
return $default(_that.type,_that.totalCount,_that.totalPages,_that.currentPage,_that.perPage,_that.request);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _RequestsResponseModel implements RequestsResponseModel {
  const _RequestsResponseModel({@JsonKey(name: 'type') this.type, @JsonKey(name: 'total_count') this.totalCount, @JsonKey(name: 'total_pages') this.totalPages, @JsonKey(name: 'current_page') this.currentPage, @JsonKey(name: 'per_page') this.perPage, @JsonKey(name: 'requests')   List<RequestUserModel>? request}): _request = request;
  factory _RequestsResponseModel.fromJson(Map<String, dynamic> json) => _$RequestsResponseModelFromJson(json);

@override@JsonKey(name: 'type') final  String? type;
@override@JsonKey(name: 'total_count') final  int? totalCount;
@override@JsonKey(name: 'total_pages') final  int? totalPages;
@override@JsonKey(name: 'current_page') final  int? currentPage;
@override@JsonKey(name: 'per_page') final  int? perPage;
 final  List<RequestUserModel>? _request;
@override@JsonKey(name: 'requests') List<RequestUserModel>? get request {
  final value = _request;
  if (value == null) return null;
  if (_request is EqualUnmodifiableListView) return _request;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}


/// Create a copy of RequestsResponseModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$RequestsResponseModelCopyWith<_RequestsResponseModel> get copyWith => __$RequestsResponseModelCopyWithImpl<_RequestsResponseModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$RequestsResponseModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _RequestsResponseModel&&(identical(other.type, type) || other.type == type)&&(identical(other.totalCount, totalCount) || other.totalCount == totalCount)&&(identical(other.totalPages, totalPages) || other.totalPages == totalPages)&&(identical(other.currentPage, currentPage) || other.currentPage == currentPage)&&(identical(other.perPage, perPage) || other.perPage == perPage)&&const DeepCollectionEquality().equals(other._request, _request));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,type,totalCount,totalPages,currentPage,perPage,const DeepCollectionEquality().hash(_request));

@override
String toString() {
  return 'RequestsResponseModel(type: $type, totalCount: $totalCount, totalPages: $totalPages, currentPage: $currentPage, perPage: $perPage, request: $request)';
}


}

/// @nodoc
abstract mixin class _$RequestsResponseModelCopyWith<$Res> implements $RequestsResponseModelCopyWith<$Res> {
  factory _$RequestsResponseModelCopyWith(_RequestsResponseModel value, $Res Function(_RequestsResponseModel) _then) = __$RequestsResponseModelCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'type') String? type,@JsonKey(name: 'total_count') int? totalCount,@JsonKey(name: 'total_pages') int? totalPages,@JsonKey(name: 'current_page') int? currentPage,@JsonKey(name: 'per_page') int? perPage,@JsonKey(name: 'requests') List<RequestUserModel>? request
});




}
/// @nodoc
class __$RequestsResponseModelCopyWithImpl<$Res>
    implements _$RequestsResponseModelCopyWith<$Res> {
  __$RequestsResponseModelCopyWithImpl(this._self, this._then);

  final _RequestsResponseModel _self;
  final $Res Function(_RequestsResponseModel) _then;

/// Create a copy of RequestsResponseModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? type = freezed,Object? totalCount = freezed,Object? totalPages = freezed,Object? currentPage = freezed,Object? perPage = freezed,Object? request = freezed,}) {
  return _then(_RequestsResponseModel(
type: freezed == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String?,totalCount: freezed == totalCount ? _self.totalCount : totalCount // ignore: cast_nullable_to_non_nullable
as int?,totalPages: freezed == totalPages ? _self.totalPages : totalPages // ignore: cast_nullable_to_non_nullable
as int?,currentPage: freezed == currentPage ? _self.currentPage : currentPage // ignore: cast_nullable_to_non_nullable
as int?,perPage: freezed == perPage ? _self.perPage : perPage // ignore: cast_nullable_to_non_nullable
as int?,request: freezed == request ? _self._request : request // ignore: cast_nullable_to_non_nullable
as List<RequestUserModel>?,
  ));
}


}

// dart format on
