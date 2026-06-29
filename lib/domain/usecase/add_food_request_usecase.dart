import 'package:padmavatiupdated/core/exporters/app_export.dart';

@lazySingleton
class AddFoodRequestUsecase {
  final RequestRepository _repository;
  AddFoodRequestUsecase(this._repository);

  Future<Result<BaseResponseModel>> call(MessRequest request) async {
    return await _repository.addSpecialFoodReq(request);
  }
}
