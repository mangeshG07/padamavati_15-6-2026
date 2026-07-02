// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'food_response_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$FoodResponseModel {

@JsonKey(name: 'total_count') int? get totalCount;@JsonKey(name: 'total_pages') int? get totalPages;@JsonKey(name: 'current_page') int? get currentPage;@JsonKey(name: 'per_page') int? get perPage;@JsonKey(name: 'special_food_requests') List<FoodRequestModel>? get foodRequests;
/// Create a copy of FoodResponseModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FoodResponseModelCopyWith<FoodResponseModel> get copyWith => _$FoodResponseModelCopyWithImpl<FoodResponseModel>(this as FoodResponseModel, _$identity);

  /// Serializes this FoodResponseModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FoodResponseModel&&(identical(other.totalCount, totalCount) || other.totalCount == totalCount)&&(identical(other.totalPages, totalPages) || other.totalPages == totalPages)&&(identical(other.currentPage, currentPage) || other.currentPage == currentPage)&&(identical(other.perPage, perPage) || other.perPage == perPage)&&const DeepCollectionEquality().equals(other.foodRequests, foodRequests));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,totalCount,totalPages,currentPage,perPage,const DeepCollectionEquality().hash(foodRequests));

@override
String toString() {
  return 'FoodResponseModel(totalCount: $totalCount, totalPages: $totalPages, currentPage: $currentPage, perPage: $perPage, foodRequests: $foodRequests)';
}


}

/// @nodoc
abstract mixin class $FoodResponseModelCopyWith<$Res>  {
  factory $FoodResponseModelCopyWith(FoodResponseModel value, $Res Function(FoodResponseModel) _then) = _$FoodResponseModelCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'total_count') int? totalCount,@JsonKey(name: 'total_pages') int? totalPages,@JsonKey(name: 'current_page') int? currentPage,@JsonKey(name: 'per_page') int? perPage,@JsonKey(name: 'special_food_requests') List<FoodRequestModel>? foodRequests
});




}
/// @nodoc
class _$FoodResponseModelCopyWithImpl<$Res>
    implements $FoodResponseModelCopyWith<$Res> {
  _$FoodResponseModelCopyWithImpl(this._self, this._then);

  final FoodResponseModel _self;
  final $Res Function(FoodResponseModel) _then;

/// Create a copy of FoodResponseModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? totalCount = freezed,Object? totalPages = freezed,Object? currentPage = freezed,Object? perPage = freezed,Object? foodRequests = freezed,}) {
  return _then(_self.copyWith(
totalCount: freezed == totalCount ? _self.totalCount : totalCount // ignore: cast_nullable_to_non_nullable
as int?,totalPages: freezed == totalPages ? _self.totalPages : totalPages // ignore: cast_nullable_to_non_nullable
as int?,currentPage: freezed == currentPage ? _self.currentPage : currentPage // ignore: cast_nullable_to_non_nullable
as int?,perPage: freezed == perPage ? _self.perPage : perPage // ignore: cast_nullable_to_non_nullable
as int?,foodRequests: freezed == foodRequests ? _self.foodRequests : foodRequests // ignore: cast_nullable_to_non_nullable
as List<FoodRequestModel>?,
  ));
}

}


