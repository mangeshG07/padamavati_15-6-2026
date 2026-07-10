import 'package:padmavatiupdated/core/exporters/app_export.dart';

abstract class HomeRepository {
  Future<Result<BaseResponseModel<HomeResponseModel>>> getHome(
    UserRequest request,
  );

  Future<Result<BaseResponseModel<List<PackageModel>>>> getPackageList(
    UserRequest request,
  );

  Future<Result<BaseResponseModel>> startMessReq(StartMessRequest request);
}
