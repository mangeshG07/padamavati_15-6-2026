// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'used_qr_response_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$UsedQRResponseModel {

@JsonKey(name: 'student_name') String? get studentName;@JsonKey(name: 'total_count') int? get totalCount;@JsonKey(name: 'total_pages') int? get totalPages;@JsonKey(name: 'current_page') int? get currentPage;@JsonKey(name: 'per_page') int? get perPage;@JsonKey(name: 'used_qrs') List<UsedQr>? get usedQrs;
/// Create a copy of UsedQRResponseModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UsedQRResponseModelCopyWith<UsedQRResponseModel> get copyWith => _$UsedQRResponseModelCopyWithImpl<UsedQRResponseModel>(this as UsedQRResponseModel, _$identity);

  /// Serializes this UsedQRResponseModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UsedQRResponseModel&&(identical(other.studentName, studentName) || other.studentName == studentName)&&(identical(other.totalCount, totalCount) || other.totalCount == totalCount)&&(identical(other.totalPages, totalPages) || other.totalPages == totalPages)&&(identical(other.currentPage, currentPage) || other.currentPage == currentPage)&&(identical(other.perPage, perPage) || other.perPage == perPage)&&const DeepCollectionEquality().equals(other.usedQrs, usedQrs));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,studentName,totalCount,totalPages,currentPage,perPage,const DeepCollectionEquality().hash(usedQrs));

@override
String toString() {
  return 'UsedQRResponseModel(studentName: $studentName, totalCount: $totalCount, totalPages: $totalPages, currentPage: $currentPage, perPage: $perPage, usedQrs: $usedQrs)';
}


}

/// @nodoc
abstract mixin class $UsedQRResponseModelCopyWith<$Res>  {
  factory $UsedQRResponseModelCopyWith(UsedQRResponseModel value, $Res Function(UsedQRResponseModel) _then) = _$UsedQRResponseModelCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'student_name') String? studentName,@JsonKey(name: 'total_count') int? totalCount,@JsonKey(name: 'total_pages') int? totalPages,@JsonKey(name: 'current_page') int? currentPage,@JsonKey(name: 'per_page') int? perPage,@JsonKey(name: 'used_qrs') List<UsedQr>? usedQrs
});




}
/// @nodoc
class _$UsedQRResponseModelCopyWithImpl<$Res>
    implements $UsedQRResponseModelCopyWith<$Res> {
  _$UsedQRResponseModelCopyWithImpl(this._self, this._then);

  final UsedQRResponseModel _self;
  final $Res Function(UsedQRResponseModel) _then;

/// Create a copy of UsedQRResponseModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? studentName = freezed,Object? totalCount = freezed,Object? totalPages = freezed,Object? currentPage = freezed,Object? perPage = freezed,Object? usedQrs = freezed,}) {
  return _then(_self.copyWith(
studentName: freezed == studentName ? _self.studentName : studentName // ignore: cast_nullable_to_non_nullable
as String?,totalCount: freezed == totalCount ? _self.totalCount : totalCount // ignore: cast_nullable_to_non_nullable
as int?,totalPages: freezed == totalPages ? _self.totalPages : totalPages // ignore: cast_nullable_to_non_nullable
as int?,currentPage: freezed == currentPage ? _self.currentPage : currentPage // ignore: cast_nullable_to_non_nullable
as int?,perPage: freezed == perPage ? _self.perPage : perPage // ignore: cast_nullable_to_non_nullable
as int?,usedQrs: freezed == usedQrs ? _self.usedQrs : usedQrs // ignore: cast_nullable_to_non_nullable
as List<UsedQr>?,
  ));
}

}


