import 'package:padmavatiupdated/core/exporters/app_export.dart';

class CouponController extends BaseController {
  final GetCouponUsecase _couponUsecase;

  CouponController(this._couponUsecase);

  final selectedType = 0.obs;

  final couponSummary = CouponSummaryModel().obs;
  final todayQR = <QRModel>[].obs;
  final usedQR = <QRModel>[].obs;

  Future<void> getCoupon() async {
    final userId =
        await SecureStorageService.read(AppConstants.userIdKey) ?? '';
    await callApi<BaseResponseModel<CouponResponseModel>>(
      request: () => _couponUsecase.getCoupon(UserRequest(userId)),
      loader: isLoading,
      onSuccess: (data) {
        couponSummary.value = data.data!.couponSummary!;
        todayQR.value = data.data!.todayQr ?? [];
        usedQR.value = data.data!.scannedQr ?? [];
      },
    );
  }
}
