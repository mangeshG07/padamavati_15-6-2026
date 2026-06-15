import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:padmavatiupdated/data/models/auth/user_model.dart';

part 'login_data_model.freezed.dart';
part 'login_data_model.g.dart';

@freezed
abstract class LoginDataModel with _$LoginDataModel {
  const factory LoginDataModel({
    @JsonKey(name: 'user_details')
   UserModel? userDetails,

    @JsonKey(name: 'otp_verified')
    bool? otpVerified,

    @JsonKey(name: 'mobile_no')
    String? mobileNumber,

    @JsonKey(name: 'user_exists')
    bool? userExists,
  }) = _LoginDataModel;

  factory LoginDataModel.fromJson(Map<String, dynamic> json) =>
      _$LoginDataModelFromJson(json);
}