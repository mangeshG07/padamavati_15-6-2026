import 'package:padmavatiupdated/core/exporters/app_export.dart';

part 'scanned_user_model.g.dart';
part 'scanned_user_model.freezed.dart';

@freezed
abstract class ScannedUserModel with _$ScannedUserModel {
  const factory ScannedUserModel({
    @JsonKey(name: 'student_id') int? studentId,
    @JsonKey(name: 'user_name') String? userName,
    @JsonKey(name: 'profile_image') String? profileImage,
    @JsonKey(name: 'mess_type') String? messType,
    String? meal,
    @JsonKey(name: 'scanned_at') String? scannedAt,
    @JsonKey(name: 'scanned_by') String? scannedBy,
  }) = _ScannedUserModel;

  factory ScannedUserModel.fromJson(Map<String, dynamic> json) =>
      _$ScannedUserModelFromJson(json);
}
