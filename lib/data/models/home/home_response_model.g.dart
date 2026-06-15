// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_HomeResponseModel _$HomeResponseModelFromJson(
  Map<String, dynamic> json,
) => _HomeResponseModel(
  branchName: json['branch_name'] as String?,
  sliders: (json['sliders'] as List<dynamic>?)
      ?.map((e) => MasterDataModel.fromJson(e as Map<String, dynamic>))
      .toList(),
  messRequest: json['mess_request'] as bool?,
  messRequestAccepted: json['mess_request_accepted'] as bool?,
  payTransactionDetails: (json['payment_transaction_details'] as List<dynamic>?)
      ?.map((e) => PaymentDetailsModel.fromJson(e as Map<String, dynamic>))
      .toList(),
);

Map<String, dynamic> _$HomeResponseModelToJson(_HomeResponseModel instance) =>
    <String, dynamic>{
      'branch_name': instance.branchName,
      'sliders': instance.sliders,
      'mess_request': instance.messRequest,
      'mess_request_accepted': instance.messRequestAccepted,
      'payment_transaction_details': instance.payTransactionDetails,
    };
