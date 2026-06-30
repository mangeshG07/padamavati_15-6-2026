import 'package:padmavatiupdated/core/exporters/app_export.dart';

@lazySingleton
class GetDashboardUsecase {
  final DashboardRepository _repository;
  GetDashboardUsecase(this._repository);

  Future<Result<BaseResponseModel<DashboardModel>>> call(
    UserRequest request,
  ) async {
    return await _repository.getDashboard(request);
  }
}
