// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'expire_res_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ExpireResponseModel {

@JsonKey(name: 'total_count') int? get totalCount;@JsonKey(name: 'total_pages') int? get totalPages;@JsonKey(name: 'current_page') int? get currentPage;@JsonKey(name: 'per_page') int? get perPage;@JsonKey(name: 'expired_qrs') List<ExpireQrModel>? get qrList;
/// Create a copy of ExpireResponseModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ExpireResponseModelCopyWith<ExpireResponseModel> get copyWith => _$ExpireResponseModelCopyWithImpl<ExpireResponseModel>(this as ExpireResponseModel, _$identity);

  /// Serializes this ExpireResponseModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ExpireResponseModel&&(identical(other.totalCount, totalCount) || other.totalCount == totalCount)&&(identical(other.totalPages, totalPages) || other.totalPages == totalPages)&&(identical(other.currentPage, currentPage) || other.currentPage == currentPage)&&(identical(other.perPage, perPage) || other.perPage == perPage)&&const DeepCollectionEquality().equals(other.qrList, qrList));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,totalCount,totalPages,currentPage,perPage,const DeepCollectionEquality().hash(qrList));

@override
String toString() {
  return 'ExpireResponseModel(totalCount: $totalCount, totalPages: $totalPages, currentPage: $currentPage, perPage: $perPage, qrList: $qrList)';
}


}

/// @nodoc
abstract mixin class $ExpireResponseModelCopyWith<$Res>  {
  factory $ExpireResponseModelCopyWith(ExpireResponseModel value, $Res Function(ExpireResponseModel) _then) = _$ExpireResponseModelCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'total_count') int? totalCount,@JsonKey(name: 'total_pages') int? totalPages,@JsonKey(name: 'current_page') int? currentPage,@JsonKey(name: 'per_page') int? perPage,@JsonKey(name: 'expired_qrs') List<ExpireQrModel>? qrList
});




}
/// @nodoc
class _$ExpireResponseModelCopyWithImpl<$Res>
    implements $ExpireResponseModelCopyWith<$Res> {
  _$ExpireResponseModelCopyWithImpl(this._self, this._then);

  final ExpireResponseModel _self;
  final $Res Function(ExpireResponseModel) _then;

/// Create a copy of ExpireResponseModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? totalCount = freezed,Object? totalPages = freezed,Object? currentPage = freezed,Object? perPage = freezed,Object? qrList = freezed,}) {
  return _then(_self.copyWith(
totalCount: freezed == totalCount ? _self.totalCount : totalCount // ignore: cast_nullable_to_non_nullable
as int?,totalPages: freezed == totalPages ? _self.totalPages : totalPages // ignore: cast_nullable_to_non_nullable
as int?,currentPage: freezed == currentPage ? _self.currentPage : currentPage // ignore: cast_nullable_to_non_nullable
as int?,perPage: freezed == perPage ? _self.perPage : perPage // ignore: cast_nullable_to_non_nullable
as int?,qrList: freezed == qrList ? _self.qrList : qrList // ignore: cast_nullable_to_non_nullable
as List<ExpireQrModel>?,
  ));
}

}


