import 'package:padmavatiupdated/core/exporters/app_export.dart';

class ProfileController extends GetxController {
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

  final currentAddressController = TextEditingController();
  final permAddressController = TextEditingController();
  final selectedDegree = Rxn<String>();
  final degreeList = ['BCom', 'BCS', 'BA', 'MCom', 'MCS', 'MA', 'PHD'].obs;

  final facilityList = [
    {
      'image': AppAssets.aboutUs,
      'name': 'About Us',
      'short_description':
          "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since 1966,",
    },
    {
      'image': AppAssets.termsNCondition,
      'name': 'Terms And Condition',
      'short_description':
          "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since 1966,",
    },
    {
      'image': AppAssets.timeTable,
      'name': 'Meal Time Table',
      'short_description':
          "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since 1966,",
    },
    {
      'image': AppAssets.refinedOil,
      'name': 'Refined Oil',
      'short_description':
          "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since 1966,",
    },
    {
      'image': AppAssets.cleanWater,
      'name': 'Clean Water',
      'short_description':
          "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since 1966,",
    },
    {
      'image': AppAssets.tiffin,
      'name': 'Tiffin Service',
      'short_description':
          "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since 1966,",
    },
  ].obs;
}
