// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_payment_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$UserPaymentModel {

 int? get id;@JsonKey(name: "student_name") String? get name;@JsonKey(name: "mobile_no") String? get mobileNo;@JsonKey(name: "transaction_code") String? get code;@JsonKey(name: "mess_type") String? get messType;@JsonKey(name: "mess_time") String? get messTime;@JsonKey(name: "start_date") String? get startDate;@JsonKey(name: "end_date") String? get endDate;@JsonKey(name: "total_amount") String? get totalAmount;@JsonKey(name: "paid_amount") String? get paidAmount;@JsonKey(name: "pending_amount") int? get pendingAmount;@JsonKey(name: "payment_status") String? get paymentStatus;@JsonKey(name: "payment_status_text") String? get paymentStatusText;
/// Create a copy of UserPaymentModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UserPaymentModelCopyWith<UserPaymentModel> get copyWith => _$UserPaymentModelCopyWithImpl<UserPaymentModel>(this as UserPaymentModel, _$identity);

  /// Serializes this UserPaymentModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UserPaymentModel&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.mobileNo, mobileNo) || other.mobileNo == mobileNo)&&(identical(other.code, code) || other.code == code)&&(identical(other.messType, messType) || other.messType == messType)&&(identical(other.messTime, messTime) || other.messTime == messTime)&&(identical(other.startDate, startDate) || other.startDate == startDate)&&(identical(other.endDate, endDate) || other.endDate == endDate)&&(identical(other.totalAmount, totalAmount) || other.totalAmount == totalAmount)&&(identical(other.paidAmount, paidAmount) || other.paidAmount == paidAmount)&&(identical(other.pendingAmount, pendingAmount) || other.pendingAmount == pendingAmount)&&(identical(other.paymentStatus, paymentStatus) || other.paymentStatus == paymentStatus)&&(identical(other.paymentStatusText, paymentStatusText) || other.paymentStatusText == paymentStatusText));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,mobileNo,code,messType,messTime,startDate,endDate,totalAmount,paidAmount,pendingAmount,paymentStatus,paymentStatusText);

@override
String toString() {
  return 'UserPaymentModel(id: $id, name: $name, mobileNo: $mobileNo, code: $code, messType: $messType, messTime: $messTime, startDate: $startDate, endDate: $endDate, totalAmount: $totalAmount, paidAmount: $paidAmount, pendingAmount: $pendingAmount, paymentStatus: $paymentStatus, paymentStatusText: $paymentStatusText)';
}


}

