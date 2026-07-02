import 'package:padmavatiupdated/core/exporters/app_export.dart';

@lazySingleton
class UsedQrListUsecase {
  final DashboardRepository _repository;
  UsedQrListUsecase(this._repository);

  Future<Result<BaseResponseModel<UsedQRResponseModel>>> call(
    UserRequest req,
  ) async {
    return await _repository.usedQrData(req);
  }
}
