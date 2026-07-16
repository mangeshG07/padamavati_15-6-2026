import 'package:padmavatiupdated/core/exporters/app_export.dart';

@lazySingleton
class ExpireCouponUsecase {
  final PeopleRepository _repository;
  ExpireCouponUsecase(this._repository);

  Future<Result<BaseResponseModel<ExpireResponseModel>>> call(
    UserRequest request,
  ) async {
    return await _repository.expireQrData(request);
  }
}
