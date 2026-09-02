// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'dashboard_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$DashboardModel {

 String? get name;@JsonKey(name: 'role_id') int? get roleId;@JsonKey(name: 'branch_id') int? get branchId;@JsonKey(name: 'branch_name') String? get branchName;@JsonKey(name: 'today_overview') OverViewModel? get todayOverview;@JsonKey(name: 'payment_overview') PaymentOverview? get paymentOverview;
/// Create a copy of DashboardModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DashboardModelCopyWith<DashboardModel> get copyWith => _$DashboardModelCopyWithImpl<DashboardModel>(this as DashboardModel, _$identity);

  /// Serializes this DashboardModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DashboardModel&&(identical(other.name, name) || other.name == name)&&(identical(other.roleId, roleId) || other.roleId == roleId)&&(identical(other.branchId, branchId) || other.branchId == branchId)&&(identical(other.branchName, branchName) || other.branchName == branchName)&&(identical(other.todayOverview, todayOverview) || other.todayOverview == todayOverview)&&(identical(other.paymentOverview, paymentOverview) || other.paymentOverview == paymentOverview));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,roleId,branchId,branchName,todayOverview,paymentOverview);

@override
String toString() {
  return 'DashboardModel(name: $name, roleId: $roleId, branchId: $branchId, branchName: $branchName, todayOverview: $todayOverview, paymentOverview: $paymentOverview)';
}


}

/// @nodoc
abstract mixin class $DashboardModelCopyWith<$Res>  {
  factory $DashboardModelCopyWith(DashboardModel value, $Res Function(DashboardModel) _then) = _$DashboardModelCopyWithImpl;
@useResult
$Res call({
 String? name,@JsonKey(name: 'role_id') int? roleId,@JsonKey(name: 'branch_id') int? branchId,@JsonKey(name: 'branch_name') String? branchName,@JsonKey(name: 'today_overview') OverViewModel? todayOverview,@JsonKey(name: 'payment_overview') PaymentOverview? paymentOverview
});


$OverViewModelCopyWith<$Res>? get todayOverview;$PaymentOverviewCopyWith<$Res>? get paymentOverview;

}
/// @nodoc
class _$DashboardModelCopyWithImpl<$Res>
    implements $DashboardModelCopyWith<$Res> {
  _$DashboardModelCopyWithImpl(this._self, this._then);

  final DashboardModel _self;
  final $Res Function(DashboardModel) _then;

/// Create a copy of DashboardModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? name = freezed,Object? roleId = freezed,Object? branchId = freezed,Object? branchName = freezed,Object? todayOverview = freezed,Object? paymentOverview = freezed,}) {
  return _then(_self.copyWith(
name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,roleId: freezed == roleId ? _self.roleId : roleId // ignore: cast_nullable_to_non_nullable
as int?,branchId: freezed == branchId ? _self.branchId : branchId // ignore: cast_nullable_to_non_nullable
as int?,branchName: freezed == branchName ? _self.branchName : branchName // ignore: cast_nullable_to_non_nullable
as String?,todayOverview: freezed == todayOverview ? _self.todayOverview : todayOverview // ignore: cast_nullable_to_non_nullable
as OverViewModel?,paymentOverview: freezed == paymentOverview ? _self.paymentOverview : paymentOverview // ignore: cast_nullable_to_non_nullable
as PaymentOverview?,
  ));
}
/// Create a copy of DashboardModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$OverViewModelCopyWith<$Res>? get todayOverview {
    if (_self.todayOverview == null) {
    return null;
  }

  return $OverViewModelCopyWith<$Res>(_self.todayOverview!, (value) {
    return _then(_self.copyWith(todayOverview: value));
  });
}/// Create a copy of DashboardModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PaymentOverviewCopyWith<$Res>? get paymentOverview {
    if (_self.paymentOverview == null) {
    return null;
  }

  return $PaymentOverviewCopyWith<$Res>(_self.paymentOverview!, (value) {
    return _then(_self.copyWith(paymentOverview: value));
  });
}
}


