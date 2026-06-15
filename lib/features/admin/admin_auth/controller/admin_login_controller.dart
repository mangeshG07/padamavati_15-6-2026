import 'package:padmavatiupdated/core/exporters/app_export.dart';

class AdminLoginController extends GetxController {
  // final LoginUsecase _loginUsecase;

  // LoginController(this._loginUsecase);

  final usernameController = TextEditingController();
  final passwordController = TextEditingController();
  final adminLoginKey = GlobalKey<FormState>();

  final isLoading = false.obs;
  final isObscure = false.obs;

  // Future<void> auth() async {
  //   if (!loginKey.currentState!.validate()) return;
  //
  //   try {
  //     isLoading.value = true;
  //
  //     final response = await _loginUsecase(
  //       LoginRequest(numberController.text.trim()),
  //     );
  //
  //     if (response['common']['status'] == true) {
  //       CustomSnackbar.show(
  //         context: Get.context!,
  //         type: SnackbarType.success,
  //         message: response['common']['message'] ?? '',
  //       );
  //       Get.toNamed(Routes.verifyOTP);
  //     } else {
  //       CustomSnackbar.show(
  //         context: Get.context!,
  //         type: SnackbarType.error,
  //         message: response['common']['message'] ?? '',
  //       );
  //     }
  //   } catch (e) {
  //     // AppLogger.error(e);
  //   } finally {
  //     isLoading.value = false;
  //   }
  // }
}
