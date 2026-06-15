import 'package:padmavatiupdated/core/exporters/app_export.dart';

@lazySingleton
class SplashController extends GetxController {
  void checkLogin() async {
    await Future.delayed(const Duration(seconds: 2));
    final isOnboarded =
        await LocalStorage.getBool(AppConstants.userOnboardingKey) ?? false;

    final token =
        await SecureStorageService.read(AppConstants.userTokenKey) ?? '';

    /// ✅ 1. First check onboarding
    // if (isOnboarded != true) {
    //   Get.offAllNamed(Routes.onboarding);
    //   return;
    // }

    /// ✅ 2. Then check auth
    if (token.isEmpty) {
      Get.offAllNamed(Routes.login);
    } else {
      Get.offAllNamed(Routes.mainScreen);
    }
  }
}
