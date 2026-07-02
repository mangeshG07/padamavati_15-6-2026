// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'leave_request_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_LeaveRequestModel _$LeaveRequestModelFromJson(Map<String, dynamic> json) =>
    _LeaveRequestModel(
      id: (json['id'] as num?)?.toInt(),
      name: json['name'] as String?,
      fromDate: json['from_date'] as String?,
      toDate: json['to_date'] as String?,
      totalDays: (json['total_days'] as num?)?.toInt(),
      gender: json['gender'] as String?,
      branchId: (json['branch_id'] as num?)?.toInt(),
      status: json['status'] as String?,
      statusText: json['status_text'] as String?,
      createdAt: json['created_at'] as String?,
      requestedOn: json['requested_on'] as String?,
    );

Map<String, dynamic> _$LeaveRequestModelToJson(_LeaveRequestModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'from_date': instance.fromDate,
      'to_date': instance.toDate,
      'total_days': instance.totalDays,
      'gender': instance.gender,
      'branch_id': instance.branchId,
      'status': instance.status,
      'status_text': instance.statusText,
      'created_at': instance.createdAt,
      'requested_on': instance.requestedOn,
    };
