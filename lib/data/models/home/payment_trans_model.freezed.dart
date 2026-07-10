// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'payment_trans_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$PaymentDetailsModel {

@JsonKey(name: 'transaction_id') int? get transactionId;@JsonKey(name: 'mess_type') String? get messType;@JsonKey(name: 'mess_type_name') String? get messTypeName;@JsonKey(name: 'mess_time') String? get messTime;@JsonKey(name: 'start_month') String? get startMonth;@JsonKey(name: 'end_month') String? get endMonth; String? get duration;@JsonKey(name: 'start_date') String? get startDate;@JsonKey(name: 'end_date') String? get endDate;@JsonKey(name: 'paid_amount') String? get paidAmount;@JsonKey(name: 'due_amount') int? get dueAmount;@JsonKey(name: 'payment_status') String? get paymentStatus; List<PaymentModel>? get payments;
/// Create a copy of PaymentDetailsModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PaymentDetailsModelCopyWith<PaymentDetailsModel> get copyWith => _$PaymentDetailsModelCopyWithImpl<PaymentDetailsModel>(this as PaymentDetailsModel, _$identity);

  /// Serializes this PaymentDetailsModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PaymentDetailsModel&&(identical(other.transactionId, transactionId) || other.transactionId == transactionId)&&(identical(other.messType, messType) || other.messType == messType)&&(identical(other.messTypeName, messTypeName) || other.messTypeName == messTypeName)&&(identical(other.messTime, messTime) || other.messTime == messTime)&&(identical(other.startMonth, startMonth) || other.startMonth == startMonth)&&(identical(other.endMonth, endMonth) || other.endMonth == endMonth)&&(identical(other.duration, duration) || other.duration == duration)&&(identical(other.startDate, startDate) || other.startDate == startDate)&&(identical(other.endDate, endDate) || other.endDate == endDate)&&(identical(other.paidAmount, paidAmount) || other.paidAmount == paidAmount)&&(identical(other.dueAmount, dueAmount) || other.dueAmount == dueAmount)&&(identical(other.paymentStatus, paymentStatus) || other.paymentStatus == paymentStatus)&&const DeepCollectionEquality().equals(other.payments, payments));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,transactionId,messType,messTypeName,messTime,startMonth,endMonth,duration,startDate,endDate,paidAmount,dueAmount,paymentStatus,const DeepCollectionEquality().hash(payments));

@override
String toString() {
  return 'PaymentDetailsModel(transactionId: $transactionId, messType: $messType, messTypeName: $messTypeName, messTime: $messTime, startMonth: $startMonth, endMonth: $endMonth, duration: $duration, startDate: $startDate, endDate: $endDate, paidAmount: $paidAmount, dueAmount: $dueAmount, paymentStatus: $paymentStatus, payments: $payments)';
}


}

