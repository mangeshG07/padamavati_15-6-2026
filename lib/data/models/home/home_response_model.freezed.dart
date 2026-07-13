// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_response_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$HomeResponseModel {

@JsonKey(name: 'branch_name') String? get branchName; List<MasterDataModel>? get sliders;@JsonKey(name: 'mess_request') bool? get messRequest;@JsonKey(name: 'mess_request_accepted') bool? get messRequestAccepted;@JsonKey(name: 'payment_transaction_details') List<PaymentDetailsModel>? get payTransactionDetails;@JsonKey(name: 'today_qr_codes') List<QRModel>? get todayQr;
/// Create a copy of HomeResponseModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$HomeResponseModelCopyWith<HomeResponseModel> get copyWith => _$HomeResponseModelCopyWithImpl<HomeResponseModel>(this as HomeResponseModel, _$identity);

  /// Serializes this HomeResponseModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is HomeResponseModel&&(identical(other.branchName, branchName) || other.branchName == branchName)&&const DeepCollectionEquality().equals(other.sliders, sliders)&&(identical(other.messRequest, messRequest) || other.messRequest == messRequest)&&(identical(other.messRequestAccepted, messRequestAccepted) || other.messRequestAccepted == messRequestAccepted)&&const DeepCollectionEquality().equals(other.payTransactionDetails, payTransactionDetails)&&const DeepCollectionEquality().equals(other.todayQr, todayQr));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,branchName,const DeepCollectionEquality().hash(sliders),messRequest,messRequestAccepted,const DeepCollectionEquality().hash(payTransactionDetails),const DeepCollectionEquality().hash(todayQr));

@override
String toString() {
  return 'HomeResponseModel(branchName: $branchName, sliders: $sliders, messRequest: $messRequest, messRequestAccepted: $messRequestAccepted, payTransactionDetails: $payTransactionDetails, todayQr: $todayQr)';
}


}

/// @nodoc
abstract mixin class $HomeResponseModelCopyWith<$Res>  {
  factory $HomeResponseModelCopyWith(HomeResponseModel value, $Res Function(HomeResponseModel) _then) = _$HomeResponseModelCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'branch_name') String? branchName, List<MasterDataModel>? sliders,@JsonKey(name: 'mess_request') bool? messRequest,@JsonKey(name: 'mess_request_accepted') bool? messRequestAccepted,@JsonKey(name: 'payment_transaction_details') List<PaymentDetailsModel>? payTransactionDetails,@JsonKey(name: 'today_qr_codes') List<QRModel>? todayQr
});




}
/// @nodoc
class _$HomeResponseModelCopyWithImpl<$Res>
    implements $HomeResponseModelCopyWith<$Res> {
  _$HomeResponseModelCopyWithImpl(this._self, this._then);

  final HomeResponseModel _self;
  final $Res Function(HomeResponseModel) _then;

/// Create a copy of HomeResponseModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? branchName = freezed,Object? sliders = freezed,Object? messRequest = freezed,Object? messRequestAccepted = freezed,Object? payTransactionDetails = freezed,Object? todayQr = freezed,}) {
  return _then(_self.copyWith(
branchName: freezed == branchName ? _self.branchName : branchName // ignore: cast_nullable_to_non_nullable
as String?,sliders: freezed == sliders ? _self.sliders : sliders // ignore: cast_nullable_to_non_nullable
as List<MasterDataModel>?,messRequest: freezed == messRequest ? _self.messRequest : messRequest // ignore: cast_nullable_to_non_nullable
as bool?,messRequestAccepted: freezed == messRequestAccepted ? _self.messRequestAccepted : messRequestAccepted // ignore: cast_nullable_to_non_nullable
as bool?,payTransactionDetails: freezed == payTransactionDetails ? _self.payTransactionDetails : payTransactionDetails // ignore: cast_nullable_to_non_nullable
as List<PaymentDetailsModel>?,todayQr: freezed == todayQr ? _self.todayQr : todayQr // ignore: cast_nullable_to_non_nullable
as List<QRModel>?,
  ));
}

}


