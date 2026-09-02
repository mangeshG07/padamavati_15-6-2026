// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'leave_response_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$LeaveResponseModel {

@JsonKey(name: 'total_count') int? get totalCount;@JsonKey(name: 'total_pages') int? get totalPages;@JsonKey(name: 'current_page') int? get currentPage;@JsonKey(name: 'per_page') int? get perPage;@JsonKey(name: 'leave_requests') List<LeaveRequestModel>? get leaveRequests;
/// Create a copy of LeaveResponseModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LeaveResponseModelCopyWith<LeaveResponseModel> get copyWith => _$LeaveResponseModelCopyWithImpl<LeaveResponseModel>(this as LeaveResponseModel, _$identity);

  /// Serializes this LeaveResponseModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LeaveResponseModel&&(identical(other.totalCount, totalCount) || other.totalCount == totalCount)&&(identical(other.totalPages, totalPages) || other.totalPages == totalPages)&&(identical(other.currentPage, currentPage) || other.currentPage == currentPage)&&(identical(other.perPage, perPage) || other.perPage == perPage)&&const DeepCollectionEquality().equals(other.leaveRequests, leaveRequests));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,totalCount,totalPages,currentPage,perPage,const DeepCollectionEquality().hash(leaveRequests));

@override
String toString() {
  return 'LeaveResponseModel(totalCount: $totalCount, totalPages: $totalPages, currentPage: $currentPage, perPage: $perPage, leaveRequests: $leaveRequests)';
}


}

/// @nodoc
abstract mixin class $LeaveResponseModelCopyWith<$Res>  {
  factory $LeaveResponseModelCopyWith(LeaveResponseModel value, $Res Function(LeaveResponseModel) _then) = _$LeaveResponseModelCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'total_count') int? totalCount,@JsonKey(name: 'total_pages') int? totalPages,@JsonKey(name: 'current_page') int? currentPage,@JsonKey(name: 'per_page') int? perPage,@JsonKey(name: 'leave_requests') List<LeaveRequestModel>? leaveRequests
});




}
/// @nodoc
class _$LeaveResponseModelCopyWithImpl<$Res>
    implements $LeaveResponseModelCopyWith<$Res> {
  _$LeaveResponseModelCopyWithImpl(this._self, this._then);

  final LeaveResponseModel _self;
  final $Res Function(LeaveResponseModel) _then;

/// Create a copy of LeaveResponseModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? totalCount = freezed,Object? totalPages = freezed,Object? currentPage = freezed,Object? perPage = freezed,Object? leaveRequests = freezed,}) {
  return _then(_self.copyWith(
totalCount: freezed == totalCount ? _self.totalCount : totalCount // ignore: cast_nullable_to_non_nullable
as int?,totalPages: freezed == totalPages ? _self.totalPages : totalPages // ignore: cast_nullable_to_non_nullable
as int?,currentPage: freezed == currentPage ? _self.currentPage : currentPage // ignore: cast_nullable_to_non_nullable
as int?,perPage: freezed == perPage ? _self.perPage : perPage // ignore: cast_nullable_to_non_nullable
as int?,leaveRequests: freezed == leaveRequests ? _self.leaveRequests : leaveRequests // ignore: cast_nullable_to_non_nullable
as List<LeaveRequestModel>?,
  ));
}

}


