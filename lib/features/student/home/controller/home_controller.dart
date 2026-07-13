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
  final states = HomeState();

  // final sliderList = <MasterDataModel>[].obs;
  // final packageList = <PackageModel>[].obs;
  // final selectedPackageDetails = Rx<PackageModel?>(null);
  // final payDetailsList = <PaymentDetailsModel>[].obs;
  //
  // final branchName = ''.obs;
  //
  // final isPackageLoading = false.obs;
  // final isHomeLoading = false.obs;
  // final isStarting = false.obs;
  //
  // final isRequested = false.obs;
  // final isAccepted = false.obs;
  //
  // final selectedPackage = Rxn<String>();
  final selectedDate = TextEditingController();

  /// -------------------- COMPUTED --------------------

  bool get isPending => states.isRequested.value && !states.isAccepted.value;
  bool get isApproved => states.isRequested.value && states.isAccepted.value;

  /// -------------------- METHODS --------------------
  Future<void> fetchHomeData() async {
    final userId =
        await SecureStorageService.read(AppConstants.userIdKey) ?? '';
    await callApi<BaseResponseModel<HomeResponseModel>>(
      request: () => _homeUseCase.call(UserRequest(userId)),
      loader: states.isHomeLoading,
      onSuccess: (data) {
        final res = data.data;

        states.branchName.value = res?.branchName ?? '';
        states.sliders.value = res!.sliders ?? [];

        states.payments.value = res.payTransactionDetails ?? [];
        states.todaysQR.value = res.todayQr ?? [];

        states.isRequested.value = res.messRequest ?? false;
        states.isAccepted.value = res.messRequestAccepted ?? false;
      },
    );
  }

  Future<void> fetchPackages() async {
    final userId =
        await SecureStorageService.read(AppConstants.userIdKey) ?? '';
    await callApi(
      loader: states.isPackageLoading,
      request: () => _getPackagesUsecase.call(UserRequest(userId)),
      onSuccess: (data) {
        states.packages.value = data.data ?? [];
      },
    );
  }

  void updatePackageDetails() {
    states.selectedPackage.value = states.packages.firstWhereOrNull(
      (e) => e.id.toString() == states.selectedPackageId.value,
    );
  }

  void submitSelection() async {
    if (states.selectedPackageId.value == null || selectedDate.text.isEmpty) {
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
          ratePackageId: states.selectedPackageId.value.toString(),
        ),
      ),
      loader: states.isStarting,
      onSuccess: (data) async {
        isSuccess = true;
        await fetchHomeData();
        showSuccess(data.common.message);
      },
    );
    return isSuccess;
  }

  /// -------------------- HELPERS --------------------
  void setDate(DateTime date) {
    selectedDate.text = DateFormat('dd-MM-yyyy').format(date);
  }
}
