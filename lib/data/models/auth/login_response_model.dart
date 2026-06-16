import 'package:padmavatiupdated/core/exporters/app_export.dart';

part 'login_response_model.freezed.dart';

part 'login_response_model.g.dart';

@freezed
abstract class LoginResponseModel with _$LoginResponseModel {
  const factory LoginResponseModel({
    CommonModel? common,
    AppConfigModel? android,
    AppConfigModel? ios,
    required LoginDataModel data,
    @JsonKey(name: 'user_login') bool? userLogin,
  }) = _LoginResponseModel;

  factory LoginResponseModel.fromJson(Map<String, dynamic> json) =>
      _$LoginResponseModelFromJson(json);
}