/// Adds pattern-matching-related methods to [HomeResponseModel].
extension HomeResponseModelPatterns on HomeResponseModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _HomeResponseModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _HomeResponseModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _HomeResponseModel value)  $default,){
final _that = this;
switch (_that) {
case _HomeResponseModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _HomeResponseModel value)?  $default,){
final _that = this;
switch (_that) {
case _HomeResponseModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'branch_name')  String? branchName,  List<MasterDataModel>? sliders, @JsonKey(name: 'mess_request')  bool? messRequest, @JsonKey(name: 'mess_request_accepted')  bool? messRequestAccepted, @JsonKey(name: 'payment_transaction_details')  List<PaymentDetailsModel>? payTransactionDetails, @JsonKey(name: 'today_qr_codes')  List<QRModel>? todayQr)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _HomeResponseModel() when $default != null:
return $default(_that.branchName,_that.sliders,_that.messRequest,_that.messRequestAccepted,_that.payTransactionDetails,_that.todayQr);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'branch_name')  String? branchName,  List<MasterDataModel>? sliders, @JsonKey(name: 'mess_request')  bool? messRequest, @JsonKey(name: 'mess_request_accepted')  bool? messRequestAccepted, @JsonKey(name: 'payment_transaction_details')  List<PaymentDetailsModel>? payTransactionDetails, @JsonKey(name: 'today_qr_codes')  List<QRModel>? todayQr)  $default,) {final _that = this;
switch (_that) {
case _HomeResponseModel():
return $default(_that.branchName,_that.sliders,_that.messRequest,_that.messRequestAccepted,_that.payTransactionDetails,_that.todayQr);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'branch_name')  String? branchName,  List<MasterDataModel>? sliders, @JsonKey(name: 'mess_request')  bool? messRequest, @JsonKey(name: 'mess_request_accepted')  bool? messRequestAccepted, @JsonKey(name: 'payment_transaction_details')  List<PaymentDetailsModel>? payTransactionDetails, @JsonKey(name: 'today_qr_codes')  List<QRModel>? todayQr)?  $default,) {final _that = this;
switch (_that) {
case _HomeResponseModel() when $default != null:
return $default(_that.branchName,_that.sliders,_that.messRequest,_that.messRequestAccepted,_that.payTransactionDetails,_that.todayQr);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _HomeResponseModel implements HomeResponseModel {
  const _HomeResponseModel({@JsonKey(name: 'branch_name') this.branchName, final  List<MasterDataModel>? sliders, @JsonKey(name: 'mess_request') this.messRequest, @JsonKey(name: 'mess_request_accepted') this.messRequestAccepted, @JsonKey(name: 'payment_transaction_details') final  List<PaymentDetailsModel>? payTransactionDetails, @JsonKey(name: 'today_qr_codes') final  List<QRModel>? todayQr}): _sliders = sliders,_payTransactionDetails = payTransactionDetails,_todayQr = todayQr;
  factory _HomeResponseModel.fromJson(Map<String, dynamic> json) => _$HomeResponseModelFromJson(json);

@override@JsonKey(name: 'branch_name') final  String? branchName;
 final  List<MasterDataModel>? _sliders;
@override List<MasterDataModel>? get sliders {
  final value = _sliders;
  if (value == null) return null;
  if (_sliders is EqualUnmodifiableListView) return _sliders;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

@override@JsonKey(name: 'mess_request') final  bool? messRequest;
@override@JsonKey(name: 'mess_request_accepted') final  bool? messRequestAccepted;
 final  List<PaymentDetailsModel>? _payTransactionDetails;
@override@JsonKey(name: 'payment_transaction_details') List<PaymentDetailsModel>? get payTransactionDetails {
  final value = _payTransactionDetails;
  if (value == null) return null;
  if (_payTransactionDetails is EqualUnmodifiableListView) return _payTransactionDetails;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

 final  List<QRModel>? _todayQr;
@override@JsonKey(name: 'today_qr_codes') List<QRModel>? get todayQr {
  final value = _todayQr;
  if (value == null) return null;
  if (_todayQr is EqualUnmodifiableListView) return _todayQr;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}


/// Create a copy of HomeResponseModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$HomeResponseModelCopyWith<_HomeResponseModel> get copyWith => __$HomeResponseModelCopyWithImpl<_HomeResponseModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$HomeResponseModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _HomeResponseModel&&(identical(other.branchName, branchName) || other.branchName == branchName)&&const DeepCollectionEquality().equals(other._sliders, _sliders)&&(identical(other.messRequest, messRequest) || other.messRequest == messRequest)&&(identical(other.messRequestAccepted, messRequestAccepted) || other.messRequestAccepted == messRequestAccepted)&&const DeepCollectionEquality().equals(other._payTransactionDetails, _payTransactionDetails)&&const DeepCollectionEquality().equals(other._todayQr, _todayQr));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,branchName,const DeepCollectionEquality().hash(_sliders),messRequest,messRequestAccepted,const DeepCollectionEquality().hash(_payTransactionDetails),const DeepCollectionEquality().hash(_todayQr));

@override
String toString() {
  return 'HomeResponseModel(branchName: $branchName, sliders: $sliders, messRequest: $messRequest, messRequestAccepted: $messRequestAccepted, payTransactionDetails: $payTransactionDetails, todayQr: $todayQr)';
}


}

/// @nodoc
abstract mixin class _$HomeResponseModelCopyWith<$Res> implements $HomeResponseModelCopyWith<$Res> {
  factory _$HomeResponseModelCopyWith(_HomeResponseModel value, $Res Function(_HomeResponseModel) _then) = __$HomeResponseModelCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'branch_name') String? branchName, List<MasterDataModel>? sliders,@JsonKey(name: 'mess_request') bool? messRequest,@JsonKey(name: 'mess_request_accepted') bool? messRequestAccepted,@JsonKey(name: 'payment_transaction_details') List<PaymentDetailsModel>? payTransactionDetails,@JsonKey(name: 'today_qr_codes') List<QRModel>? todayQr
});




}
/// @nodoc
class __$HomeResponseModelCopyWithImpl<$Res>
    implements _$HomeResponseModelCopyWith<$Res> {
  __$HomeResponseModelCopyWithImpl(this._self, this._then);

  final _HomeResponseModel _self;
  final $Res Function(_HomeResponseModel) _then;

/// Create a copy of HomeResponseModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? branchName = freezed,Object? sliders = freezed,Object? messRequest = freezed,Object? messRequestAccepted = freezed,Object? payTransactionDetails = freezed,Object? todayQr = freezed,}) {
  return _then(_HomeResponseModel(
branchName: freezed == branchName ? _self.branchName : branchName // ignore: cast_nullable_to_non_nullable
as String?,sliders: freezed == sliders ? _self._sliders : sliders // ignore: cast_nullable_to_non_nullable
as List<MasterDataModel>?,messRequest: freezed == messRequest ? _self.messRequest : messRequest // ignore: cast_nullable_to_non_nullable
as bool?,messRequestAccepted: freezed == messRequestAccepted ? _self.messRequestAccepted : messRequestAccepted // ignore: cast_nullable_to_non_nullable
as bool?,payTransactionDetails: freezed == payTransactionDetails ? _self._payTransactionDetails : payTransactionDetails // ignore: cast_nullable_to_non_nullable
as List<PaymentDetailsModel>?,todayQr: freezed == todayQr ? _self._todayQr : todayQr // ignore: cast_nullable_to_non_nullable
as List<QRModel>?,
  ));
}


}

// dart format on
