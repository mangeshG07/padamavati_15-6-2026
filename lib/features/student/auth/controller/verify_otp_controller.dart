import 'package:padmavatiupdated/core/exporters/app_export.dart';

class OtpController extends GetxController with CodeAutoFill {
  final VerifyOtpUsecase verifyOtpUsecase;
  OtpController(this.verifyOtpUsecase);

  final otpController = TextEditingController();
  final verifyKey = GlobalKey<FormState>();
  final isLoading = false.obs;
  final start = 30.obs;
  Timer? _timer;

  @override
  void onInit() {
    startTimer();
    listenForCode();
    SmsAutoFill().getAppSignature;
    super.onInit();
  }

  @override
  void codeUpdated() {
    if (code != null) {
      otpController.text = extractOtp(code!);
    }
  }

  void startTimer() {
    start.value = 30;
    _timer?.cancel();

    _timer = Timer.periodic(const Duration(seconds: 1), (_) {
      if (start.value == 0) {
        _timer?.cancel();
      } else {
        start.value--;
      }
    });
  }

  void stopTimer() {
    _timer?.cancel();
  }

  /// Extract OTP from full SMS
  String extractOtp(String sms) {
    final exp = RegExp(r'\b\d{6}\b');
    return exp.firstMatch(sms)?.group(0) ?? "";
  }

  Future<void> verifyOTP(String number) async {
    if (!verifyKey.currentState!.validate()) return;
    try {
      isLoading(true);
      // final response =
      await verifyOtpUsecase.call(
        LoginRequest(number, otp: otpController.text),
      );
      // if (response.common.status == true) {
      //   await SecureStorageService.write(
      //     AppConstants.userTokenKey,
      //     response.data.userDetails!.authKey,
      //   );
      //   await SecureStorageService.write(
      //     AppConstants.userIdKey,
      //     response.data.userDetails!.userId.toString(),
      //   );
      //   await LocalStorage.setBool(AppConstants.userOnboardingKey, true);
      //   CustomSnackbar.show(
      //     context: Get.context!,
      //     type: SnackbarType.success,
      //     message: response.common.message,
      //   );
      //
      //   if (response.data.userExists == true) {
      //     Get.find<NavigationController>().currentIndex.value = 0;
      //     Get.offAllNamed(Routes.mainScreen);
      //   } else {
      //     Get.offAllNamed(Routes.registerScreen, arguments: number);
      //   }
      // } else {
      //   CustomSnackbar.show(
      //     context: Get.context!,
      //     type: SnackbarType.error,
      //     message: response.common.message,
      //   );
      //   if (response.data.userExists == false) {
      //     Get.toNamed(Routes.registerScreen, arguments: number);
      //   }
      // }
    } finally {
      isLoading(false);
    }
  }

  @override
  void onClose() {
    _timer?.cancel();
    SmsAutoFill().unregisterListener();
    otpController.dispose();
    super.onClose();
  }
}
