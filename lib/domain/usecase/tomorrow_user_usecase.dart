import 'package:padmavatiupdated/core/exporters/app_export.dart';

@lazySingleton
class TomorrowUserUsecase {
  final DashboardRepository _repository;
  TomorrowUserUsecase(this._repository);

  Future<Result<BaseResponseModel<RequestsResponseModel>>> call(
    UserRequest request,
  ) async {
    return await _repository.tomorrowRequests(request);
  }
}
