import 'package:padmavatiupdated/core/exporters/app_export.dart';

@lazySingleton
class ScannedUserDetailsUsecase {
  final DashboardRepository _repository;
  ScannedUserDetailsUsecase(this._repository);

  Future<Result<BaseResponseModel<UserDetailsModel>>> call(
    UserRequest req,
  ) async {
    return await _repository.scannedUserDetailsData(req);
  }
}
