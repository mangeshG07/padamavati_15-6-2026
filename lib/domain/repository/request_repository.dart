import 'package:padmavatiupdated/core/exporters/app_export.dart';

abstract class RequestRepository {
  Future<Result<BaseResponseModel<LeaveResponseModel>>> leaveRequests(
    UserRequest request,
  );

  Future<Result<BaseResponseModel<List<MasterDataModel>>>> specialFoodItems();

  Future<Result<BaseResponseModel<FoodResponseModel>>> specialFoodRequests(
    UserRequest request,
  );

  Future<Result<BaseResponseModel>> addLeaveReq(AddLeaveRequest request);

  Future<Result<BaseResponseModel>> addSpecialFoodReq(MessRequest request);
}
