import 'package:padmavatiupdated/core/exporters/app_export.dart';

part 'user_model.freezed.dart';
part 'user_model.g.dart';

@freezed
abstract class UserModel with _$UserModel {
  const factory UserModel({
    @JsonKey(name: 'user_id') required int userId,
    required String name,

    @JsonKey(name: 'mobile_number') String? mobileNo,
    @JsonKey(name: 'mobile_no') String? mobileNum,

    @JsonKey(name: 'auth_key') required String authKey,

    @JsonKey(name: 'profile_image') String? profileImage,
    @JsonKey(name: 'role_id') int? roleId,
  }) = _UserModel;

  factory UserModel.fromJson(Map<String, dynamic> json) =>
      _$UserModelFromJson(json);
}
