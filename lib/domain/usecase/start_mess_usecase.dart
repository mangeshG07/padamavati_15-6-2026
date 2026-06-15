import 'package:padmavatiupdated/core/exporters/app_export.dart';

@lazySingleton
class StartMessUsecase {
  final HomeRepository _homeRepository;

  StartMessUsecase(this._homeRepository);

  Future<BaseResponseModel> call(StartMessRequest request) async {
    return await _homeRepository.startMessReq(request);
  }
}
