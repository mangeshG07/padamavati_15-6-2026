import 'package:padmavatiupdated/core/exporters/app_export.dart';

@lazySingleton
class GetHomeUsecase {
  final HomeRepository _homeRepository;

  GetHomeUsecase(this._homeRepository);

  Future<Result<BaseResponseModel<HomeResponseModel>>> call(
    UserRequest request,
  ) async {
    return await _homeRepository.getHome(request);
  }
}
