import 'package:padmavatiupdated/core/exporters/app_export.dart';

class AdminLogin extends GetView<AdminLoginController> {
  const AdminLogin({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return GestureDetector(
      onTap: FocusScope.of(context).unfocus,
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: CustomAppbar(backgroundColor: Colors.white),
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
                key: controller.adminLoginKey,
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
                        SizedBox(height: 16.h),
                        AppText(
                          text: 'Admin Login',
                          fontSize: 24.sp,
                          style: theme.textTheme.headlineSmall!.copyWith(
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),
                        AppText(
                          text: 'Login using your username and password.',
                          fontSize: 14.sp,
                          maxLines: 2,
                          style: theme.textTheme.titleSmall!.copyWith(
                            color: AppColors.grey500,
                          ),
                        ),
                        SizedBox(height: 30.h),
                        _buildUserNameField('Username', theme),
                        SizedBox(height: 12.h),
                        _buildPasswordField('Password', theme),
                        SizedBox(height: 24.h),
                        _buildLoginButton(),
                        SizedBox(height: 40.h),
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

  Widget _buildUserNameField(String label, ThemeData theme) {
    return AppTextField(
      fillColor: AppColors.textFieldBgColor,
      controller: controller.usernameController,
      hint: 'Enter your username',
      label: label,
      filled: true,
      focusedBorder: theme.inputDecorationTheme.focusedBorder,
      validator: (value) =>
          AppValidators.required(value, message: 'Please enter username'),
      // value!.trim().isEmpty ? 'Please enter username'.tr : null,
    );
  }

  Widget _buildPasswordField(String label, ThemeData theme) {
    return Obx(
      () => AppTextField(
        fillColor: AppColors.textFieldBgColor,
        obscureText: controller.isObscure.value,
        controller: controller.passwordController,
        hint: 'Enter password',
        label: label,
        filled: true,
        focusedBorder: theme.inputDecorationTheme.focusedBorder,
        validator: (value) =>
            AppValidators.required(value, message: 'Please enter password'),
        suffixIcon: GestureDetector(
          onTap: controller.togglePassword,
          child: paddedIcon(
            icon: controller.isObscure.isTrue
                ? HugeIcons.strokeRoundedViewOff
                : HugeIcons.strokeRoundedView,
            color: Colors.grey,
          ),
        ),
      ),
    );
  }

  Widget _buildLoginButton() {
    return Obx(
      () => AppButton(
        backgroundColor: Colors.black,
        text: 'Login',
        loading: controller.isLoading.value,
        onTap: () async {
          if (controller.adminLoginKey.currentState!.validate()) {
            await controller.adminLogin();
          }
        },
      ),
    );
  }

  Widget _buildDevelopedByText(ThemeData theme) {
    return SafeArea(
      child: Padding(
        padding: EdgeInsets.only(bottom: 20.h, top: 20.h),
        child: Center(
          child: AppText(
            text: 'Design & Developed by\nDeepminds Infotech Pvt.Ltd',
            fontSize: 14.sp,
            maxLines: 2,
            textAlign: TextAlign.center,
            style: theme.textTheme.titleSmall!.copyWith(
              color: AppColors.grey500,
            ),
          ),
        ),
      ),
    );
  }
}
