import 'package:padmavatiupdated/core/exporters/app_export.dart';

abstract class HomeRepository {
  Future<BaseResponseModel<HomeResponseModel>> getHome(UserRequest request);

  Future<BaseResponseModel<List<PackageModel>>> getPackageList();

  Future<BaseResponseModel> startMessReq(StartMessRequest request);
}
