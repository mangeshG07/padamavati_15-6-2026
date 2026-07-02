import 'package:padmavatiupdated/core/exporters/app_export.dart';

@lazySingleton
class AdminProfileUsecase {
  final AdminProfileRepository _repository;
  AdminProfileUsecase(this._repository);

  Future<Result<BaseResponseModel<ProfileResponseModel>>> call(
    UserRequest request,
  ) async {
    return await _repository.adminProfile(request);
  }
}