/// Adds pattern-matching-related methods to [FoodResponseModel].
extension FoodResponseModelPatterns on FoodResponseModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _FoodResponseModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _FoodResponseModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _FoodResponseModel value)  $default,){
final _that = this;
switch (_that) {
case _FoodResponseModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _FoodResponseModel value)?  $default,){
final _that = this;
switch (_that) {
case _FoodResponseModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'total_count')  int? totalCount, @JsonKey(name: 'total_pages')  int? totalPages, @JsonKey(name: 'current_page')  int? currentPage, @JsonKey(name: 'per_page')  int? perPage, @JsonKey(name: 'special_food_requests')  List<FoodRequestModel>? foodRequests)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _FoodResponseModel() when $default != null:
return $default(_that.totalCount,_that.totalPages,_that.currentPage,_that.perPage,_that.foodRequests);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'total_count')  int? totalCount, @JsonKey(name: 'total_pages')  int? totalPages, @JsonKey(name: 'current_page')  int? currentPage, @JsonKey(name: 'per_page')  int? perPage, @JsonKey(name: 'special_food_requests')  List<FoodRequestModel>? foodRequests)  $default,) {final _that = this;
switch (_that) {
case _FoodResponseModel():
return $default(_that.totalCount,_that.totalPages,_that.currentPage,_that.perPage,_that.foodRequests);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'total_count')  int? totalCount, @JsonKey(name: 'total_pages')  int? totalPages, @JsonKey(name: 'current_page')  int? currentPage, @JsonKey(name: 'per_page')  int? perPage, @JsonKey(name: 'special_food_requests')  List<FoodRequestModel>? foodRequests)?  $default,) {final _that = this;
switch (_that) {
case _FoodResponseModel() when $default != null:
return $default(_that.totalCount,_that.totalPages,_that.currentPage,_that.perPage,_that.foodRequests);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _FoodResponseModel implements FoodResponseModel {
  const _FoodResponseModel({@JsonKey(name: 'total_count') this.totalCount, @JsonKey(name: 'total_pages') this.totalPages, @JsonKey(name: 'current_page') this.currentPage, @JsonKey(name: 'per_page') this.perPage, @JsonKey(name: 'special_food_requests') final  List<FoodRequestModel>? foodRequests}): _foodRequests = foodRequests;
  factory _FoodResponseModel.fromJson(Map<String, dynamic> json) => _$FoodResponseModelFromJson(json);

@override@JsonKey(name: 'total_count') final  int? totalCount;
@override@JsonKey(name: 'total_pages') final  int? totalPages;
@override@JsonKey(name: 'current_page') final  int? currentPage;
@override@JsonKey(name: 'per_page') final  int? perPage;
 final  List<FoodRequestModel>? _foodRequests;
@override@JsonKey(name: 'special_food_requests') List<FoodRequestModel>? get foodRequests {
  final value = _foodRequests;
  if (value == null) return null;
  if (_foodRequests is EqualUnmodifiableListView) return _foodRequests;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}


/// Create a copy of FoodResponseModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$FoodResponseModelCopyWith<_FoodResponseModel> get copyWith => __$FoodResponseModelCopyWithImpl<_FoodResponseModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$FoodResponseModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _FoodResponseModel&&(identical(other.totalCount, totalCount) || other.totalCount == totalCount)&&(identical(other.totalPages, totalPages) || other.totalPages == totalPages)&&(identical(other.currentPage, currentPage) || other.currentPage == currentPage)&&(identical(other.perPage, perPage) || other.perPage == perPage)&&const DeepCollectionEquality().equals(other._foodRequests, _foodRequests));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,totalCount,totalPages,currentPage,perPage,const DeepCollectionEquality().hash(_foodRequests));

@override
String toString() {
  return 'FoodResponseModel(totalCount: $totalCount, totalPages: $totalPages, currentPage: $currentPage, perPage: $perPage, foodRequests: $foodRequests)';
}


}

/// @nodoc
abstract mixin class _$FoodResponseModelCopyWith<$Res> implements $FoodResponseModelCopyWith<$Res> {
  factory _$FoodResponseModelCopyWith(_FoodResponseModel value, $Res Function(_FoodResponseModel) _then) = __$FoodResponseModelCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'total_count') int? totalCount,@JsonKey(name: 'total_pages') int? totalPages,@JsonKey(name: 'current_page') int? currentPage,@JsonKey(name: 'per_page') int? perPage,@JsonKey(name: 'special_food_requests') List<FoodRequestModel>? foodRequests
});




}
/// @nodoc
class __$FoodResponseModelCopyWithImpl<$Res>
    implements _$FoodResponseModelCopyWith<$Res> {
  __$FoodResponseModelCopyWithImpl(this._self, this._then);

  final _FoodResponseModel _self;
  final $Res Function(_FoodResponseModel) _then;

/// Create a copy of FoodResponseModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? totalCount = freezed,Object? totalPages = freezed,Object? currentPage = freezed,Object? perPage = freezed,Object? foodRequests = freezed,}) {
  return _then(_FoodResponseModel(
totalCount: freezed == totalCount ? _self.totalCount : totalCount // ignore: cast_nullable_to_non_nullable
as int?,totalPages: freezed == totalPages ? _self.totalPages : totalPages // ignore: cast_nullable_to_non_nullable
as int?,currentPage: freezed == currentPage ? _self.currentPage : currentPage // ignore: cast_nullable_to_non_nullable
as int?,perPage: freezed == perPage ? _self.perPage : perPage // ignore: cast_nullable_to_non_nullable
as int?,foodRequests: freezed == foodRequests ? _self._foodRequests : foodRequests // ignore: cast_nullable_to_non_nullable
as List<FoodRequestModel>?,
  ));
}


}

// dart format on
