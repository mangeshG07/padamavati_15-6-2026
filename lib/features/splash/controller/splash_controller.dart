import 'package:padmavatiupdated/core/exporters/app_export.dart';

@lazySingleton
class SplashController extends GetxController {
  final RemoteConfigService remoteConfig;
  SplashController(this.remoteConfig);

  void checkLogin() async {
    final tokenFuture = SecureStorageService.read(AppConstants.userTokenKey);
    final roleFuture = SecureStorageService.read(AppConstants.userRollIdKey);

    final results = await Future.wait([tokenFuture, roleFuture]);
    final token = results[0] ?? '';
    final role = results[1] ?? '';

    _navigate(token, role);

    // final token =
    //     await SecureStorageService.read(AppConstants.userTokenKey) ?? '';
    // final role =
    //     await SecureStorageService.read(AppConstants.userRollIdKey) ?? '';

    /// ✅ 1. First check onboarding
    // if (isOnboarded != true) {
    //   Get.offAllNamed(Routes.onboarding);
    //   return;
    // }

    // /// ✅ 2. Then check auth
    // Future.microtask(() {
    //   if (token.isEmpty) {
    //     Get.offAllNamed(Routes.login);
    //   } else {
    //     if (role == '5') {
    //       Get.offAllNamed(Routes.adminMainScreen);
    //     } else {
    //       Get.offAllNamed(Routes.mainScreen);
    //     }
    //   }
    // });
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
