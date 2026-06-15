// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_config_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_AppConfigModel _$AppConfigModelFromJson(Map<String, dynamic> json) =>
    _AppConfigModel(
      version: json['version'] as String,
      forceUpdate: json['force_update'] as bool?,
      isMaintenance: json['is_maintenance'] as bool?,
      showPopup: json['show_popup'] as bool?,
      url: json['url'] as String?,
      maintenanceMsg: json['maintenance_msg'] as String?,
    );

Map<String, dynamic> _$AppConfigModelToJson(_AppConfigModel instance) =>
    <String, dynamic>{
      'version': instance.version,
      'force_update': instance.forceUpdate,
      'is_maintenance': instance.isMaintenance,
      'show_popup': instance.showPopup,
      'url': instance.url,
      'maintenance_msg': instance.maintenanceMsg,
    };
