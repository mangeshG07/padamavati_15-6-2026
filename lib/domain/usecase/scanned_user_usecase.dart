import 'package:padmavatiupdated/core/exporters/app_export.dart';

@lazySingleton
class ScannedUserUsecase {
  final DashboardRepository _repository;
  ScannedUserUsecase(this._repository);

  Future<Result<BaseResponseModel<ScannedResponseModel>>> call(
    UserRequest request,
  ) async {
    return await _repository.scannedUserData(request);
  }
}
