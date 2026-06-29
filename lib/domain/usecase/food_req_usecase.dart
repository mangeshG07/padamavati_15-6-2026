import 'package:padmavatiupdated/core/exporters/app_export.dart';

@lazySingleton
class GetFoodRequests {
  final RequestRepository _repository;
  GetFoodRequests(this._repository);

  Future<Result<BaseResponseModel<FoodResponseModel>>> call(
    UserRequest request,
  ) async {
    return await _repository.specialFoodRequests(request);
  }
}
