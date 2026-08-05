import 'package:padmavatiupdated/core/exporters/app_export.dart';
part 'qr_user_data.g.dart';
part 'qr_user_data.freezed.dart';

@freezed
abstract class QRUserDataModel with _$QRUserDataModel {
  const factory QRUserDataModel({
    @JsonKey(name: 'user_id') int? userId,
    String? name,
    String? branch,
    @JsonKey(name: 'profile_image') String? profileImage,
    String? gender,
    @JsonKey(name: 'mess_type') String? messType,
    @JsonKey(name: 'mess_time') String? messTime,
    @JsonKey(name: 'remaining_coupons') int? remainingCoupons,
    @JsonKey(name: 'last_mess_day') String? lastMessDay,
  }) = _QRUserDataModel;
  factory QRUserDataModel.fromJson(Map<String, dynamic> json) =>
      _$QRUserDataModelFromJson(json);
}
