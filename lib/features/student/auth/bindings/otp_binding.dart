import '../../../../core/exporters/app_export.dart';

class OtpBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<OtpController>(
      () => OtpController(getIt<VerifyOtpUsecase>(), getIt(), getIt()),
    );
  }
}