/// @nodoc
abstract mixin class $PaymentDetailsModelCopyWith<$Res>  {
  factory $PaymentDetailsModelCopyWith(PaymentDetailsModel value, $Res Function(PaymentDetailsModel) _then) = _$PaymentDetailsModelCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'transaction_id') int? transactionId,@JsonKey(name: 'mess_type') String? messType,@JsonKey(name: 'mess_type_name') String? messTypeName,@JsonKey(name: 'mess_time') String? messTime,@JsonKey(name: 'start_month') String? startMonth,@JsonKey(name: 'end_month') String? endMonth, String? duration,@JsonKey(name: 'start_date') String? startDate,@JsonKey(name: 'end_date') String? endDate,@JsonKey(name: 'paid_amount') String? paidAmount,@JsonKey(name: 'due_amount') int? dueAmount,@JsonKey(name: 'payment_status') String? paymentStatus, List<PaymentModel>? payments
});




}
/// @nodoc
class _$PaymentDetailsModelCopyWithImpl<$Res>
    implements $PaymentDetailsModelCopyWith<$Res> {
  _$PaymentDetailsModelCopyWithImpl(this._self, this._then);

  final PaymentDetailsModel _self;
  final $Res Function(PaymentDetailsModel) _then;

/// Create a copy of PaymentDetailsModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? transactionId = freezed,Object? messType = freezed,Object? messTypeName = freezed,Object? messTime = freezed,Object? startMonth = freezed,Object? endMonth = freezed,Object? duration = freezed,Object? startDate = freezed,Object? endDate = freezed,Object? paidAmount = freezed,Object? dueAmount = freezed,Object? paymentStatus = freezed,Object? payments = freezed,}) {
  return _then(_self.copyWith(
transactionId: freezed == transactionId ? _self.transactionId : transactionId // ignore: cast_nullable_to_non_nullable
as int?,messType: freezed == messType ? _self.messType : messType // ignore: cast_nullable_to_non_nullable
as String?,messTypeName: freezed == messTypeName ? _self.messTypeName : messTypeName // ignore: cast_nullable_to_non_nullable
as String?,messTime: freezed == messTime ? _self.messTime : messTime // ignore: cast_nullable_to_non_nullable
as String?,startMonth: freezed == startMonth ? _self.startMonth : startMonth // ignore: cast_nullable_to_non_nullable
as String?,endMonth: freezed == endMonth ? _self.endMonth : endMonth // ignore: cast_nullable_to_non_nullable
as String?,duration: freezed == duration ? _self.duration : duration // ignore: cast_nullable_to_non_nullable
as String?,startDate: freezed == startDate ? _self.startDate : startDate // ignore: cast_nullable_to_non_nullable
as String?,endDate: freezed == endDate ? _self.endDate : endDate // ignore: cast_nullable_to_non_nullable
as String?,paidAmount: freezed == paidAmount ? _self.paidAmount : paidAmount // ignore: cast_nullable_to_non_nullable
as String?,dueAmount: freezed == dueAmount ? _self.dueAmount : dueAmount // ignore: cast_nullable_to_non_nullable
as int?,paymentStatus: freezed == paymentStatus ? _self.paymentStatus : paymentStatus // ignore: cast_nullable_to_non_nullable
as String?,payments: freezed == payments ? _self.payments : payments // ignore: cast_nullable_to_non_nullable
as List<PaymentModel>?,
  ));
}

}


