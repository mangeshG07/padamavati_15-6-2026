// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'app_config_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$AppConfigModel {

 String get version;@JsonKey(name: 'force_update') bool? get forceUpdate;@JsonKey(name: 'is_maintenance') bool? get isMaintenance;@JsonKey(name: 'show_popup') bool? get showPopup; String? get url;@JsonKey(name: 'maintenance_msg') String? get maintenanceMsg;
/// Create a copy of AppConfigModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AppConfigModelCopyWith<AppConfigModel> get copyWith => _$AppConfigModelCopyWithImpl<AppConfigModel>(this as AppConfigModel, _$identity);

  /// Serializes this AppConfigModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AppConfigModel&&(identical(other.version, version) || other.version == version)&&(identical(other.forceUpdate, forceUpdate) || other.forceUpdate == forceUpdate)&&(identical(other.isMaintenance, isMaintenance) || other.isMaintenance == isMaintenance)&&(identical(other.showPopup, showPopup) || other.showPopup == showPopup)&&(identical(other.url, url) || other.url == url)&&(identical(other.maintenanceMsg, maintenanceMsg) || other.maintenanceMsg == maintenanceMsg));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,version,forceUpdate,isMaintenance,showPopup,url,maintenanceMsg);

@override
String toString() {
  return 'AppConfigModel(version: $version, forceUpdate: $forceUpdate, isMaintenance: $isMaintenance, showPopup: $showPopup, url: $url, maintenanceMsg: $maintenanceMsg)';
}


}

