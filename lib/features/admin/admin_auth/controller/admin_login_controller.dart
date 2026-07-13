import 'package:padmavatiupdated/core/exporters/app_export.dart';

class AdminLoginController extends BaseController {
  final AdminLoginUsecase _loginUsecase;
  AdminLoginController(this._loginUsecase);

  final usernameController = TextEditingController();
  final passwordController = TextEditingController();
  final adminLoginKey = GlobalKey<FormState>();

  final isObscure = true.obs;

  void togglePassword() => isObscure.toggle();

  Future<void> adminLogin() async {
    final username = usernameController.text.trim();
    final password = passwordController.text.trim();

    await callApi<BaseResponseModel<UserModel>>(
      request: () => _loginUsecase.call(AdminEntity(username, password)),
      loader: isLoading,
      showError: true,
      onSuccess: (data) async {
        final user = data.data!;

        await Future.wait([
          SecureStorageService.write(AppConstants.userTokenKey, user.authKey),
          SecureStorageService.write(
            AppConstants.userIdKey,
            user.userId.toString(),
          ),
          SecureStorageService.write(
            AppConstants.userRollIdKey,
            user.roleId.toString(),
          ),
        ]);
        Get.offAllNamed(Routes.adminMainScreen);

        CustomSnackbar.show(
          context: Get.context!,
          message: data.common.message,
          type: SnackbarType.success,
        );
      },
      onError: (msg) {
        CustomSnackbar.show(
          context: Get.context!,
          message: msg,
          type: SnackbarType.error,
        );
      },
    );
  }

  @override
  void onClose() {
    usernameController.dispose();
    passwordController.dispose();
    super.onClose();
  }
}
