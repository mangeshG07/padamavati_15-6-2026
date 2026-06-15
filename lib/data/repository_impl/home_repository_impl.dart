import 'package:padmavatiupdated/core/exporters/app_export.dart';

@LazySingleton(as: HomeRepository)
class HomeRepositoryImpl extends HomeRepository {
  final ApiService _apiService;

  HomeRepositoryImpl(this._apiService);

  @override
  Future<BaseResponseModel<HomeResponseModel>> getHome(
    UserRequest request,
  ) async {
    return await _apiService.getHome(request.userId);
  }

  @override
  Future<BaseResponseModel<List<PackageModel>>> getPackageList() async {
    return await _apiService.getPackageList();
  }

  @override
  Future<BaseResponseModel> startMessReq(StartMessRequest request) async {
    return await _apiService.startMessReq(
      request.userId,
      request.ratePackageId,
      request.date,
    );
  }
}
