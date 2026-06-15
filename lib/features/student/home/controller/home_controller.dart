import 'package:padmavatiupdated/core/exporters/app_export.dart';

class HomeController extends GetxController {
  final GetHomeUsecase _homeUseCase;
  final GetPackagesUsecase _getPackagesUsecase;
  final StartMessUsecase _startMessUsecase;
  HomeController(
    this._homeUseCase,
    this._getPackagesUsecase,
    this._startMessUsecase,
  );

  final payDetails = [
    {
      'month': 'May-June',
      'type': 'Veg',
      'start_date': '13-05-2025',
      'end_date': '12-06-2025',
      'paid_amount': '₹ 2,600',
      'pending_amount': '₹ 2,600',
      'pending_status': 'Pending',
    },
    {
      'month': 'April-May',
      'type': 'Non-Veg',
      'start_date': '13-04-2025',
      'end_date': '12-05-2025',
      'paid_amount': '₹ 2,600',
      'pending_amount': '₹ 2,600',
      'pending_status': 'Completed',
    },
  ].obs;

  final sliderList = <MasterDataModel>[].obs;
  final packageList = <PackageModel>[].obs;
  final payDetailsList = <PaymentDetailsModel>[].obs;
  final branchName = ''.obs;
  final isLoading = false.obs;
  final isPackageLoading = false.obs;
  var selectedDate = TextEditingController();
  final isStarting = false.obs;
  final isRequested = false.obs;
  final isAccepted = false.obs;
  var selectedPackage = Rxn();

  Future<void> getHome() async {
    isLoading.value = true;
    try {
      final userId =
          await SecureStorageService.read(AppConstants.userIdKey) ?? '';
      final response = await _homeUseCase.call(UserRequest(userId));
      if (response.common.status == true) {
        branchName.value = response.data!.branchName ?? '';
        sliderList.value = response.data!.sliders ?? [];
        payDetailsList.value = response.data!.payTransactionDetails ?? [];
        isRequested.value = response.data!.messRequest ?? false;
        isAccepted.value = response.data!.messRequestAccepted ?? false;
      }
    } finally {
      isLoading.value = false;
    }
  }

  Future<void> getPackage() async {
    isPackageLoading.value = true;
    try {
      final response = await _getPackagesUsecase.call();
      if (response.common.status == true) {
        packageList.value = response.data ?? [];
      }
    } finally {
      isPackageLoading.value = false;
    }
  }

  void submitSelection() async {
    if (selectedPackage.value == null) {
      Get.snackbar(
        'Error',
        'Please select a mess package',
        snackPosition: SnackPosition.BOTTOM,
      );
      return;
    }

    await startMessRequest();
    Get.back();
  }

  Future<void> startMessRequest() async {
    isStarting.value = true;
    try {
      final userId =
          await SecureStorageService.read(AppConstants.userIdKey) ?? '';

      final response = await _startMessUsecase.call(
        StartMessRequest(
          userId: userId,
          date: selectedDate.text.trim(),
          ratePackageId: selectedPackage.value.toString(),
        ),
      );
      if (response.common.status == true) {
        await getHome();
        CustomSnackbar.show(
          message: response.common.message,
          context: Get.context!,
          type: SnackbarType.success,
        );
      } else {
        CustomSnackbar.show(
          message: response.common.message,
          context: Get.context!,
          type: SnackbarType.error,
        );
      }
    } finally {
      isStarting.value = false;
    }
  }
}