/// Adds pattern-matching-related methods to [DashboardModel].
extension DashboardModelPatterns on DashboardModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _DashboardModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _DashboardModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _DashboardModel value)  $default,){
final _that = this;
switch (_that) {
case _DashboardModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _DashboardModel value)?  $default,){
final _that = this;
switch (_that) {
case _DashboardModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? name, @JsonKey(name: 'role_id')  int? roleId, @JsonKey(name: 'branch_id')  int? branchId, @JsonKey(name: 'branch_name')  String? branchName, @JsonKey(name: 'today_overview')  OverViewModel? todayOverview, @JsonKey(name: 'payment_overview')  PaymentOverview? paymentOverview)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _DashboardModel() when $default != null:
return $default(_that.name,_that.roleId,_that.branchId,_that.branchName,_that.todayOverview,_that.paymentOverview);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? name, @JsonKey(name: 'role_id')  int? roleId, @JsonKey(name: 'branch_id')  int? branchId, @JsonKey(name: 'branch_name')  String? branchName, @JsonKey(name: 'today_overview')  OverViewModel? todayOverview, @JsonKey(name: 'payment_overview')  PaymentOverview? paymentOverview)  $default,) {final _that = this;
switch (_that) {
case _DashboardModel():
return $default(_that.name,_that.roleId,_that.branchId,_that.branchName,_that.todayOverview,_that.paymentOverview);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? name, @JsonKey(name: 'role_id')  int? roleId, @JsonKey(name: 'branch_id')  int? branchId, @JsonKey(name: 'branch_name')  String? branchName, @JsonKey(name: 'today_overview')  OverViewModel? todayOverview, @JsonKey(name: 'payment_overview')  PaymentOverview? paymentOverview)?  $default,) {final _that = this;
switch (_that) {
case _DashboardModel() when $default != null:
return $default(_that.name,_that.roleId,_that.branchId,_that.branchName,_that.todayOverview,_that.paymentOverview);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _DashboardModel implements DashboardModel {
  const _DashboardModel({this.name, @JsonKey(name: 'role_id') this.roleId, @JsonKey(name: 'branch_id') this.branchId, @JsonKey(name: 'branch_name') this.branchName, @JsonKey(name: 'today_overview') this.todayOverview, @JsonKey(name: 'payment_overview') this.paymentOverview});
  factory _DashboardModel.fromJson(Map<String, dynamic> json) => _$DashboardModelFromJson(json);

@override final  String? name;
@override@JsonKey(name: 'role_id') final  int? roleId;
@override@JsonKey(name: 'branch_id') final  int? branchId;
@override@JsonKey(name: 'branch_name') final  String? branchName;
@override@JsonKey(name: 'today_overview') final  OverViewModel? todayOverview;
@override@JsonKey(name: 'payment_overview') final  PaymentOverview? paymentOverview;

/// Create a copy of DashboardModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DashboardModelCopyWith<_DashboardModel> get copyWith => __$DashboardModelCopyWithImpl<_DashboardModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$DashboardModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DashboardModel&&(identical(other.name, name) || other.name == name)&&(identical(other.roleId, roleId) || other.roleId == roleId)&&(identical(other.branchId, branchId) || other.branchId == branchId)&&(identical(other.branchName, branchName) || other.branchName == branchName)&&(identical(other.todayOverview, todayOverview) || other.todayOverview == todayOverview)&&(identical(other.paymentOverview, paymentOverview) || other.paymentOverview == paymentOverview));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,roleId,branchId,branchName,todayOverview,paymentOverview);

@override
String toString() {
  return 'DashboardModel(name: $name, roleId: $roleId, branchId: $branchId, branchName: $branchName, todayOverview: $todayOverview, paymentOverview: $paymentOverview)';
}


}

/// @nodoc
abstract mixin class _$DashboardModelCopyWith<$Res> implements $DashboardModelCopyWith<$Res> {
  factory _$DashboardModelCopyWith(_DashboardModel value, $Res Function(_DashboardModel) _then) = __$DashboardModelCopyWithImpl;
@override @useResult
$Res call({
 String? name,@JsonKey(name: 'role_id') int? roleId,@JsonKey(name: 'branch_id') int? branchId,@JsonKey(name: 'branch_name') String? branchName,@JsonKey(name: 'today_overview') OverViewModel? todayOverview,@JsonKey(name: 'payment_overview') PaymentOverview? paymentOverview
});


@override $OverViewModelCopyWith<$Res>? get todayOverview;@override $PaymentOverviewCopyWith<$Res>? get paymentOverview;

}
/// @nodoc
class __$DashboardModelCopyWithImpl<$Res>
    implements _$DashboardModelCopyWith<$Res> {
  __$DashboardModelCopyWithImpl(this._self, this._then);

  final _DashboardModel _self;
  final $Res Function(_DashboardModel) _then;

/// Create a copy of DashboardModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? name = freezed,Object? roleId = freezed,Object? branchId = freezed,Object? branchName = freezed,Object? todayOverview = freezed,Object? paymentOverview = freezed,}) {
  return _then(_DashboardModel(
name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,roleId: freezed == roleId ? _self.roleId : roleId // ignore: cast_nullable_to_non_nullable
as int?,branchId: freezed == branchId ? _self.branchId : branchId // ignore: cast_nullable_to_non_nullable
as int?,branchName: freezed == branchName ? _self.branchName : branchName // ignore: cast_nullable_to_non_nullable
as String?,todayOverview: freezed == todayOverview ? _self.todayOverview : todayOverview // ignore: cast_nullable_to_non_nullable
as OverViewModel?,paymentOverview: freezed == paymentOverview ? _self.paymentOverview : paymentOverview // ignore: cast_nullable_to_non_nullable
as PaymentOverview?,
  ));
}

/// Create a copy of DashboardModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$OverViewModelCopyWith<$Res>? get todayOverview {
    if (_self.todayOverview == null) {
    return null;
  }

  return $OverViewModelCopyWith<$Res>(_self.todayOverview!, (value) {
    return _then(_self.copyWith(todayOverview: value));
  });
}/// Create a copy of DashboardModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PaymentOverviewCopyWith<$Res>? get paymentOverview {
    if (_self.paymentOverview == null) {
    return null;
  }

  return $PaymentOverviewCopyWith<$Res>(_self.paymentOverview!, (value) {
    return _then(_self.copyWith(paymentOverview: value));
  });
}
}

// dart format on
