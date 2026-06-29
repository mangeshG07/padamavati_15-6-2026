import 'package:padmavatiupdated/core/exporters/app_export.dart';

@lazySingleton
class GetFacilityUsecase {
  final ProfileRepository _repository;
  GetFacilityUsecase(this._repository);

  Future<Result<BaseResponseModel<List<FacilityModel>>>> call() async {
    return await _repository.getFacility();
  }
}