/// Adds pattern-matching-related methods to [PaymentDetailsModel].
extension PaymentDetailsModelPatterns on PaymentDetailsModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PaymentDetailsModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PaymentDetailsModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PaymentDetailsModel value)  $default,){
final _that = this;
switch (_that) {
case _PaymentDetailsModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PaymentDetailsModel value)?  $default,){
final _that = this;
switch (_that) {
case _PaymentDetailsModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'transaction_id')  int? transactionId, @JsonKey(name: 'mess_type')  String? messType, @JsonKey(name: 'mess_type_name')  String? messTypeName, @JsonKey(name: 'mess_time')  String? messTime, @JsonKey(name: 'start_month')  String? startMonth, @JsonKey(name: 'end_month')  String? endMonth,  String? duration, @JsonKey(name: 'start_date')  String? startDate, @JsonKey(name: 'end_date')  String? endDate, @JsonKey(name: 'paid_amount')  String? paidAmount, @JsonKey(name: 'due_amount')  int? dueAmount, @JsonKey(name: 'payment_status')  String? paymentStatus,  List<PaymentModel>? payments)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PaymentDetailsModel() when $default != null:
return $default(_that.transactionId,_that.messType,_that.messTypeName,_that.messTime,_that.startMonth,_that.endMonth,_that.duration,_that.startDate,_that.endDate,_that.paidAmount,_that.dueAmount,_that.paymentStatus,_that.payments);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'transaction_id')  int? transactionId, @JsonKey(name: 'mess_type')  String? messType, @JsonKey(name: 'mess_type_name')  String? messTypeName, @JsonKey(name: 'mess_time')  String? messTime, @JsonKey(name: 'start_month')  String? startMonth, @JsonKey(name: 'end_month')  String? endMonth,  String? duration, @JsonKey(name: 'start_date')  String? startDate, @JsonKey(name: 'end_date')  String? endDate, @JsonKey(name: 'paid_amount')  String? paidAmount, @JsonKey(name: 'due_amount')  int? dueAmount, @JsonKey(name: 'payment_status')  String? paymentStatus,  List<PaymentModel>? payments)  $default,) {final _that = this;
switch (_that) {
case _PaymentDetailsModel():
return $default(_that.transactionId,_that.messType,_that.messTypeName,_that.messTime,_that.startMonth,_that.endMonth,_that.duration,_that.startDate,_that.endDate,_that.paidAmount,_that.dueAmount,_that.paymentStatus,_that.payments);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'transaction_id')  int? transactionId, @JsonKey(name: 'mess_type')  String? messType, @JsonKey(name: 'mess_type_name')  String? messTypeName, @JsonKey(name: 'mess_time')  String? messTime, @JsonKey(name: 'start_month')  String? startMonth, @JsonKey(name: 'end_month')  String? endMonth,  String? duration, @JsonKey(name: 'start_date')  String? startDate, @JsonKey(name: 'end_date')  String? endDate, @JsonKey(name: 'paid_amount')  String? paidAmount, @JsonKey(name: 'due_amount')  int? dueAmount, @JsonKey(name: 'payment_status')  String? paymentStatus,  List<PaymentModel>? payments)?  $default,) {final _that = this;
switch (_that) {
case _PaymentDetailsModel() when $default != null:
return $default(_that.transactionId,_that.messType,_that.messTypeName,_that.messTime,_that.startMonth,_that.endMonth,_that.duration,_that.startDate,_that.endDate,_that.paidAmount,_that.dueAmount,_that.paymentStatus,_that.payments);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _PaymentDetailsModel implements PaymentDetailsModel {
  const _PaymentDetailsModel({@JsonKey(name: 'transaction_id') this.transactionId, @JsonKey(name: 'mess_type') this.messType, @JsonKey(name: 'mess_type_name') this.messTypeName, @JsonKey(name: 'mess_time') this.messTime, @JsonKey(name: 'start_month') this.startMonth, @JsonKey(name: 'end_month') this.endMonth, this.duration, @JsonKey(name: 'start_date') this.startDate, @JsonKey(name: 'end_date') this.endDate, @JsonKey(name: 'paid_amount') this.paidAmount, @JsonKey(name: 'due_amount') this.dueAmount, @JsonKey(name: 'payment_status') this.paymentStatus, final  List<PaymentModel>? payments}): _payments = payments;
  factory _PaymentDetailsModel.fromJson(Map<String, dynamic> json) => _$PaymentDetailsModelFromJson(json);

@override@JsonKey(name: 'transaction_id') final  int? transactionId;
@override@JsonKey(name: 'mess_type') final  String? messType;
@override@JsonKey(name: 'mess_type_name') final  String? messTypeName;
@override@JsonKey(name: 'mess_time') final  String? messTime;
@override@JsonKey(name: 'start_month') final  String? startMonth;
@override@JsonKey(name: 'end_month') final  String? endMonth;
@override final  String? duration;
@override@JsonKey(name: 'start_date') final  String? startDate;
@override@JsonKey(name: 'end_date') final  String? endDate;
@override@JsonKey(name: 'paid_amount') final  String? paidAmount;
@override@JsonKey(name: 'due_amount') final  int? dueAmount;
@override@JsonKey(name: 'payment_status') final  String? paymentStatus;
 final  List<PaymentModel>? _payments;
@override List<PaymentModel>? get payments {
  final value = _payments;
  if (value == null) return null;
  if (_payments is EqualUnmodifiableListView) return _payments;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}


/// Create a copy of PaymentDetailsModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PaymentDetailsModelCopyWith<_PaymentDetailsModel> get copyWith => __$PaymentDetailsModelCopyWithImpl<_PaymentDetailsModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PaymentDetailsModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PaymentDetailsModel&&(identical(other.transactionId, transactionId) || other.transactionId == transactionId)&&(identical(other.messType, messType) || other.messType == messType)&&(identical(other.messTypeName, messTypeName) || other.messTypeName == messTypeName)&&(identical(other.messTime, messTime) || other.messTime == messTime)&&(identical(other.startMonth, startMonth) || other.startMonth == startMonth)&&(identical(other.endMonth, endMonth) || other.endMonth == endMonth)&&(identical(other.duration, duration) || other.duration == duration)&&(identical(other.startDate, startDate) || other.startDate == startDate)&&(identical(other.endDate, endDate) || other.endDate == endDate)&&(identical(other.paidAmount, paidAmount) || other.paidAmount == paidAmount)&&(identical(other.dueAmount, dueAmount) || other.dueAmount == dueAmount)&&(identical(other.paymentStatus, paymentStatus) || other.paymentStatus == paymentStatus)&&const DeepCollectionEquality().equals(other._payments, _payments));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,transactionId,messType,messTypeName,messTime,startMonth,endMonth,duration,startDate,endDate,paidAmount,dueAmount,paymentStatus,const DeepCollectionEquality().hash(_payments));

@override
String toString() {
  return 'PaymentDetailsModel(transactionId: $transactionId, messType: $messType, messTypeName: $messTypeName, messTime: $messTime, startMonth: $startMonth, endMonth: $endMonth, duration: $duration, startDate: $startDate, endDate: $endDate, paidAmount: $paidAmount, dueAmount: $dueAmount, paymentStatus: $paymentStatus, payments: $payments)';
}


}

/// @nodoc
abstract mixin class _$PaymentDetailsModelCopyWith<$Res> implements $PaymentDetailsModelCopyWith<$Res> {
  factory _$PaymentDetailsModelCopyWith(_PaymentDetailsModel value, $Res Function(_PaymentDetailsModel) _then) = __$PaymentDetailsModelCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'transaction_id') int? transactionId,@JsonKey(name: 'mess_type') String? messType,@JsonKey(name: 'mess_type_name') String? messTypeName,@JsonKey(name: 'mess_time') String? messTime,@JsonKey(name: 'start_month') String? startMonth,@JsonKey(name: 'end_month') String? endMonth, String? duration,@JsonKey(name: 'start_date') String? startDate,@JsonKey(name: 'end_date') String? endDate,@JsonKey(name: 'paid_amount') String? paidAmount,@JsonKey(name: 'due_amount') int? dueAmount,@JsonKey(name: 'payment_status') String? paymentStatus, List<PaymentModel>? payments
});




}
/// @nodoc
class __$PaymentDetailsModelCopyWithImpl<$Res>
    implements _$PaymentDetailsModelCopyWith<$Res> {
  __$PaymentDetailsModelCopyWithImpl(this._self, this._then);

  final _PaymentDetailsModel _self;
  final $Res Function(_PaymentDetailsModel) _then;

/// Create a copy of PaymentDetailsModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? transactionId = freezed,Object? messType = freezed,Object? messTypeName = freezed,Object? messTime = freezed,Object? startMonth = freezed,Object? endMonth = freezed,Object? duration = freezed,Object? startDate = freezed,Object? endDate = freezed,Object? paidAmount = freezed,Object? dueAmount = freezed,Object? paymentStatus = freezed,Object? payments = freezed,}) {
  return _then(_PaymentDetailsModel(
transactionId: freezed == transactionId ? _self.transactionId : transactionId // ignore: cast_nullable_to_non_nullable
as int?,messType: freezed == messType ? _self.messType : messType // ignore: cast_nullable_to_non_nullable
as String?,messTypeName: freezed == messTypeName ? _self.messTypeName : messTypeName // ignore: cast_nullable_to_non_nullable
as String?,messTime: freezed == messTime ? _self.messTime : messTime // ignore: cast_nullable_to_non_nullable
as String?,startMonth: freezed == startMonth ? _self.startMonth : startMonth // ignore: cast_nullable_to_non_nullable
as String?,endMonth: freezed == endMonth ? _self.endMonth : endMonth // ignore: cast_nullable_to_non_nullable
as String?,duration: freezed == duration ? _self.duration : duration // ignore: cast_nullable_to_non_nullable
as String?,startDate: freezed == startDate ? _self.startDate : startDate // ignore: cast_nullable_to_non_nullable
as String?,endDate: freezed == endDate ? _self.endDate : endDate // ignore: cast_nullable_to_non_nullable
as String?,paidAmount: freezed == paidAmount ? _self.paidAmount : paidAmount // ignore: cast_nullable_to_non_nullable
as String?,dueAmount: freezed == dueAmount ? _self.dueAmount : dueAmount // ignore: cast_nullable_to_non_nullable
as int?,paymentStatus: freezed == paymentStatus ? _self.paymentStatus : paymentStatus // ignore: cast_nullable_to_non_nullable
as String?,payments: freezed == payments ? _self._payments : payments // ignore: cast_nullable_to_non_nullable
as List<PaymentModel>?,
  ));
}


}

// dart format on
