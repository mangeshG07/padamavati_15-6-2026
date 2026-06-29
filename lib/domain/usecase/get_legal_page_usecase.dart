import 'package:padmavatiupdated/core/exporters/app_export.dart';

@lazySingleton
class GetLegalPageUsecase {
  final ProfileRepository _repository;
  GetLegalPageUsecase(this._repository);

  Future<Result<BaseResponseModel<List<FacilityModel>>>> call() async {
    return await _repository.getLegalPage();
  }
}
