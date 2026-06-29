import 'package:padmavatiupdated/core/exporters/app_export.dart';

@lazySingleton
class ProfileUsecase {
  final ProfileRepository _repository;
  ProfileUsecase(this._repository);

  Future<Result<BaseResponseModel<ProfileResponseModel>>> call(
    UserRequest request,
  ) async {
    return await _repository.getProfile(request);
  }
}
