import 'package:padmavatiupdated/core/exporters/app_export.dart';

@lazySingleton
class VerifyOtpUsecase {
  final AuthRepository repository;

  VerifyOtpUsecase(this.repository);

  Future<LoginResponseModel> call(LoginRequest request) async {
    return await repository.verifyOTP(request);
  }
}
