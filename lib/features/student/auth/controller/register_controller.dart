import 'package:padmavatiupdated/core/exporters/app_export.dart';

class RegisterController extends GetxController {
  final GetDegreeListUsecase _degreeListUsecase;
  final GetBranchListUsecase _getBranchListUsecase;
  final RegisterUsecase _registerUsecase;
  RegisterController(
    this._degreeListUsecase,
    this._getBranchListUsecase,
    this._registerUsecase,
  );

  final isPageLoading = false.obs;

  Future<void> fetchInitialData() async {
    try {
      isPageLoading(true);

      await Future.wait([fetchDegree(), fetchBranch()]);
    } finally {
      isPageLoading(false);
    }
  }

  /// ------------------ FORM ------------------ ///
  final registerKey = GlobalKey<FormState>();
  final isLoading = false.obs;
  final nameController = TextEditingController();
  final numberController = TextEditingController();
  final currentAddressController = TextEditingController();
  final permAddressController = TextEditingController();
  final dobController = TextEditingController();

  /// ------------------ SELECTION ------------------ ///
  final selectedDegree = Rxn<String>();
  final selectedGender = Rxn<String>();
  final selectedMessTime = Rxn<String>();
  final selectedBranch = Rxn<String>();
  final selectedFoodPref = 0.obs;

  final profileImage = Rx<File?>(null);

  final degreeList = <MasterDataModel>[].obs;

  final genderList = ['Male', 'Female'].obs;
  final branchList = <MasterDataModel>[].obs;
  final messTimeList = ['1 Time', '2 Times'].obs;

  void pickImage() async {
    final picker = ImagePicker();
    final pickedFile = await picker.pickImage(source: ImageSource.gallery);
    if (pickedFile != null) {
      profileImage.value = File(pickedFile.path);
    }
  }

  /// ------------------ DegreeList ------------------ ///
  final isDegreeLoading = false.obs;

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

  /// ------------------ BranchList ------------------ ///
  final isBranchLoading = false.obs;
  Future<void> fetchBranch() async {
    try {
      isBranchLoading(true);
      branchList.clear();
      final res = await _getBranchListUsecase.call();

      if (res.common.status == true) {
        branchList.assignAll(res.data ?? []);
      }
    } catch (_) {
    } finally {
      isBranchLoading(false);
    }
  }

  /// ------------------ REGISTER ------------------ ///
  Future<void> registerUser(String phone) async {
    if (!registerKey.currentState!.validate()) return;

    try {
      isLoading(true);

      final res = await _registerUsecase.call(
        RegisterRequest(
          name: nameController.text.trim(),
          gender: selectedGender.value == 'Male' ? '0' : '1',
          birthdate: dobController.text.trim(),
          mobileNo: phone,
          currentAddress: currentAddressController.text.trim(),
          permanentAddress: permAddressController.text.trim(),
          degreeId: selectedDegree.value!,
          branchId: selectedBranch.value!,
          profileImage: profileImage.value,
          messType: selectedFoodPref.value.toString(),
          // messTime: selectedMessTime.value.toString() == '1 Time' ? '1' : '2',
        ),
      );
      if (res.common.status == true) {
        CustomSnackbar.show(
          context: Get.context!,
          message: res.common.message,
          type: SnackbarType.success,
        );
        await SecureStorageService.write(
          AppConstants.userTokenKey,
          res.user!.authKey,
        );
        await SecureStorageService.write(
          AppConstants.userIdKey,
          res.user!.userId.toString(),
        );
        Get.offAllNamed(Routes.mainScreen);
      } else {
        CustomSnackbar.show(
          context: Get.context!,
          message: res.common.message,
          type: SnackbarType.error,
        );
      }
    } catch (_) {
      // print('error======>$e');
      // print('stacktrace======>$stacktrace');
    } finally {
      isLoading(false);
    }
  }
}
