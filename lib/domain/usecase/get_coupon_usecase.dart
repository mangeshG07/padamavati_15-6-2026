import 'package:padmavatiupdated/core/exporters/app_export.dart';

@lazySingleton
class GetCouponUsecase {
  final CouponRepository _repository;

  GetCouponUsecase(this._repository);

  Future<Result<BaseResponseModel<CouponResponseModel>>> getCoupon(
    UserRequest request,
  ) async {
    return await _repository.getCoupon(request);
  }
}