/// @nodoc
abstract mixin class $UserPaymentModelCopyWith<$Res>  {
  factory $UserPaymentModelCopyWith(UserPaymentModel value, $Res Function(UserPaymentModel) _then) = _$UserPaymentModelCopyWithImpl;
@useResult
$Res call({
 int? id,@JsonKey(name: "student_name") String? name,@JsonKey(name: "mobile_no") String? mobileNo,@JsonKey(name: "transaction_code") String? code,@JsonKey(name: "mess_type") String? messType,@JsonKey(name: "mess_time") String? messTime,@JsonKey(name: "start_date") String? startDate,@JsonKey(name: "end_date") String? endDate,@JsonKey(name: "total_amount") String? totalAmount,@JsonKey(name: "paid_amount") String? paidAmount,@JsonKey(name: "pending_amount") int? pendingAmount,@JsonKey(name: "payment_status") String? paymentStatus,@JsonKey(name: "payment_status_text") String? paymentStatusText
});




}
/// @nodoc
class _$UserPaymentModelCopyWithImpl<$Res>
    implements $UserPaymentModelCopyWith<$Res> {
  _$UserPaymentModelCopyWithImpl(this._self, this._then);

  final UserPaymentModel _self;
  final $Res Function(UserPaymentModel) _then;

/// Create a copy of UserPaymentModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? name = freezed,Object? mobileNo = freezed,Object? code = freezed,Object? messType = freezed,Object? messTime = freezed,Object? startDate = freezed,Object? endDate = freezed,Object? totalAmount = freezed,Object? paidAmount = freezed,Object? pendingAmount = freezed,Object? paymentStatus = freezed,Object? paymentStatusText = freezed,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,mobileNo: freezed == mobileNo ? _self.mobileNo : mobileNo // ignore: cast_nullable_to_non_nullable
as String?,code: freezed == code ? _self.code : code // ignore: cast_nullable_to_non_nullable
as String?,messType: freezed == messType ? _self.messType : messType // ignore: cast_nullable_to_non_nullable
as String?,messTime: freezed == messTime ? _self.messTime : messTime // ignore: cast_nullable_to_non_nullable
as String?,startDate: freezed == startDate ? _self.startDate : startDate // ignore: cast_nullable_to_non_nullable
as String?,endDate: freezed == endDate ? _self.endDate : endDate // ignore: cast_nullable_to_non_nullable
as String?,totalAmount: freezed == totalAmount ? _self.totalAmount : totalAmount // ignore: cast_nullable_to_non_nullable
as String?,paidAmount: freezed == paidAmount ? _self.paidAmount : paidAmount // ignore: cast_nullable_to_non_nullable
as String?,pendingAmount: freezed == pendingAmount ? _self.pendingAmount : pendingAmount // ignore: cast_nullable_to_non_nullable
as int?,paymentStatus: freezed == paymentStatus ? _self.paymentStatus : paymentStatus // ignore: cast_nullable_to_non_nullable
as String?,paymentStatusText: freezed == paymentStatusText ? _self.paymentStatusText : paymentStatusText // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [UserPaymentModel].
extension UserPaymentModelPatterns on UserPaymentModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _UserPaymentModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _UserPaymentModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _UserPaymentModel value)  $default,){
final _that = this;
switch (_that) {
case _UserPaymentModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _UserPaymentModel value)?  $default,){
final _that = this;
switch (_that) {
case _UserPaymentModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int? id, @JsonKey(name: "student_name")  String? name, @JsonKey(name: "mobile_no")  String? mobileNo, @JsonKey(name: "transaction_code")  String? code, @JsonKey(name: "mess_type")  String? messType, @JsonKey(name: "mess_time")  String? messTime, @JsonKey(name: "start_date")  String? startDate, @JsonKey(name: "end_date")  String? endDate, @JsonKey(name: "total_amount")  String? totalAmount, @JsonKey(name: "paid_amount")  String? paidAmount, @JsonKey(name: "pending_amount")  int? pendingAmount, @JsonKey(name: "payment_status")  String? paymentStatus, @JsonKey(name: "payment_status_text")  String? paymentStatusText)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _UserPaymentModel() when $default != null:
return $default(_that.id,_that.name,_that.mobileNo,_that.code,_that.messType,_that.messTime,_that.startDate,_that.endDate,_that.totalAmount,_that.paidAmount,_that.pendingAmount,_that.paymentStatus,_that.paymentStatusText);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int? id, @JsonKey(name: "student_name")  String? name, @JsonKey(name: "mobile_no")  String? mobileNo, @JsonKey(name: "transaction_code")  String? code, @JsonKey(name: "mess_type")  String? messType, @JsonKey(name: "mess_time")  String? messTime, @JsonKey(name: "start_date")  String? startDate, @JsonKey(name: "end_date")  String? endDate, @JsonKey(name: "total_amount")  String? totalAmount, @JsonKey(name: "paid_amount")  String? paidAmount, @JsonKey(name: "pending_amount")  int? pendingAmount, @JsonKey(name: "payment_status")  String? paymentStatus, @JsonKey(name: "payment_status_text")  String? paymentStatusText)  $default,) {final _that = this;
switch (_that) {
case _UserPaymentModel():
return $default(_that.id,_that.name,_that.mobileNo,_that.code,_that.messType,_that.messTime,_that.startDate,_that.endDate,_that.totalAmount,_that.paidAmount,_that.pendingAmount,_that.paymentStatus,_that.paymentStatusText);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int? id, @JsonKey(name: "student_name")  String? name, @JsonKey(name: "mobile_no")  String? mobileNo, @JsonKey(name: "transaction_code")  String? code, @JsonKey(name: "mess_type")  String? messType, @JsonKey(name: "mess_time")  String? messTime, @JsonKey(name: "start_date")  String? startDate, @JsonKey(name: "end_date")  String? endDate, @JsonKey(name: "total_amount")  String? totalAmount, @JsonKey(name: "paid_amount")  String? paidAmount, @JsonKey(name: "pending_amount")  int? pendingAmount, @JsonKey(name: "payment_status")  String? paymentStatus, @JsonKey(name: "payment_status_text")  String? paymentStatusText)?  $default,) {final _that = this;
switch (_that) {
case _UserPaymentModel() when $default != null:
return $default(_that.id,_that.name,_that.mobileNo,_that.code,_that.messType,_that.messTime,_that.startDate,_that.endDate,_that.totalAmount,_that.paidAmount,_that.pendingAmount,_that.paymentStatus,_that.paymentStatusText);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _UserPaymentModel implements UserPaymentModel {
  const _UserPaymentModel({this.id, @JsonKey(name: "student_name") this.name, @JsonKey(name: "mobile_no") this.mobileNo, @JsonKey(name: "transaction_code") this.code, @JsonKey(name: "mess_type") this.messType, @JsonKey(name: "mess_time") this.messTime, @JsonKey(name: "start_date") this.startDate, @JsonKey(name: "end_date") this.endDate, @JsonKey(name: "total_amount") this.totalAmount, @JsonKey(name: "paid_amount") this.paidAmount, @JsonKey(name: "pending_amount") this.pendingAmount, @JsonKey(name: "payment_status") this.paymentStatus, @JsonKey(name: "payment_status_text") this.paymentStatusText});
  factory _UserPaymentModel.fromJson(Map<String, dynamic> json) => _$UserPaymentModelFromJson(json);

@override final  int? id;
@override@JsonKey(name: "student_name") final  String? name;
@override@JsonKey(name: "mobile_no") final  String? mobileNo;
@override@JsonKey(name: "transaction_code") final  String? code;
@override@JsonKey(name: "mess_type") final  String? messType;
@override@JsonKey(name: "mess_time") final  String? messTime;
@override@JsonKey(name: "start_date") final  String? startDate;
@override@JsonKey(name: "end_date") final  String? endDate;
@override@JsonKey(name: "total_amount") final  String? totalAmount;
@override@JsonKey(name: "paid_amount") final  String? paidAmount;
@override@JsonKey(name: "pending_amount") final  int? pendingAmount;
@override@JsonKey(name: "payment_status") final  String? paymentStatus;
@override@JsonKey(name: "payment_status_text") final  String? paymentStatusText;

/// Create a copy of UserPaymentModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UserPaymentModelCopyWith<_UserPaymentModel> get copyWith => __$UserPaymentModelCopyWithImpl<_UserPaymentModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$UserPaymentModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UserPaymentModel&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.mobileNo, mobileNo) || other.mobileNo == mobileNo)&&(identical(other.code, code) || other.code == code)&&(identical(other.messType, messType) || other.messType == messType)&&(identical(other.messTime, messTime) || other.messTime == messTime)&&(identical(other.startDate, startDate) || other.startDate == startDate)&&(identical(other.endDate, endDate) || other.endDate == endDate)&&(identical(other.totalAmount, totalAmount) || other.totalAmount == totalAmount)&&(identical(other.paidAmount, paidAmount) || other.paidAmount == paidAmount)&&(identical(other.pendingAmount, pendingAmount) || other.pendingAmount == pendingAmount)&&(identical(other.paymentStatus, paymentStatus) || other.paymentStatus == paymentStatus)&&(identical(other.paymentStatusText, paymentStatusText) || other.paymentStatusText == paymentStatusText));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,mobileNo,code,messType,messTime,startDate,endDate,totalAmount,paidAmount,pendingAmount,paymentStatus,paymentStatusText);

@override
String toString() {
  return 'UserPaymentModel(id: $id, name: $name, mobileNo: $mobileNo, code: $code, messType: $messType, messTime: $messTime, startDate: $startDate, endDate: $endDate, totalAmount: $totalAmount, paidAmount: $paidAmount, pendingAmount: $pendingAmount, paymentStatus: $paymentStatus, paymentStatusText: $paymentStatusText)';
}


}

/// @nodoc
abstract mixin class _$UserPaymentModelCopyWith<$Res> implements $UserPaymentModelCopyWith<$Res> {
  factory _$UserPaymentModelCopyWith(_UserPaymentModel value, $Res Function(_UserPaymentModel) _then) = __$UserPaymentModelCopyWithImpl;
@override @useResult
$Res call({
 int? id,@JsonKey(name: "student_name") String? name,@JsonKey(name: "mobile_no") String? mobileNo,@JsonKey(name: "transaction_code") String? code,@JsonKey(name: "mess_type") String? messType,@JsonKey(name: "mess_time") String? messTime,@JsonKey(name: "start_date") String? startDate,@JsonKey(name: "end_date") String? endDate,@JsonKey(name: "total_amount") String? totalAmount,@JsonKey(name: "paid_amount") String? paidAmount,@JsonKey(name: "pending_amount") int? pendingAmount,@JsonKey(name: "payment_status") String? paymentStatus,@JsonKey(name: "payment_status_text") String? paymentStatusText
});




}
/// @nodoc
class __$UserPaymentModelCopyWithImpl<$Res>
    implements _$UserPaymentModelCopyWith<$Res> {
  __$UserPaymentModelCopyWithImpl(this._self, this._then);

  final _UserPaymentModel _self;
  final $Res Function(_UserPaymentModel) _then;

/// Create a copy of UserPaymentModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? name = freezed,Object? mobileNo = freezed,Object? code = freezed,Object? messType = freezed,Object? messTime = freezed,Object? startDate = freezed,Object? endDate = freezed,Object? totalAmount = freezed,Object? paidAmount = freezed,Object? pendingAmount = freezed,Object? paymentStatus = freezed,Object? paymentStatusText = freezed,}) {
  return _then(_UserPaymentModel(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,mobileNo: freezed == mobileNo ? _self.mobileNo : mobileNo // ignore: cast_nullable_to_non_nullable
as String?,code: freezed == code ? _self.code : code // ignore: cast_nullable_to_non_nullable
as String?,messType: freezed == messType ? _self.messType : messType // ignore: cast_nullable_to_non_nullable
as String?,messTime: freezed == messTime ? _self.messTime : messTime // ignore: cast_nullable_to_non_nullable
as String?,startDate: freezed == startDate ? _self.startDate : startDate // ignore: cast_nullable_to_non_nullable
as String?,endDate: freezed == endDate ? _self.endDate : endDate // ignore: cast_nullable_to_non_nullable
as String?,totalAmount: freezed == totalAmount ? _self.totalAmount : totalAmount // ignore: cast_nullable_to_non_nullable
as String?,paidAmount: freezed == paidAmount ? _self.paidAmount : paidAmount // ignore: cast_nullable_to_non_nullable
as String?,pendingAmount: freezed == pendingAmount ? _self.pendingAmount : pendingAmount // ignore: cast_nullable_to_non_nullable
as int?,paymentStatus: freezed == paymentStatus ? _self.paymentStatus : paymentStatus // ignore: cast_nullable_to_non_nullable
as String?,paymentStatusText: freezed == paymentStatusText ? _self.paymentStatusText : paymentStatusText // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
