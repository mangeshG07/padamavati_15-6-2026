import 'package:padmavatiupdated/core/exporters/app_export.dart';

class AdminLoginController extends BaseController {
  final AdminLoginUsecase _loginUsecase;
  AdminLoginController(this._loginUsecase);

  final usernameController = TextEditingController();
  final passwordController = TextEditingController();
  final adminLoginKey = GlobalKey<FormState>();

  final isObscure = true.obs;

  Future<void> adminLogin() async {
    await callApi<BaseResponseModel<UserModel>>(
      request: () => _loginUsecase.call(
        AdminEntity(
          usernameController.text.trim(),
          passwordController.text.trim(),
        ),
      ),
      loader: isLoading,
      showError: true,
      onSuccess: (data) async {
        await SecureStorageService.write(
          AppConstants.userTokenKey,
          data.data!.authKey,
        );
        await SecureStorageService.write(
          AppConstants.userIdKey,
          data.data!.userId.toString(),
        );
        await SecureStorageService.write(
          AppConstants.userRollIdKey,
          data.data!.roleId.toString(),
        );
        Get.offAllNamed(Routes.adminMainScreen);
        CustomSnackbar.show(
          context: Get.context!,
          message: data.common.message,
          type: SnackbarType.success,
        );
      },
      onError: (msg) {
        CustomSnackbar.show(context: Get.context!, message: msg);
      },
    );
  }
}
