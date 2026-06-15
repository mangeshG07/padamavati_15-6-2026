import 'package:padmavatiupdated/core/exporters/app_export.dart';

@lazySingleton
class RegisterUsecase {
  final AuthRepository _authRepository;
  RegisterUsecase(this._authRepository);

  Future<RegisterResponseModel> call(
    RegisterRequest registerRequest,
  ) async {
    return await _authRepository.registerStudent(registerRequest);
  }
}
