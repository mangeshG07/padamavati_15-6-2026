import 'package:padmavatiupdated/core/exporters/app_export.dart';

class ProfileController extends BaseController {
  final ProfileUsecase _profileUsecase;
  final UpdateProfileUsecase _updateProfileUsecase;
  final GetDegreeListUsecase _degreeListUsecase;
  final GetLegalPageUsecase _legalPageUsecase;
  final GetFacilityUsecase _facilityUsecase;
  final DeleteAccountUsecase _deleteAccountUsecase;

  final state = ProfileStates();

  ProfileController(
    this._profileUsecase,
    this._degreeListUsecase,
    this._updateProfileUsecase,
    this._legalPageUsecase,
    this._facilityUsecase,
    this._deleteAccountUsecase,
  );

  /// ---------------- PROFILE ---------------- ///
  Future<void> getProfile() async {
    final userId = await getUserId();

    await callApi<BaseResponseModel<ProfileResponseModel>>(
      request: () => _profileUsecase.call(UserRequest(userId)),
      loader: state.isLoading,
      onSuccess: (data) {
        state.profileData.value = data.data;
      },
    );
  }

  /// ---------------- DEGREE ---------------- ///
  Future<void> fetchDegree() async {
    try {
      state.isDegreeLoading(true);
      state.degreeList.clear();

      final res = await _degreeListUsecase.call();

      if (res.common.status == true) {
        state.degreeList.assignAll(res.data ?? []);
      }
    } finally {
      state.isDegreeLoading(false);
    }
  }

  /// ---------------- UPDATE ---------------- ///
  final updateForm = GlobalKey<FormState>();

  Future<void> updateProfile() async {
    final userId = await getUserId();

    await callApi<BaseResponseModel>(
      request: () => _updateProfileUsecase.call(
        UpdateProfileEntity(
          userId,
          state.currentAddressController.text.trim(),
          state.selectedDegree.value ?? '',
        ),
      ),
      loader: state.isUpdating,
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

  /// ---------------- FACILITY ---------------- ///
  Future<void> fetchFacility() async {
    await callApi<BaseResponseModel<List<FacilityModel>>>(
      request: () => _facilityUsecase.call(),
      loader: state.isFacilityLoading,
      onSuccess: (data) {
        state.facilityList.value = data.data ?? [];
      },
    );
  }

  /// ---------------- LEGAL ---------------- ///
  Future<void> fetchLegalPage() async {
    await callApi<BaseResponseModel<List<FacilityModel>>>(
      request: () => _legalPageUsecase.call(),
      loader: state.isPagesLoading,
      onSuccess: (data) {
        state.pagesList.value = data.data ?? [];
      },
    );
  }

  /// ---------------- DELETE ---------------- ///
  Future<void> deleteAccount() async {
    final userId = await getUserId();
    await callApi<BaseResponseModel>(
      request: () => _deleteAccountUsecase.call(UserRequest(userId)),
      loader: state.isDeleting,
      showError: true,
      onSuccess: (data) async {
        await _clearSession();

        //   await LocalStorage.clear();
        //   await SecureStorageService.clear();
        //
        Get.snackbar('Delete', data.common.message);
        Get.offAllNamed(Routes.login);
      },
    );
  }

  List<ProfileMenuItem> get menuList => [
    ProfileMenuItem(
      title: 'Edit Profile',
      icon: HugeIcons.strokeRoundedUserCircle,
      onTap: () => Get.toNamed(Routes.editProfile),
    ),
    ProfileMenuItem(
      title: 'Facility',
      icon: HugeIcons.strokeRoundedSpoonAndKnife,
      onTap: () => Get.toNamed(Routes.facilityScreen),
    ),
    ProfileMenuItem(
      title: 'Help And Support',
      icon: HugeIcons.strokeRoundedMailOpen,
      onTap: () => Get.toNamed(Routes.helpAndSupport),
    ),
    ProfileMenuItem(
      title: 'Logout',
      icon: HugeIcons.strokeRoundedLogout01,
      onTap: _handleLogout,
    ),
  ];

  Future<void> _handleLogout() async {
    AllDialogs().showConfirmationDialog(
      'Logout',
      'Are you sure you want to logout?',
      onConfirm: () async {
        Get.back();
        await _clearSession();
        Get.snackbar('Logout', 'You have logged out successfully');
        Get.offAllNamed(Routes.login);
      },
    );
  }

  Future<void> _clearSession() async {
    await LocalStorage.clear();
    await SecureStorageService.clear();
  }


  /// ✅ INIT METHOD (Single responsibility)
  Future<void> initEditProfile() async {
    final profile = state.profileData.value;

    if (profile == null) return;

    state.currentAddressController.text = profile.curAddress ?? '';
    state.permAddressController.text = profile.perAddress ?? '';
    state.selectedDegree.value =
        profile.degreeId?.toString() ?? '';

    await fetchDegree();
  }

  @override
  void onClose() {
    state.currentAddressController.dispose();
    state.permAddressController.dispose();
    super.onClose();
  }
}

class ProfileMenuItem {
  final String title;
  final dynamic icon;
  final VoidCallback onTap;

  ProfileMenuItem({
    required this.title,
    required this.icon,
    required this.onTap,
  });
}