/// Adds pattern-matching-related methods to [UsedQRResponseModel].
extension UsedQRResponseModelPatterns on UsedQRResponseModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _UsedQRResponseModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _UsedQRResponseModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _UsedQRResponseModel value)  $default,){
final _that = this;
switch (_that) {
case _UsedQRResponseModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _UsedQRResponseModel value)?  $default,){
final _that = this;
switch (_that) {
case _UsedQRResponseModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'student_name')  String? studentName, @JsonKey(name: 'total_count')  int? totalCount, @JsonKey(name: 'total_pages')  int? totalPages, @JsonKey(name: 'current_page')  int? currentPage, @JsonKey(name: 'per_page')  int? perPage, @JsonKey(name: 'used_qrs')  List<UsedQr>? usedQrs)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _UsedQRResponseModel() when $default != null:
return $default(_that.studentName,_that.totalCount,_that.totalPages,_that.currentPage,_that.perPage,_that.usedQrs);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'student_name')  String? studentName, @JsonKey(name: 'total_count')  int? totalCount, @JsonKey(name: 'total_pages')  int? totalPages, @JsonKey(name: 'current_page')  int? currentPage, @JsonKey(name: 'per_page')  int? perPage, @JsonKey(name: 'used_qrs')  List<UsedQr>? usedQrs)  $default,) {final _that = this;
switch (_that) {
case _UsedQRResponseModel():
return $default(_that.studentName,_that.totalCount,_that.totalPages,_that.currentPage,_that.perPage,_that.usedQrs);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'student_name')  String? studentName, @JsonKey(name: 'total_count')  int? totalCount, @JsonKey(name: 'total_pages')  int? totalPages, @JsonKey(name: 'current_page')  int? currentPage, @JsonKey(name: 'per_page')  int? perPage, @JsonKey(name: 'used_qrs')  List<UsedQr>? usedQrs)?  $default,) {final _that = this;
switch (_that) {
case _UsedQRResponseModel() when $default != null:
return $default(_that.studentName,_that.totalCount,_that.totalPages,_that.currentPage,_that.perPage,_that.usedQrs);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _UsedQRResponseModel implements UsedQRResponseModel {
  const _UsedQRResponseModel({@JsonKey(name: 'student_name') this.studentName, @JsonKey(name: 'total_count') this.totalCount, @JsonKey(name: 'total_pages') this.totalPages, @JsonKey(name: 'current_page') this.currentPage, @JsonKey(name: 'per_page') this.perPage, @JsonKey(name: 'used_qrs')   List<UsedQr>? usedQrs}): _usedQrs = usedQrs;
  factory _UsedQRResponseModel.fromJson(Map<String, dynamic> json) => _$UsedQRResponseModelFromJson(json);

@override@JsonKey(name: 'student_name') final  String? studentName;
@override@JsonKey(name: 'total_count') final  int? totalCount;
@override@JsonKey(name: 'total_pages') final  int? totalPages;
@override@JsonKey(name: 'current_page') final  int? currentPage;
@override@JsonKey(name: 'per_page') final  int? perPage;
 final  List<UsedQr>? _usedQrs;
@override@JsonKey(name: 'used_qrs') List<UsedQr>? get usedQrs {
  final value = _usedQrs;
  if (value == null) return null;
  if (_usedQrs is EqualUnmodifiableListView) return _usedQrs;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}


/// Create a copy of UsedQRResponseModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UsedQRResponseModelCopyWith<_UsedQRResponseModel> get copyWith => __$UsedQRResponseModelCopyWithImpl<_UsedQRResponseModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$UsedQRResponseModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UsedQRResponseModel&&(identical(other.studentName, studentName) || other.studentName == studentName)&&(identical(other.totalCount, totalCount) || other.totalCount == totalCount)&&(identical(other.totalPages, totalPages) || other.totalPages == totalPages)&&(identical(other.currentPage, currentPage) || other.currentPage == currentPage)&&(identical(other.perPage, perPage) || other.perPage == perPage)&&const DeepCollectionEquality().equals(other._usedQrs, _usedQrs));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,studentName,totalCount,totalPages,currentPage,perPage,const DeepCollectionEquality().hash(_usedQrs));

@override
String toString() {
  return 'UsedQRResponseModel(studentName: $studentName, totalCount: $totalCount, totalPages: $totalPages, currentPage: $currentPage, perPage: $perPage, usedQrs: $usedQrs)';
}


}

/// @nodoc
abstract mixin class _$UsedQRResponseModelCopyWith<$Res> implements $UsedQRResponseModelCopyWith<$Res> {
  factory _$UsedQRResponseModelCopyWith(_UsedQRResponseModel value, $Res Function(_UsedQRResponseModel) _then) = __$UsedQRResponseModelCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'student_name') String? studentName,@JsonKey(name: 'total_count') int? totalCount,@JsonKey(name: 'total_pages') int? totalPages,@JsonKey(name: 'current_page') int? currentPage,@JsonKey(name: 'per_page') int? perPage,@JsonKey(name: 'used_qrs') List<UsedQr>? usedQrs
});




}
/// @nodoc
class __$UsedQRResponseModelCopyWithImpl<$Res>
    implements _$UsedQRResponseModelCopyWith<$Res> {
  __$UsedQRResponseModelCopyWithImpl(this._self, this._then);

  final _UsedQRResponseModel _self;
  final $Res Function(_UsedQRResponseModel) _then;

/// Create a copy of UsedQRResponseModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? studentName = freezed,Object? totalCount = freezed,Object? totalPages = freezed,Object? currentPage = freezed,Object? perPage = freezed,Object? usedQrs = freezed,}) {
  return _then(_UsedQRResponseModel(
studentName: freezed == studentName ? _self.studentName : studentName // ignore: cast_nullable_to_non_nullable
as String?,totalCount: freezed == totalCount ? _self.totalCount : totalCount // ignore: cast_nullable_to_non_nullable
as int?,totalPages: freezed == totalPages ? _self.totalPages : totalPages // ignore: cast_nullable_to_non_nullable
as int?,currentPage: freezed == currentPage ? _self.currentPage : currentPage // ignore: cast_nullable_to_non_nullable
as int?,perPage: freezed == perPage ? _self.perPage : perPage // ignore: cast_nullable_to_non_nullable
as int?,usedQrs: freezed == usedQrs ? _self._usedQrs : usedQrs // ignore: cast_nullable_to_non_nullable
as List<UsedQr>?,
  ));
}


}

// dart format on
