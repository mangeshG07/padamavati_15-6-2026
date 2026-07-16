import 'package:padmavatiupdated/core/exporters/app_export.dart';

import '../view/remote_config.dart';

@lazySingleton
class SplashController extends GetxController {
  final RemoteConfigServiceNew remoteConfig;

  SplashController(this.remoteConfig);

  RxBool isLoaded = false.obs;

  @override
  void onInit() {
    super.onInit();
    initApp();
  }

  Future<void> initApp() async {
    try {
      /// ✅ 1. Load remote config FROM API
      await remoteConfig.init();

      isLoaded.value = true; // ✅ trigger UI update

      /// ⏳ Give UI time to render image
      await Future.delayed(const Duration(seconds: 2));

      /// ✅ 2. Maintenance
      if (remoteConfig.isMaintenance) {
        // Get.offAllNamed(Routes.maintenance);
        return;
      }

      /// ✅ 3. Force update
      if (remoteConfig.isForceUpdate) {
        // Get.offAllNamed(Routes.updateApp);
        return;
      }
      //
      // /// ✅ 4. Login check (API based)
      // if (!remoteConfig.isLoggedIn) {
      //   Get.offAllNamed(Routes.login);
      //   return;
      // }

      /// ✅ 5. Local storage (token + role)
      final token =
          await SecureStorageService.read(AppConstants.userTokenKey) ?? '';

      final role =
          await SecureStorageService.read(AppConstants.userRollIdKey) ?? '';

      _navigate(token, role);
    } catch (e) {
      /// ✅ fallback safety
      Get.offAllNamed(Routes.login);
    }
  }

  void _navigate(String token, String role) {
    if (token.isEmpty) {
      Get.offAllNamed(Routes.login);
      return;
    }

    switch (role) {
      case '5':
        Get.offAllNamed(Routes.adminMainScreen);
        break;
      default:
        Get.offAllNamed(Routes.mainScreen);
    }
  }
}

// @lazySingleton
// class SplashController extends GetxController {
//   final RemoteConfigService remoteConfig;
//   SplashController(this.remoteConfig);
//
//   void checkLogin() async {
//     final tokenFuture = SecureStorageService.read(AppConstants.userTokenKey);
//     final roleFuture = SecureStorageService.read(AppConstants.userRollIdKey);
//
//     final results = await Future.wait([tokenFuture, roleFuture]);
//     final token = results[0] ?? '';
//     final role = results[1] ?? '';
//
//     _navigate(token, role);
//   }
//
//   void _navigate(String token, String role) {
//     if (token.isEmpty) {
//       Get.offAllNamed(Routes.login);
//       return;
//     }
//
//     switch (role) {
//       case '5':
//         Get.offAllNamed(Routes.adminMainScreen);
//         break;
//       default:
//         Get.offAllNamed(Routes.mainScreen);
//     }
//   }
// }
