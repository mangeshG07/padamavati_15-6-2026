import 'package:padmavatiupdated/core/exporters/app_export.dart';

class CouponController extends BaseController {
  final GetCouponUsecase _couponUsecase;

  CouponController(this._couponUsecase);

  final selectedType = 0.obs;

  final usedCouponList = [
    {
      'date': '23 May 2026',
      'status': {'day': 'Not Used', 'night': 'Not Used'},
    },
    {
      'date': '22 May 2026',
      'status': {'day': 'Used', 'night': 'Not Used'},
    },
    {
      'date': '21 May 2026',
      'status': {'day': 'Used', 'night': 'Used'},
    },
    {
      'date': '20 May 2026',
      'status': {'day': 'Used', 'night': 'Used'},
    },
  ].obs;

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
