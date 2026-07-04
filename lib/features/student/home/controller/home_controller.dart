import 'package:padmavatiupdated/core/exporters/app_export.dart'
    hide DateFormat;
import 'package:intl/intl.dart';

class HomeController extends BaseController {
  final GetHomeUsecase _homeUseCase;
  final GetPackagesUsecase _getPackagesUsecase;
  final StartMessUsecase _startMessUsecase;

  HomeController(
    this._homeUseCase,
    this._getPackagesUsecase,
    this._startMessUsecase,
  );

  /// -------------------- STATE --------------------

  final sliderList = <MasterDataModel>[].obs;
  final packageList = <PackageModel>[].obs;
  final selectedPackageDetails = Rx<PackageModel?>(null);

  final payDetailsList = <PaymentDetailsModel>[].obs;

  final branchName = ''.obs;

  final isPackageLoading = false.obs;
  final isHomeLoading = false.obs;
  final isStarting = false.obs;

  final isRequested = false.obs;
  final isAccepted = false.obs;

  final selectedPackage = Rxn<String>();
  final selectedDate = TextEditingController();

  /// -------------------- COMPUTED --------------------

  bool get isPending => isRequested.value && !isAccepted.value;
  bool get isApproved => isRequested.value && isAccepted.value;

  /// -------------------- METHODS --------------------

  Future<void> fetchHomeData() async {
    final userId =
        await SecureStorageService.read(AppConstants.userIdKey) ?? '';
    await callApi<BaseResponseModel<HomeResponseModel>>(
      request: () => _homeUseCase.call(UserRequest(userId)),
      loader: isHomeLoading,
      onSuccess: (data) {
        final res = data.data;

        branchName.value = res?.branchName ?? '';
        sliderList.value = res!.sliders ?? [];

        payDetailsList.value = res.payTransactionDetails ?? [];

        isRequested.value = res.messRequest ?? false;
        isAccepted.value = res.messRequestAccepted ?? false;
      },
    );
  }

  Future<void> fetchPackages() async {
    await callApi(
      loader: isPackageLoading,
      request: () => _getPackagesUsecase.call(),
      onSuccess: (data) {
        packageList.value = data.data ?? [];
      },
    );
  }

  void updatePackageDetails() {
    selectedPackageDetails.value = packageList.firstWhereOrNull(
      (e) => e.id.toString() == selectedPackage.value,
    );
  }

  void submitSelection() async {
    if (selectedPackage.value == null || selectedDate.text.isEmpty) {
      Get.snackbar('Error', 'Please select package & date');
      return;
    }

    final success = await startMessRequest();
    if (success) Get.back();
  }

  Future<bool> startMessRequest() async {
    bool isSuccess = false;

    final userId =
        await SecureStorageService.read(AppConstants.userIdKey) ?? '';

    await callApi(
      request: () => _startMessUsecase.call(
        StartMessRequest(
          userId: userId,
          date: selectedDate.text.trim(),
          ratePackageId: selectedPackage.value.toString(),
        ),
      ),
      loader: isStarting,
      onSuccess: (data) async {
        isSuccess = true;
        await fetchHomeData();
        showSuccess(data.common.message);
      },
    );
    return isSuccess;
    // isStarting.value = true;

    // try {
    //   final userId =
    //       await SecureStorageService.read(AppConstants.userIdKey) ?? '';
    //
    //   final response = await _startMessUsecase.call(
    //     StartMessRequest(
    //       userId: userId,
    //       date: selectedDate.text.trim(),
    //       ratePackageId: selectedPackage.value.toString(),
    //     ),
    //   );
    //
    //   if (response.common.status == true) {
    //     await fetchHomeData();
    //     showSuccess(response.common.message);
    //   } else {
    //     showError(response.common.message);
    //   }
    // } finally {
    //   isStarting.value = false;
    // }
  }

  /// -------------------- HELPERS --------------------
  void setDate(DateTime date) {
    selectedDate.text = DateFormat('dd-MM-yyyy').format(date);
  }
}
