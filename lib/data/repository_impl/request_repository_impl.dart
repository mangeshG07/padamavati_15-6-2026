import 'package:padmavatiupdated/core/exporters/app_export.dart';

@LazySingleton(as: RequestRepository)
class RequestRepositoryImpl implements RequestRepository {
  final ApiService _apiService;

  RequestRepositoryImpl(this._apiService);

  @override
  Future<Result<BaseResponseModel<LeaveResponseModel>>> leaveRequests(
    UserRequest request,
  ) async {
    try {
      final res = await _apiService.leaveRequests(
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

  @override
  Future<Result<BaseResponseModel<List<MasterDataModel>>>>
  specialFoodItems() async {
    try {
      final res = await _apiService.specialFoodItems();
      if (res.common.status == true) {
        return Success(res);
      } else {
        return Failure(res.common.message);
      }
    } catch (error) {
      return Failure('Something went wrong.');
    }
  }

  @override
  Future<Result<BaseResponseModel<FoodResponseModel>>> specialFoodRequests(
    UserRequest request,
  ) async {
    try {
      final res = await _apiService.specialFoodRequests(
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

  @override
  Future<Result<BaseResponseModel>> addLeaveReq(AddLeaveRequest request) async {
    try {
      final res = await _apiService.addLeaveReq(
        request.userId,
        request.fromDate,
        request.toDate,
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

  @override
  Future<Result<BaseResponseModel>> addSpecialFoodReq(
    MessRequest request,
  ) async {
    try {
      final res = await _apiService.addSpecialFoodReq(
        request.userId,
        request.specialfoodId,
        request.date,
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
