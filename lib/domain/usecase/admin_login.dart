import 'package:padmavatiupdated/core/exporters/app_export.dart';

@lazySingleton
class AdminLoginUsecase {
  final AdminAuthRepository _repository;

  AdminLoginUsecase(this._repository);

  Future<Result<BaseResponseModel<UserModel>>> call(AdminEntity request) async {
    return await _repository.adminLogin(request);
  }
}
