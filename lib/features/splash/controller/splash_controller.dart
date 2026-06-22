
import 'package:padmavatiupdated/core/exporters/app_export.dart';

@lazySingleton
class SplashController extends GetxController {
  final RemoteConfigService remoteConfig;
  SplashController(this.remoteConfig);

  void checkLogin() async {
    await Future.delayed(const Duration(seconds: 2));

    final token =
        await SecureStorageService.read(AppConstants.userTokenKey) ?? '';

    /// ✅ 1. First check onboarding
    // if (isOnboarded != true) {
    //   Get.offAllNamed(Routes.onboarding);
    //   return;
    // }

    /// ✅ 2. Then check auth
    Future.microtask(() {
      if (token.isEmpty) {
        Get.offAllNamed(Routes.login);
      } else {
        Get.offAllNamed(Routes.mainScreen);
      }
    });
    // _loadRemoteConfig();
  }

  //
  // Future<void> _loadRemoteConfig() async {
  //   try {
  //     await remote.init();
  //
  //     if (remote.maintenance) {
  //       Get.offAllNamed(Routes.maintenance);
  //     }
  //
  //     if (remote.forceUpdate) {
  //       Get.offAllNamed(Routes.updateApp);
  //     }
  //   } catch (e) {
  //     // fallback safe mode
  //   }
  // }
}
