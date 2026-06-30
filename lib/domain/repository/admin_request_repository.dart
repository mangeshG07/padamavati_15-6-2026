import 'package:padmavatiupdated/core/exporters/app_export.dart';

abstract class AdminRequestRepository {
  Future<Result<BaseResponseModel<FoodResponseModel>>> specialFoodRequests(
    UserRequest request,
  );
}
