// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_details_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_UserDetailsModel _$UserDetailsModelFromJson(Map<String, dynamic> json) =>
    _UserDetailsModel(
      userData: json['user_data'] == null
          ? null
          : UserData.fromJson(json['user_data'] as Map<String, dynamic>),
      packageData: json['package_data'] == null
          ? null
          : PackageData.fromJson(json['package_data'] as Map<String, dynamic>),
      qrData: json['qr_data'] == null
          ? null
          : QrData.fromJson(json['qr_data'] as Map<String, dynamic>),
      paymentData: json['payment_data'] == null
          ? null
          : ScannedPaymentData.fromJson(
              json['payment_data'] as Map<String, dynamic>,
            ),
    );

Map<String, dynamic> _$UserDetailsModelToJson(_UserDetailsModel instance) =>
    <String, dynamic>{
      'user_data': instance.userData,
      'package_data': instance.packageData,
      'qr_data': instance.qrData,
      'payment_data': instance.paymentData,
    };

_UserData _$UserDataFromJson(Map<String, dynamic> json) => _UserData(
  userId: (json['user_id'] as num?)?.toInt(),
  name: json['name'] as String?,
  mobileNo: json['mobile_no'] as String?,
  profileImage: json['profile_image'] as String?,
  gender: json['gender'] as String?,
  messType: json['mess_type'] as String?,
  messTime: json['mess_time'] as String?,
);

Map<String, dynamic> _$UserDataToJson(_UserData instance) => <String, dynamic>{
  'user_id': instance.userId,
  'name': instance.name,
  'mobile_no': instance.mobileNo,
  'profile_image': instance.profileImage,
  'gender': instance.gender,
  'mess_type': instance.messType,
  'mess_time': instance.messTime,
};

_PackageData _$PackageDataFromJson(Map<String, dynamic> json) => _PackageData(
  packageName: json['package_name'] as String?,
  packageType: json['package_type'] as String?,
  packageDays: (json['package_days'] as num?)?.toInt(),
  packageAmount: (json['package_amount'] as num?)?.toInt(),
  startDate: json['start_date'] as String?,
  endDate: json['end_date'] as String?,
);

Map<String, dynamic> _$PackageDataToJson(_PackageData instance) =>
    <String, dynamic>{
      'package_name': instance.packageName,
      'package_type': instance.packageType,
      'package_days': instance.packageDays,
      'package_amount': instance.packageAmount,
      'start_date': instance.startDate,
      'end_date': instance.endDate,
    };

_QrData _$QrDataFromJson(Map<String, dynamic> json) => _QrData(
  totalQrs: (json['total_qrs'] as num?)?.toInt(),
  usedQrs: (json['used_qrs'] as num?)?.toInt(),
  pendingQrs: (json['pending_qrs'] as num?)?.toInt(),
  expiredQrs: (json['expired_qrs'] as num?)?.toInt(),
);

Map<String, dynamic> _$QrDataToJson(_QrData instance) => <String, dynamic>{
  'total_qrs': instance.totalQrs,
  'used_qrs': instance.usedQrs,
  'pending_qrs': instance.pendingQrs,
  'expired_qrs': instance.expiredQrs,
};

_ScannedPaymentData _$ScannedPaymentDataFromJson(Map<String, dynamic> json) =>
    _ScannedPaymentData(
      paymentStatus: json['payment_status'] as String?,
      totalAmount: json['total_amount'] as String?,
      paidAmount: json['paid_amount'] as String?,
      remainingAmount: (json['remaining_amount'] as num?)?.toInt(),
    );

Map<String, dynamic> _$ScannedPaymentDataToJson(_ScannedPaymentData instance) =>
    <String, dynamic>{
      'payment_status': instance.paymentStatus,
      'total_amount': instance.totalAmount,
      'paid_amount': instance.paidAmount,
      'remaining_amount': instance.remainingAmount,
    };
