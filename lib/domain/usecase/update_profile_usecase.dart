import 'package:padmavatiupdated/core/exporters/app_export.dart';

@lazySingleton
class UpdateProfileUsecase {
  final ProfileRepository _repository;
  const UpdateProfileUsecase(this._repository);

  Future<Result<BaseResponseModel>> call(UpdateProfileEntity request) async {
    return await _repository.updateProfile(request);
  }
}
