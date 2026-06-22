import 'package:padmavatiupdated/core/exporters/app_export.dart';

abstract class CouponRepository {
  Future<Result<BaseResponseModel<CouponResponseModel>>> getCoupon(
    UserRequest request,
  );
}
