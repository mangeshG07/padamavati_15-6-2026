import 'package:padmavatiupdated/core/exporters/app_export.dart';

part 'login_data_model.freezed.dart';
part 'login_data_model.g.dart';

@freezed
abstract class LoginDataModel with _$LoginDataModel {
  const factory LoginDataModel({
    @JsonKey(name: 'user_details') UserModel? userDetails,

    @JsonKey(name: 'otp_verified') bool? otpVerified,

    @JsonKey(name: 'mobile_no') String? mobileNumber,

    @JsonKey(name: 'user_exists') bool? userExists,
  }) = _LoginDataModel;

  factory LoginDataModel.fromJson(Map<String, dynamic> json) =>
      _$LoginDataModelFromJson(json);
}