/// Adds pattern-matching-related methods to [LeaveResponseModel].
extension LeaveResponseModelPatterns on LeaveResponseModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _LeaveResponseModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _LeaveResponseModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _LeaveResponseModel value)  $default,){
final _that = this;
switch (_that) {
case _LeaveResponseModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _LeaveResponseModel value)?  $default,){
final _that = this;
switch (_that) {
case _LeaveResponseModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'total_count')  int? totalCount, @JsonKey(name: 'total_pages')  int? totalPages, @JsonKey(name: 'current_page')  int? currentPage, @JsonKey(name: 'per_page')  int? perPage, @JsonKey(name: 'leave_requests')  List<LeaveRequestModel>? leaveRequests)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _LeaveResponseModel() when $default != null:
return $default(_that.totalCount,_that.totalPages,_that.currentPage,_that.perPage,_that.leaveRequests);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'total_count')  int? totalCount, @JsonKey(name: 'total_pages')  int? totalPages, @JsonKey(name: 'current_page')  int? currentPage, @JsonKey(name: 'per_page')  int? perPage, @JsonKey(name: 'leave_requests')  List<LeaveRequestModel>? leaveRequests)  $default,) {final _that = this;
switch (_that) {
case _LeaveResponseModel():
return $default(_that.totalCount,_that.totalPages,_that.currentPage,_that.perPage,_that.leaveRequests);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'total_count')  int? totalCount, @JsonKey(name: 'total_pages')  int? totalPages, @JsonKey(name: 'current_page')  int? currentPage, @JsonKey(name: 'per_page')  int? perPage, @JsonKey(name: 'leave_requests')  List<LeaveRequestModel>? leaveRequests)?  $default,) {final _that = this;
switch (_that) {
case _LeaveResponseModel() when $default != null:
return $default(_that.totalCount,_that.totalPages,_that.currentPage,_that.perPage,_that.leaveRequests);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _LeaveResponseModel implements LeaveResponseModel {
  const _LeaveResponseModel({@JsonKey(name: 'total_count') this.totalCount, @JsonKey(name: 'total_pages') this.totalPages, @JsonKey(name: 'current_page') this.currentPage, @JsonKey(name: 'per_page') this.perPage, @JsonKey(name: 'leave_requests')   List<LeaveRequestModel>? leaveRequests}): _leaveRequests = leaveRequests;
  factory _LeaveResponseModel.fromJson(Map<String, dynamic> json) => _$LeaveResponseModelFromJson(json);

@override@JsonKey(name: 'total_count') final  int? totalCount;
@override@JsonKey(name: 'total_pages') final  int? totalPages;
@override@JsonKey(name: 'current_page') final  int? currentPage;
@override@JsonKey(name: 'per_page') final  int? perPage;
 final  List<LeaveRequestModel>? _leaveRequests;
@override@JsonKey(name: 'leave_requests') List<LeaveRequestModel>? get leaveRequests {
  final value = _leaveRequests;
  if (value == null) return null;
  if (_leaveRequests is EqualUnmodifiableListView) return _leaveRequests;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}


/// Create a copy of LeaveResponseModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$LeaveResponseModelCopyWith<_LeaveResponseModel> get copyWith => __$LeaveResponseModelCopyWithImpl<_LeaveResponseModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$LeaveResponseModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _LeaveResponseModel&&(identical(other.totalCount, totalCount) || other.totalCount == totalCount)&&(identical(other.totalPages, totalPages) || other.totalPages == totalPages)&&(identical(other.currentPage, currentPage) || other.currentPage == currentPage)&&(identical(other.perPage, perPage) || other.perPage == perPage)&&const DeepCollectionEquality().equals(other._leaveRequests, _leaveRequests));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,totalCount,totalPages,currentPage,perPage,const DeepCollectionEquality().hash(_leaveRequests));

@override
String toString() {
  return 'LeaveResponseModel(totalCount: $totalCount, totalPages: $totalPages, currentPage: $currentPage, perPage: $perPage, leaveRequests: $leaveRequests)';
}


}

/// @nodoc
abstract mixin class _$LeaveResponseModelCopyWith<$Res> implements $LeaveResponseModelCopyWith<$Res> {
  factory _$LeaveResponseModelCopyWith(_LeaveResponseModel value, $Res Function(_LeaveResponseModel) _then) = __$LeaveResponseModelCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'total_count') int? totalCount,@JsonKey(name: 'total_pages') int? totalPages,@JsonKey(name: 'current_page') int? currentPage,@JsonKey(name: 'per_page') int? perPage,@JsonKey(name: 'leave_requests') List<LeaveRequestModel>? leaveRequests
});




}
/// @nodoc
class __$LeaveResponseModelCopyWithImpl<$Res>
    implements _$LeaveResponseModelCopyWith<$Res> {
  __$LeaveResponseModelCopyWithImpl(this._self, this._then);

  final _LeaveResponseModel _self;
  final $Res Function(_LeaveResponseModel) _then;

/// Create a copy of LeaveResponseModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? totalCount = freezed,Object? totalPages = freezed,Object? currentPage = freezed,Object? perPage = freezed,Object? leaveRequests = freezed,}) {
  return _then(_LeaveResponseModel(
totalCount: freezed == totalCount ? _self.totalCount : totalCount // ignore: cast_nullable_to_non_nullable
as int?,totalPages: freezed == totalPages ? _self.totalPages : totalPages // ignore: cast_nullable_to_non_nullable
as int?,currentPage: freezed == currentPage ? _self.currentPage : currentPage // ignore: cast_nullable_to_non_nullable
as int?,perPage: freezed == perPage ? _self.perPage : perPage // ignore: cast_nullable_to_non_nullable
as int?,leaveRequests: freezed == leaveRequests ? _self._leaveRequests : leaveRequests // ignore: cast_nullable_to_non_nullable
as List<LeaveRequestModel>?,
  ));
}


}

// dart format on
