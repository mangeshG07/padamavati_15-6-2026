// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'leave_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_LeaveResponseModel _$LeaveResponseModelFromJson(Map<String, dynamic> json) =>
    _LeaveResponseModel(
      totalCount: (json['total_count'] as num?)?.toInt(),
      totalPages: (json['total_pages'] as num?)?.toInt(),
      currentPage: (json['current_page'] as num?)?.toInt(),
      perPage: (json['per_page'] as num?)?.toInt(),
      leaveRequests: (json['leave_requests'] as List<dynamic>?)
          ?.map((e) => LeaveRequestModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$LeaveResponseModelToJson(_LeaveResponseModel instance) =>
    <String, dynamic>{
      'total_count': instance.totalCount,
      'total_pages': instance.totalPages,
      'current_page': instance.currentPage,
      'per_page': instance.perPage,
      'leave_requests': instance.leaveRequests,
    };
