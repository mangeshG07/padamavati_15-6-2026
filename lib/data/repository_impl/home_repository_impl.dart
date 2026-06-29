import 'package:padmavatiupdated/core/exporters/app_export.dart';

@LazySingleton(as: HomeRepository)
class HomeRepositoryImpl extends HomeRepository {
  final ApiService _apiService;

  HomeRepositoryImpl(this._apiService);

  @override
  Future<Result<BaseResponseModel<HomeResponseModel>>> getHome(
    UserRequest request,
  ) async {
    try {
      final res = await _apiService.getHome(request.userId);

      if (res.common.status == true) {
        return Success(res);
      } else {
        return Failure(res.common.message);
      }
    } catch (e) {
      return Failure('Something went wrong.');
    }
    // return await _apiService.getHome(request.userId);
  }

  @override
  Future<Result<BaseResponseModel<List<PackageModel>>>> getPackageList() async {
    try {
      final res = await _apiService.getPackageList();

      if (res.common.status == true) {
        return Success(res);
      } else {
        return Failure(res.common.message);
      }
    } catch (e) {
      return Failure('Something went wrong.');
    }

    // return await _apiService.getPackageList();
  }

  @override
  Future<Result<BaseResponseModel>> startMessReq(
    StartMessRequest request,
  ) async {
    try {
      final res = await _apiService.startMessReq(
        request.userId,
        request.ratePackageId,
        request.date,
      );
      if (res.common.status == true) {
        return Success(res);
      } else {
        return Failure(res.common.message);
      }
    } catch (e) {
      return Failure('Something went wrong.');
    }
  }
}
