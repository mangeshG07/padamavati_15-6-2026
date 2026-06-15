import 'package:padmavatiupdated/core/exporters/app_export.dart';

@lazySingleton
class SendOtpUsecase {
  final AuthRepository _repository;

  SendOtpUsecase(this._repository);

  Future<LoginResponseModel> call(LoginRequest loginRequest) async {
    return await _repository.login(loginRequest);
  }
}
