import 'package:padmavatiupdated/core/exporters/app_export.dart';

@lazySingleton
class GetAdminFoodRequests {
  final AdminRequestRepository _repository;
  GetAdminFoodRequests(this._repository);

  Future<Result<BaseResponseModel<FoodResponseModel>>> call(
    UserRequest request,
  ) async {
    return await _repository.specialFoodRequests(request);
  }
}
