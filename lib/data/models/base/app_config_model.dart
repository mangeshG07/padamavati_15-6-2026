import 'package:freezed_annotation/freezed_annotation.dart';

part 'app_config_model.freezed.dart';
part 'app_config_model.g.dart';

@freezed
abstract class AppConfigModel with _$AppConfigModel {
  const factory AppConfigModel({
    required String version,

    @JsonKey(name: 'force_update') bool? forceUpdate,

    @JsonKey(name: 'is_maintenance') bool? isMaintenance,

    @JsonKey(name: 'show_popup') bool? showPopup,

    required String? url,

    @JsonKey(name: 'maintenance_msg') String? maintenanceMsg,
  }) = _AppConfigModel;

  factory AppConfigModel.fromJson(Map<String, dynamic> json) =>
      _$AppConfigModelFromJson(json);
}
