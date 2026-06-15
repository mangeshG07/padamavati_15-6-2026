import 'package:padmavatiupdated/core/exporters/app_export.dart';

class AdminProfileController extends GetxController {
  List<Map<String, dynamic>> get menuList => [
    {
      'title': 'Edit Profile',
      'icon': HugeIcons.strokeRoundedUserCircle,
      'onTap': () => Get.toNamed(Routes.editProfile),
    },
    {
      'title': 'Facility',
      'icon': HugeIcons.strokeRoundedSpoonAndKnife,
      'onTap': () => Get.toNamed(Routes.facilityScreen),
    },
    {
      'title': 'Privacy Policy',
      'icon': HugeIcons.strokeRoundedMailOpen,
      // 'onTap': () => Get.toNamed(Routes.viewed),
    },
    {
      'title': 'Logout',
      'icon': HugeIcons.strokeRoundedLogout01,
      'onTap': () async {
        AllDialogs().showConfirmationDialog(
          'Logout',
          'Are you sure you want to logout?',
          onConfirm: () async {
            Get.back();
            await LocalStorage.clear();
            await SecureStorageService.clear();

            Get.snackbar('Logout', 'You have logged out successfully');

            Get.offAllNamed(Routes.login);
          },
        );
      },
    },
  ];
}
