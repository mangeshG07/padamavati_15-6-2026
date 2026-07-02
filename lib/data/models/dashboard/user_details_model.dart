import 'package:padmavatiupdated/core/exporters/app_export.dart';

part 'user_details_model.freezed.dart';
part 'user_details_model.g.dart';

@freezed
abstract class UserDetailsModel with _$UserDetailsModel {
  const factory UserDetailsModel({
    @JsonKey(name: 'user_data') UserData? userData,
    @JsonKey(name: 'package_data') PackageData? packageData,
    @JsonKey(name: 'qr_data') QrData? qrData,
    @JsonKey(name: 'payment_data') ScannedPaymentData? paymentData,
  }) = _UserDetailsModel;

  factory UserDetailsModel.fromJson(Map<String, dynamic> json) =>
      _$UserDetailsModelFromJson(json);
}

/// 🔹 USER DATA
@freezed
abstract class UserData with _$UserData {
  const factory UserData({
    @JsonKey(name: 'user_id') int? userId,
    String? name,
    @JsonKey(name: 'mobile_no') String? mobileNo,
    @JsonKey(name: 'profile_image') String? profileImage,
    String? gender,
    @JsonKey(name: 'mess_type') String? messType,
    @JsonKey(name: 'mess_time') String? messTime,
  }) = _UserData;

  factory UserData.fromJson(Map<String, dynamic> json) =>
      _$UserDataFromJson(json);
}

/// 🔹 PACKAGE DATA
@freezed
abstract class PackageData with _$PackageData {
  const factory PackageData({
    @JsonKey(name: 'package_name') String? packageName,
    @JsonKey(name: 'package_type') String? packageType,
    @JsonKey(name: 'package_days') int? packageDays,
    @JsonKey(name: 'package_amount') int? packageAmount,
    @JsonKey(name: 'start_date') String? startDate,
    @JsonKey(name: 'end_date') String? endDate,
  }) = _PackageData;

  factory PackageData.fromJson(Map<String, dynamic> json) =>
      _$PackageDataFromJson(json);
}

/// 🔹 QR DATA
@freezed
abstract class QrData with _$QrData {
  const factory QrData({
    @JsonKey(name: 'total_qrs') int? totalQrs,
    @JsonKey(name: 'used_qrs') int? usedQrs,
    @JsonKey(name: 'pending_qrs') int? pendingQrs,
    @JsonKey(name: 'expired_qrs') int? expiredQrs,
  }) = _QrData;

  factory QrData.fromJson(Map<String, dynamic> json) => _$QrDataFromJson(json);
}

/// 🔹 PAYMENT DATA
@freezed
abstract class ScannedPaymentData with _$ScannedPaymentData {
  const factory ScannedPaymentData({
    @JsonKey(name: 'payment_status') String? paymentStatus,
    @JsonKey(name: 'total_amount') String? totalAmount,
    @JsonKey(name: 'paid_amount') String? paidAmount,
    @JsonKey(name: 'remaining_amount') int? remainingAmount,
  }) = _ScannedPaymentData;

  factory ScannedPaymentData.fromJson(Map<String, dynamic> json) =>
      _$ScannedPaymentDataFromJson(json);
}
