import 'package:padmavatiupdated/core/exporters/app_export.dart';

@lazySingleton
class GetPackagesUsecase {
  final HomeRepository _homeRepository;

  GetPackagesUsecase(this._homeRepository);

  Future<Result<BaseResponseModel<List<PackageModel>>>> call() async {
    return await _homeRepository.getPackageList();
  }
}
