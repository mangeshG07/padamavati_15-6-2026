// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'profile_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ProfileResponseModel _$ProfileResponseModelFromJson(
  Map<String, dynamic> json,
) => _ProfileResponseModel(
  id: (json['id'] as num?)?.toInt(),
  name: json['name'] as String?,
  mobileNo: json['mobile_no'] as String?,
  perAddress: json['per_address'] as String?,
  curAddress: json['curr_address'] as String?,
  profileImage: json['profile_image'] as String?,
  degreeId: (json['degree_id'] as num?)?.toInt(),
  degree: json['degree'] as String?,
  branch: json['branch'] as String?,
  position: json['position'] as String?,
);

Map<String, dynamic> _$ProfileResponseModelToJson(
  _ProfileResponseModel instance,
) => <String, dynamic>{
  'id': instance.id,
  'name': instance.name,
  'mobile_no': instance.mobileNo,
  'per_address': instance.perAddress,
  'curr_address': instance.curAddress,
  'profile_image': instance.profileImage,
  'degree_id': instance.degreeId,
  'degree': instance.degree,
  'branch': instance.branch,
  'position': instance.position,
};
