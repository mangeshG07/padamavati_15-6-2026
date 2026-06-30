import 'package:padmavatiupdated/core/exporters/app_export.dart';

@LazySingleton(as: AdminRequestRepository)
class AdminRequestRepositoryImpl implements AdminRequestRepository {
  final ApiService _apiService;
  AdminRequestRepositoryImpl(this._apiService);

  @override
  Future<Result<BaseResponseModel<FoodResponseModel>>> specialFoodRequests(
    UserRequest request,
  ) async {
    try {
      final res = await _apiService.adminFoodRequest(
        request.userId,
        request.pageNo,
      );

      if (res.common.status == true) {
        return Success(res);
      } else {
        return Failure(res.common.message);
      }
    } catch (error) {
      return Failure('Something went wrong.');
    }
  }
}
