import 'package:padmavatiupdated/core/exporters/app_export.dart';

class OtpController extends GetxController with CodeAutoFill {
  final SendOtpUsecase _sendOtpUsecase;
  final VerifyOtpUsecase verifyOtpUsecase;
  final TimerService _timerService;
  OtpController(
    this.verifyOtpUsecase,
    this._timerService,
    this._sendOtpUsecase,
  );

  final otpController = TextEditingController();
  final verifyKey = GlobalKey<FormState>();

  final isLoading = false.obs;
  final timer = 30.obs;

  late String mobileNumber;

  @override
  void onInit() {
    super.onInit();

    mobileNumber = Get.arguments ?? '';
    _startTimer();
    listenForCode();
    SmsAutoFill().getAppSignature;
  }

  /// ---------------- TIMER ----------------
  void _startTimer() {
    _timerService.start(seconds: 30, onTick: (value) => timer.value = value);
  }

  void resendOtp() {
    if (timer.value > 0) return;

    _startTimer();

    /// 🔥 Call resend API here
    _sendOtpUsecase.call(LoginRequest(mobileNumber));
  }

  /// ---------------- AUTO FILL ----------------
  @override
  void codeUpdated() {
    if (code != null) {
      otpController.text = _extractOtp(code!);
    }
  }

  /// Extract OTP from full SMS
  String _extractOtp(String sms) {
    final exp = RegExp(r'\b\d{6}\b');
    return exp.firstMatch(sms)?.group(0) ?? "";
  }

  /// ---------------- VERIFY  OTP  ----------------
  Future<void> verifyOTP() async {
    if (!verifyKey.currentState!.validate()) return;
    if (isLoading.value) return;

    isLoading(true);
    try {
      final response = await verifyOtpUsecase.call(
        LoginRequest(mobileNumber, otp: otpController.text),
      );

      if (response.common?.status == true) {
        await _handleSuccess(response, mobileNumber);
      } else {
        _handleError(response.common?.message ?? 'Something went wrong');
        if (response.data.userExists == false) {
          Get.toNamed(Routes.registerScreen, arguments: mobileNumber);
        }
      }
    } catch (e) {
      _handleError('Network error. Please try again');
    } finally {
      isLoading(false);
    }
  }

  Future<void> _handleSuccess(response, String number) async {
    await SecureStorageService.write(
      AppConstants.userTokenKey,
      response.data.userDetails!.authKey,
    );

    await SecureStorageService.write(
      AppConstants.userIdKey,
      response.data.userDetails!.userId.toString(),
    );

    await LocalStorage.setBool(AppConstants.userOnboardingKey, true);

    CustomSnackbar.show(
      context: Get.context!,
      type: SnackbarType.success,
      message: response.common!.message,
    );

    if (response.data.userExists == true) {
      Get.offAllNamed(Routes.mainScreen);
    } else {
      Get.offAllNamed(Routes.registerScreen, arguments: number);
    }
  }

  void _handleError(String message) {
    CustomSnackbar.show(
      context: Get.context!,
      type: SnackbarType.error,
      message: message,
    );
  }

  @override
  void onClose() {
    _timerService.dispose();
    SmsAutoFill().unregisterListener();
    otpController.dispose();
    super.onClose();
  }
}