/// Adds pattern-matching-related methods to [ExpireResponseModel].
extension ExpireResponseModelPatterns on ExpireResponseModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ExpireResponseModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ExpireResponseModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ExpireResponseModel value)  $default,){
final _that = this;
switch (_that) {
case _ExpireResponseModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ExpireResponseModel value)?  $default,){
final _that = this;
switch (_that) {
case _ExpireResponseModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'total_count')  int? totalCount, @JsonKey(name: 'total_pages')  int? totalPages, @JsonKey(name: 'current_page')  int? currentPage, @JsonKey(name: 'per_page')  int? perPage, @JsonKey(name: 'expired_qrs')  List<ExpireQrModel>? qrList)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ExpireResponseModel() when $default != null:
return $default(_that.totalCount,_that.totalPages,_that.currentPage,_that.perPage,_that.qrList);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'total_count')  int? totalCount, @JsonKey(name: 'total_pages')  int? totalPages, @JsonKey(name: 'current_page')  int? currentPage, @JsonKey(name: 'per_page')  int? perPage, @JsonKey(name: 'expired_qrs')  List<ExpireQrModel>? qrList)  $default,) {final _that = this;
switch (_that) {
case _ExpireResponseModel():
return $default(_that.totalCount,_that.totalPages,_that.currentPage,_that.perPage,_that.qrList);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'total_count')  int? totalCount, @JsonKey(name: 'total_pages')  int? totalPages, @JsonKey(name: 'current_page')  int? currentPage, @JsonKey(name: 'per_page')  int? perPage, @JsonKey(name: 'expired_qrs')  List<ExpireQrModel>? qrList)?  $default,) {final _that = this;
switch (_that) {
case _ExpireResponseModel() when $default != null:
return $default(_that.totalCount,_that.totalPages,_that.currentPage,_that.perPage,_that.qrList);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ExpireResponseModel implements ExpireResponseModel {
  const _ExpireResponseModel({@JsonKey(name: 'total_count') this.totalCount, @JsonKey(name: 'total_pages') this.totalPages, @JsonKey(name: 'current_page') this.currentPage, @JsonKey(name: 'per_page') this.perPage, @JsonKey(name: 'expired_qrs')   List<ExpireQrModel>? qrList}): _qrList = qrList;
  factory _ExpireResponseModel.fromJson(Map<String, dynamic> json) => _$ExpireResponseModelFromJson(json);

@override@JsonKey(name: 'total_count') final  int? totalCount;
@override@JsonKey(name: 'total_pages') final  int? totalPages;
@override@JsonKey(name: 'current_page') final  int? currentPage;
@override@JsonKey(name: 'per_page') final  int? perPage;
 final  List<ExpireQrModel>? _qrList;
@override@JsonKey(name: 'expired_qrs') List<ExpireQrModel>? get qrList {
  final value = _qrList;
  if (value == null) return null;
  if (_qrList is EqualUnmodifiableListView) return _qrList;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}


/// Create a copy of ExpireResponseModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ExpireResponseModelCopyWith<_ExpireResponseModel> get copyWith => __$ExpireResponseModelCopyWithImpl<_ExpireResponseModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ExpireResponseModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ExpireResponseModel&&(identical(other.totalCount, totalCount) || other.totalCount == totalCount)&&(identical(other.totalPages, totalPages) || other.totalPages == totalPages)&&(identical(other.currentPage, currentPage) || other.currentPage == currentPage)&&(identical(other.perPage, perPage) || other.perPage == perPage)&&const DeepCollectionEquality().equals(other._qrList, _qrList));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,totalCount,totalPages,currentPage,perPage,const DeepCollectionEquality().hash(_qrList));

@override
String toString() {
  return 'ExpireResponseModel(totalCount: $totalCount, totalPages: $totalPages, currentPage: $currentPage, perPage: $perPage, qrList: $qrList)';
}


}

/// @nodoc
abstract mixin class _$ExpireResponseModelCopyWith<$Res> implements $ExpireResponseModelCopyWith<$Res> {
  factory _$ExpireResponseModelCopyWith(_ExpireResponseModel value, $Res Function(_ExpireResponseModel) _then) = __$ExpireResponseModelCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'total_count') int? totalCount,@JsonKey(name: 'total_pages') int? totalPages,@JsonKey(name: 'current_page') int? currentPage,@JsonKey(name: 'per_page') int? perPage,@JsonKey(name: 'expired_qrs') List<ExpireQrModel>? qrList
});




}
/// @nodoc
class __$ExpireResponseModelCopyWithImpl<$Res>
    implements _$ExpireResponseModelCopyWith<$Res> {
  __$ExpireResponseModelCopyWithImpl(this._self, this._then);

  final _ExpireResponseModel _self;
  final $Res Function(_ExpireResponseModel) _then;

/// Create a copy of ExpireResponseModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? totalCount = freezed,Object? totalPages = freezed,Object? currentPage = freezed,Object? perPage = freezed,Object? qrList = freezed,}) {
  return _then(_ExpireResponseModel(
totalCount: freezed == totalCount ? _self.totalCount : totalCount // ignore: cast_nullable_to_non_nullable
as int?,totalPages: freezed == totalPages ? _self.totalPages : totalPages // ignore: cast_nullable_to_non_nullable
as int?,currentPage: freezed == currentPage ? _self.currentPage : currentPage // ignore: cast_nullable_to_non_nullable
as int?,perPage: freezed == perPage ? _self.perPage : perPage // ignore: cast_nullable_to_non_nullable
as int?,qrList: freezed == qrList ? _self._qrList : qrList // ignore: cast_nullable_to_non_nullable
as List<ExpireQrModel>?,
  ));
}


}

// dart format on
