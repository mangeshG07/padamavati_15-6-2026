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
                          // width: 180.w,
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
                              'We have sent OTP to +91 ${controller.mobileNumber}',
                          fontSize: 14.sp,
                          maxLines: 2,
                          style: theme.textTheme.titleSmall!.copyWith(
                            color: AppColors.grey500,
                          ),
                        ),
                        SizedBox(height: 25.h),

                        /// OTP FIELD
                        _buildOTPField('OTP', theme, context),
                        SizedBox(height: 10.h),

                        _buildResendOtp(),
                        SizedBox(height: 20.h),
                        _buildVerifyButton(),
                        SizedBox(height: 10.h),
                        _buildChangeNumber(),
                      ],
                    ),

                    /// Bottom Text
                    _buildFooter(theme),
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
        fontSize: 20.sp,
        color: Colors.black,
        fontWeight: FontWeight.w600,
      ),
      decoration: BoxDecoration(
        border: Border.all(color: AppColors.grey300),
        color: Colors.white,
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
                value == null || value.isEmpty ? 'Enter valid OTP' : null,
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
        final t = controller.timer.value;

        return t > 0
            ? AppText(
                fontSize: 14.sp,
                text: 'Resend OTP in ($t s)',
                color: Colors.black,
              )
            : GestureDetector(
                onTap: controller.resendOtp,
                child: AppText(
                  text: 'Resend OTP',
                  fontSize: 14.sp,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
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
        onTap: controller.verifyOTP,
        backgroundColor: AppColors.lightPrimary,
      ),
    );
  }

  /// ---------------- Change Number ----------------
  Widget _buildChangeNumber() {
    return GestureDetector(
      onTap: () => AllDialogs().changeNumber(controller.mobileNumber),
      child: Align(
        alignment: Alignment.topRight,
        child: AppText(
          text: "Change Mobile Number",
          fontSize: 14.sp,
          style: TextStyle(
            fontSize: 14.sp,
            color: Colors.black,
            fontWeight: FontWeight.w600,
            decoration: TextDecoration.underline,
            decorationColor: Colors.black,
          ),
        ),
      ),
    );
  }

  /// ---------------- FOOTER ----------------
  Widget _buildFooter(ThemeData theme) {
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
