import 'package:padmavatiupdated/core/exporters/app_export.dart';

class ProfileController extends BaseController {
  final ProfileUsecase _profileUsecase;
  final UpdateProfileUsecase _updateProfileUsecase;
  final GetDegreeListUsecase _degreeListUsecase;
  final GetLegalPageUsecase _legalPageUsecase;
  final GetFacilityUsecase _facilityUsecase;
  final DeleteAccountUsecase _deleteAccountUsecase;

  ProfileController(
    this._profileUsecase,
    this._degreeListUsecase,
    this._updateProfileUsecase,
    this._legalPageUsecase,
    this._facilityUsecase,
    this._deleteAccountUsecase,
  );

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
      'title': 'Help And Support',
      'icon': HugeIcons.strokeRoundedMailOpen,
      'onTap': () => Get.toNamed(Routes.helpAndSupport),
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

  /// ------------------Get Profile ------------------ ///

  final profileData = ProfileResponseModel().obs;

  Future<void> getProfile() async {
    final userId =
        await SecureStorageService.read(AppConstants.userIdKey) ?? '';
    await callApi<BaseResponseModel<ProfileResponseModel>>(
      request: () => _profileUsecase.call(UserRequest(userId)),
      loader: isLoading,
      onSuccess: (data) {
        profileData.value = data.data!;
      },
    );
  }

  /// ------------------ DegreeList ------------------ ///
  final isDegreeLoading = false.obs;
  final degreeList = <MasterDataModel>[].obs;

  Future<void> fetchDegree() async {
    try {
      isDegreeLoading(true);
      degreeList.clear();

      final res = await _degreeListUsecase.call();

      if (res.common.status == true) {
        degreeList.assignAll(res.data ?? []);
      }
    } finally {
      isDegreeLoading(false);
    }
  }

  /// ------------------ UPDATE PROFILE ------------------ ///
  final isUpdating = false.obs;
  final currentAddressController = TextEditingController();
  final permAddressController = TextEditingController();
  final selectedDegree = Rxn<String>();

  final updateForm = GlobalKey<FormState>();

  Future<void> updateProfile() async {
    final userId =
        await SecureStorageService.read(AppConstants.userIdKey) ?? '';
    await callApi<BaseResponseModel>(
      request: () => _updateProfileUsecase.call(
        UpdateProfileEntity(
          userId,
          currentAddressController.text.trim(),
          selectedDegree.value ?? '',
        ),
      ),
      loader: isUpdating,
      onSuccess: (data) async {
        Get.back();
        await getProfile();
        CustomSnackbar.show(
          context: Get.context!,
          message: data.common.message,
          type: SnackbarType.success,
        );
      },
    );
  }

  /// ------------------ Facility List ------------------ ///
  final isFacilityLoading = false.obs;
  final facilityList = <FacilityModel>[].obs;

  Future<void> fetchFacility() async {
    await callApi<BaseResponseModel<List<FacilityModel>>>(
      request: () => _facilityUsecase.call(),
      loader: isFacilityLoading,
      onSuccess: (data) {
        facilityList.value = data.data ?? [];
      },
    );
  }

  /// ------------------ Legal Page List ------------------ ///
  final isPagesLoading = false.obs;
  final pagesList = <FacilityModel>[].obs;

  Future<void> fetchLegalPage() async {
    await callApi<BaseResponseModel<List<FacilityModel>>>(
      request: () => _legalPageUsecase.call(),
      loader: isFacilityLoading,
      onSuccess: (data) {
        pagesList.value = data.data ?? [];
      },
    );
  }

  /// ------------------ Delete Account ------------------ ///
  final isDeleting = false.obs;

  Future<void> deleteAccount() async {
    final userId =
        await SecureStorageService.read(AppConstants.userIdKey) ?? '';
    await callApi<BaseResponseModel>(
      request: () => _deleteAccountUsecase.call(UserRequest(userId)),
      loader: isDeleting,
      showError: true,
      onSuccess: (data) async {
        await LocalStorage.clear();
        await SecureStorageService.clear();

        Get.snackbar('Delete', data.common.message);

        Get.offAllNamed(Routes.login);
      },
    );
  }
}
