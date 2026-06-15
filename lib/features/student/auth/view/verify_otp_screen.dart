import 'package:padmavatiupdated/core/exporters/app_export.dart';

class VerifyOTP extends GetView<OtpController> {
  const VerifyOTP({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          surfaceTintColor: Colors.black,
          foregroundColor: Colors.black,
          iconTheme: const IconThemeData(color: Colors.black),
        ),
        body: SafeArea(
          child: SingleChildScrollView(
            padding: EdgeInsets.symmetric(horizontal: 20.w),
            child: ConstrainedBox(
              constraints: BoxConstraints(
                minHeight:
                    Get.height -
                    MediaQuery.of(context).padding.top -
                    kToolbarHeight,
              ),
              child: Form(
                key: controller.verifyKey,
                autovalidateMode: AutovalidateMode.onUserInteraction,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        Image.asset(
                          AppAssets.splashLogo,
                          height: 180.h,
                          width: 180.w,
                        ),
                        SizedBox(height: 20.h),
                        AppText(
                          text: 'OTP Verification',
                          fontSize: 24.sp,
                          style: theme.textTheme.headlineSmall!.copyWith(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        AppText(
                          text:
                              'We have sent OTP to +91 ${Get.find<LoginController>().numberController.text.trim()}',
                          fontSize: 14.sp,
                          maxLines: 2,
                          style: theme.textTheme.titleSmall!.copyWith(
                            color: AppColors.grey500,
                          ),
                        ),
                        const SizedBox(height: 22),
                        _buildOTPField('OTP', theme, context),
                        const SizedBox(height: 8),
                        _buildResendOtp(),
                        const SizedBox(height: 22),
                        _buildVerifyButton(),
                        const SizedBox(height: 8),
                        _buildChangeNumber(),
                      ],
                    ),

                    /// Bottom Text
                    _buildDevelopedByText(theme),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  /// ---------------- OTP FIELD ----------------
  Widget _buildOTPField(String label, ThemeData theme, BuildContext context) {
    final defaultPinTheme = PinTheme(
      width: 50.w,
      height: 50.h,
      textStyle: TextStyle(
        fontSize: 22.sp,
        color: theme.textTheme.bodySmall!.color,
        fontWeight: FontWeight.w600,
      ),
      decoration: BoxDecoration(
        border: Border.all(color: AppColors.grey300),
        color: theme.scaffoldBackgroundColor,
        borderRadius: BorderRadius.circular(10.r),
      ),
    );

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        AppLabel(text: label, color: theme.colorScheme.onSurface),
        SizedBox(height: 8.h),
        Center(
          child: Pinput(
            controller: controller.otpController,
            length: 6,
            keyboardType: TextInputType.number,
            validator: (value) =>
                value == null || value.isEmpty ? 'OTP is required' : null,
            defaultPinTheme: defaultPinTheme,
            focusedPinTheme: defaultPinTheme.copyWith(
              decoration: defaultPinTheme.decoration!.copyWith(
                border: Border.all(color: AppColors.lightPrimary, width: 2),
              ),
            ),
            submittedPinTheme: defaultPinTheme.copyWith(
              decoration: defaultPinTheme.decoration!.copyWith(
                border: Border.all(color: AppColors.lightPrimary),
              ),
            ),
            onCompleted: (pin) {
              FocusScope.of(context).unfocus();
            },
          ),
        ),
      ],
    );
  }

  /// ---------------- RESEND OTP ----------------
  Widget _buildResendOtp() {
    return Align(
      alignment: Alignment.topLeft,
      child: Obx(() {
        return controller.start.value > 0
            ? AppText(
                text:
                    'Didn’t receive it? Resend OTP in (${controller.start.value}s)',
                color: AppColors.lightTextLowColor,
                fontSize: 14.sp,
              )
            : GestureDetector(
                // onTap: () => Get.find<LoginController>().auth(),
                child: AppText(
                  text: 'Resend OTP',
                  color: AppColors.lightPrimary,
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w600,
                ),
              );
      }),
    );
  }

  /// ---------------- VERIFY BUTTON ----------------
  Widget _buildVerifyButton() {
    return Obx(
      () => AppButton(
        text: 'Verify OTP',
        loading: controller.isLoading.value,
        // onTap: () => Get.offAllNamed(Routes.mainScreen),
        onTap: () async => await controller.verifyOTP(
          Get.find<LoginController>().numberController.text,
        ),
        backgroundColor: AppColors.lightPrimary,
      ),
    );
  }

  /// ---------------- Change Number ----------------
  Widget _buildChangeNumber() {
    return GestureDetector(
      onTap: () => AllDialogs().changeNumber(
        Get.find<LoginController>().numberController.text,
      ),
      child: Align(
        alignment: Alignment.topRight,
        child: AppText(
          text: "Change Mobile Number",
          fontSize: 14.sp,
          // textAlign: TextAlign.end,
          style: TextStyle(
            fontSize: 14.sp,
            color: AppColors.lightPrimary,
            fontWeight: FontWeight.w600,
            decoration: TextDecoration.underline,
            decorationColor: AppColors.lightPrimary,
          ),
        ),
      ),
    );
  }

  Widget _buildDevelopedByText(ThemeData theme) {
    return Padding(
      padding: EdgeInsets.only(bottom: 20.h, top: 20.h),
      child: Center(
        child: AppText(
          text: 'Design & Developed by\nDeepminds Infotech Pvt.Ltd',
          fontSize: 14.sp,
          maxLines: 2,
          textAlign: TextAlign.center,
          style: theme.textTheme.titleSmall!.copyWith(color: AppColors.grey500),
        ),
      ),
    );
  }
}
