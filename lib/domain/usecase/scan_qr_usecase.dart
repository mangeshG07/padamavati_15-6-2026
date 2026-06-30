import 'package:padmavatiupdated/core/exporters/app_export.dart';

@lazySingleton
class ScanQRUsecase {
  final DashboardRepository _repository;
  ScanQRUsecase(this._repository);

  Future<Result<BaseResponseModel<QRResponseModel>>> call(
    UserRequest request,
  ) async {
    return await _repository.scanQr(request);
  }
}
