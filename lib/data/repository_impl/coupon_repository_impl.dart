import 'package:padmavatiupdated/core/exporters/app_export.dart';

@LazySingleton(as: CouponRepository)
class CouponRepositoryImpl implements CouponRepository {
  final ApiService _apiService;
  CouponRepositoryImpl(this._apiService);

  @override
  Future<Result<BaseResponseModel<CouponResponseModel>>> getCoupon(
    UserRequest request,
  ) async {
    try {
      final res = await _apiService.getCoupon(request.userId);

      if (res.common.status == true) {
        return Success(res);
      } else {
        return Failure(res.common.message);
      }
    } catch (error) {
      return Failure('Something went wrong.');
    }
  }
}