/// @nodoc
abstract mixin class $AppConfigModelCopyWith<$Res>  {
  factory $AppConfigModelCopyWith(AppConfigModel value, $Res Function(AppConfigModel) _then) = _$AppConfigModelCopyWithImpl;
@useResult
$Res call({
 String version,@JsonKey(name: 'force_update') bool? forceUpdate,@JsonKey(name: 'is_maintenance') bool? isMaintenance,@JsonKey(name: 'show_popup') bool? showPopup, String? url,@JsonKey(name: 'maintenance_msg') String? maintenanceMsg
});




}
/// @nodoc
class _$AppConfigModelCopyWithImpl<$Res>
    implements $AppConfigModelCopyWith<$Res> {
  _$AppConfigModelCopyWithImpl(this._self, this._then);

  final AppConfigModel _self;
  final $Res Function(AppConfigModel) _then;

/// Create a copy of AppConfigModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? version = null,Object? forceUpdate = freezed,Object? isMaintenance = freezed,Object? showPopup = freezed,Object? url = freezed,Object? maintenanceMsg = freezed,}) {
  return _then(_self.copyWith(
version: null == version ? _self.version : version // ignore: cast_nullable_to_non_nullable
as String,forceUpdate: freezed == forceUpdate ? _self.forceUpdate : forceUpdate // ignore: cast_nullable_to_non_nullable
as bool?,isMaintenance: freezed == isMaintenance ? _self.isMaintenance : isMaintenance // ignore: cast_nullable_to_non_nullable
as bool?,showPopup: freezed == showPopup ? _self.showPopup : showPopup // ignore: cast_nullable_to_non_nullable
as bool?,url: freezed == url ? _self.url : url // ignore: cast_nullable_to_non_nullable
as String?,maintenanceMsg: freezed == maintenanceMsg ? _self.maintenanceMsg : maintenanceMsg // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [AppConfigModel].
extension AppConfigModelPatterns on AppConfigModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AppConfigModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AppConfigModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AppConfigModel value)  $default,){
final _that = this;
switch (_that) {
case _AppConfigModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AppConfigModel value)?  $default,){
final _that = this;
switch (_that) {
case _AppConfigModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String version, @JsonKey(name: 'force_update')  bool? forceUpdate, @JsonKey(name: 'is_maintenance')  bool? isMaintenance, @JsonKey(name: 'show_popup')  bool? showPopup,  String? url, @JsonKey(name: 'maintenance_msg')  String? maintenanceMsg)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AppConfigModel() when $default != null:
return $default(_that.version,_that.forceUpdate,_that.isMaintenance,_that.showPopup,_that.url,_that.maintenanceMsg);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String version, @JsonKey(name: 'force_update')  bool? forceUpdate, @JsonKey(name: 'is_maintenance')  bool? isMaintenance, @JsonKey(name: 'show_popup')  bool? showPopup,  String? url, @JsonKey(name: 'maintenance_msg')  String? maintenanceMsg)  $default,) {final _that = this;
switch (_that) {
case _AppConfigModel():
return $default(_that.version,_that.forceUpdate,_that.isMaintenance,_that.showPopup,_that.url,_that.maintenanceMsg);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String version, @JsonKey(name: 'force_update')  bool? forceUpdate, @JsonKey(name: 'is_maintenance')  bool? isMaintenance, @JsonKey(name: 'show_popup')  bool? showPopup,  String? url, @JsonKey(name: 'maintenance_msg')  String? maintenanceMsg)?  $default,) {final _that = this;
switch (_that) {
case _AppConfigModel() when $default != null:
return $default(_that.version,_that.forceUpdate,_that.isMaintenance,_that.showPopup,_that.url,_that.maintenanceMsg);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _AppConfigModel implements AppConfigModel {
  const _AppConfigModel({required this.version, @JsonKey(name: 'force_update') this.forceUpdate, @JsonKey(name: 'is_maintenance') this.isMaintenance, @JsonKey(name: 'show_popup') this.showPopup, required this.url, @JsonKey(name: 'maintenance_msg') this.maintenanceMsg});
  factory _AppConfigModel.fromJson(Map<String, dynamic> json) => _$AppConfigModelFromJson(json);

@override final  String version;
@override@JsonKey(name: 'force_update') final  bool? forceUpdate;
@override@JsonKey(name: 'is_maintenance') final  bool? isMaintenance;
@override@JsonKey(name: 'show_popup') final  bool? showPopup;
@override final  String? url;
@override@JsonKey(name: 'maintenance_msg') final  String? maintenanceMsg;

/// Create a copy of AppConfigModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AppConfigModelCopyWith<_AppConfigModel> get copyWith => __$AppConfigModelCopyWithImpl<_AppConfigModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AppConfigModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AppConfigModel&&(identical(other.version, version) || other.version == version)&&(identical(other.forceUpdate, forceUpdate) || other.forceUpdate == forceUpdate)&&(identical(other.isMaintenance, isMaintenance) || other.isMaintenance == isMaintenance)&&(identical(other.showPopup, showPopup) || other.showPopup == showPopup)&&(identical(other.url, url) || other.url == url)&&(identical(other.maintenanceMsg, maintenanceMsg) || other.maintenanceMsg == maintenanceMsg));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,version,forceUpdate,isMaintenance,showPopup,url,maintenanceMsg);

@override
String toString() {
  return 'AppConfigModel(version: $version, forceUpdate: $forceUpdate, isMaintenance: $isMaintenance, showPopup: $showPopup, url: $url, maintenanceMsg: $maintenanceMsg)';
}


}

/// @nodoc
abstract mixin class _$AppConfigModelCopyWith<$Res> implements $AppConfigModelCopyWith<$Res> {
  factory _$AppConfigModelCopyWith(_AppConfigModel value, $Res Function(_AppConfigModel) _then) = __$AppConfigModelCopyWithImpl;
@override @useResult
$Res call({
 String version,@JsonKey(name: 'force_update') bool? forceUpdate,@JsonKey(name: 'is_maintenance') bool? isMaintenance,@JsonKey(name: 'show_popup') bool? showPopup, String? url,@JsonKey(name: 'maintenance_msg') String? maintenanceMsg
});




}
/// @nodoc
class __$AppConfigModelCopyWithImpl<$Res>
    implements _$AppConfigModelCopyWith<$Res> {
  __$AppConfigModelCopyWithImpl(this._self, this._then);

  final _AppConfigModel _self;
  final $Res Function(_AppConfigModel) _then;

/// Create a copy of AppConfigModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? version = null,Object? forceUpdate = freezed,Object? isMaintenance = freezed,Object? showPopup = freezed,Object? url = freezed,Object? maintenanceMsg = freezed,}) {
  return _then(_AppConfigModel(
version: null == version ? _self.version : version // ignore: cast_nullable_to_non_nullable
as String,forceUpdate: freezed == forceUpdate ? _self.forceUpdate : forceUpdate // ignore: cast_nullable_to_non_nullable
as bool?,isMaintenance: freezed == isMaintenance ? _self.isMaintenance : isMaintenance // ignore: cast_nullable_to_non_nullable
as bool?,showPopup: freezed == showPopup ? _self.showPopup : showPopup // ignore: cast_nullable_to_non_nullable
as bool?,url: freezed == url ? _self.url : url // ignore: cast_nullable_to_non_nullable
as String?,maintenanceMsg: freezed == maintenanceMsg ? _self.maintenanceMsg : maintenanceMsg // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
