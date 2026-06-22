import 'package:padmavatiupdated/core/exporters/app_export.dart';

class LoginScreen extends GetView<LoginController> {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          surfaceTintColor: Colors.white,
          actions: [
            TextButton(
              onPressed: () => Get.toNamed(Routes.adminLogin),
              child: AppText(
                text: 'Branch Admin',
                style: theme.textTheme.bodyMedium!.copyWith(
                  color: AppColors.lightPrimary,
                  decoration: TextDecoration.underline,
                  decorationColor: AppColors.lightPrimary,
                ),
                fontSize: 16.sp,
              ),
            ),
          ],
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
                key: controller.loginKey,
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
                          text: 'Welcome Back',
                          fontSize: 24.sp,
                          style: theme.textTheme.headlineSmall!.copyWith(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        AppText(
                          text: 'Login using your mobile number',
                          fontSize: 14.sp,
                          maxLines: 2,
                          style: theme.textTheme.titleSmall!.copyWith(
                            color: AppColors.grey500,
                          ),
                        ),
                        SizedBox(height: 30.h),
                        _buildNumberField('Mobile Number', theme),
                        SizedBox(height: 24.h),
                        _buildSendOtpButton(),
                        SizedBox(height: 40.h),
                        _buildSignUpText(),
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

  Widget _buildNumberField(String label, ThemeData theme) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: 8.h),
        AppTextField(
          key: const Key("mobileField"),
          fillColor: AppColors.textFieldBgColor,
          controller: controller.numberController,
          hint: 'Enter Mobile Number',
          keyboardType: TextInputType.number,
          label: label,
          filled: true,
          focusedBorder: theme.inputDecorationTheme.focusedBorder,
          inputFormatters: [
            FilteringTextInputFormatter.digitsOnly,
            LengthLimitingTextInputFormatter(10),
          ],
          validator: (value) {
            if (value == null || value.isEmpty) {
              return 'Please enter mobile number';
            }
            if (!RegExp(r'^[6-9]\d{9}$').hasMatch(value)) {
              return 'Enter a valid mobile number';
            }
            return null;
          },
        ),
      ],
    );
  }

  Widget _buildSendOtpButton() {
    return Obx(
      () => AppButton(
        key: const Key("sendOtpButton"),
        backgroundColor: AppColors.lightPrimary,
        text: 'Send OTP',
        loading: controller.isLoading.value,
        onTap: () async {
          // Get.toNamed(Routes.verifyOTP);
          if (controller.loginKey.currentState!.validate()) {
            await controller.sendOTP();
          }
        },
      ),
    );
  }

  Widget _buildSignUpText() {
    return RichText(
      text: TextSpan(
        text: "New User? ",
        style: TextStyle(
          fontSize: 14.sp,
          color: Colors.grey,
          fontWeight: FontWeight.w500,
        ),
        children: [
          TextSpan(
            text: 'Register Now',
            style: TextStyle(
              color: AppColors.lightPrimary,
              fontWeight: FontWeight.bold,
            ),
            recognizer: TapGestureRecognizer()
              ..onTap = () {
                Get.toNamed(Routes.registerScreen);
              },
          ),
        ],
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
