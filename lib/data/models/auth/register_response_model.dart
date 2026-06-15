import 'package:padmavatiupdated/core/exporters/app_export.dart';

part 'register_response_model.freezed.dart';
part 'register_response_model.g.dart';

@freezed
abstract class RegisterResponseModel with _$RegisterResponseModel {
  const factory RegisterResponseModel({
    required CommonModel common,
    UserModel? user,
  }) = _RegisterResponseModel;

  factory RegisterResponseModel.fromJson(Map<String, dynamic> json) =>
      _$RegisterResponseModelFromJson(json);
}
