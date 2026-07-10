import 'package:padmavatiupdated/core/exporters/app_export.dart';

@lazySingleton
class DeleteAccountUsecase {
  final ProfileRepository _repository;
  DeleteAccountUsecase(this._repository);

  Future<Result<BaseResponseModel>> call(UserRequest request) async {
    return await _repository.deleteAccount(request);
  }
}
