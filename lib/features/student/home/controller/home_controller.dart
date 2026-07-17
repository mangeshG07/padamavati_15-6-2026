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
      onSuccess: (data) async {
        final res = data.data;

        states.branchName.value = res?.branchName ?? '';
        states.sliders.value = res!.sliders ?? [];
        states.bannerData.value = res.popup ?? BannerModel();

        states.payments.value = res.payTransactionDetails ?? [];
        states.todaysQR.value = res.todayQr ?? [];

        states.isRequested.value = res.messRequest ?? false;
        states.isAccepted.value = res.messRequestAccepted ?? false;
        AppConfigModel platformData = Platform.isAndroid
            ? data.android
            : data.ios;

        /// Maintenance first
        if (platformData.isMaintenance == true) {
          Get.offAll(
            () => MaintenanceScreen(
              message: platformData.maintenanceMsg ?? '',
              imageAsset: AppAssets.appMaintainance,
              buttonTextColor: AppColors.lightPrimary,
              buttonBorderColor: AppColors.lightPrimary,
            ),
          );

          return;
        }

        /// Update after maintenance check
        await handleUpdate(platformData);

        /// ✅ CALL POPUP HERE
        await handlePopup();
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

  Future<void> handlePopup() async {
    final banner = states.bannerData.value;

    /// ❌ Popup OFF
    if (banner?.popupStatus != 'on') return;

    final currentImage = banner?.image ?? '';

    /// ❌ No image
    if (currentImage.isEmpty) return;

    final savedImage = await SecureStorageService.read(
      AppConstants.popupImageKey,
    );

    // /// ✅ Local check (already shown?)
    // final isSeen = await SecureStorageService.read(AppConstants.popupSeenKey);
    //
    // if (isSeen == 'true') return;

    /// ❌ SAME IMAGE → DO NOT SHOW AGAIN
    if (savedImage == currentImage) return;

    /// ✅ Show popup
    Get.bottomSheet(
      PopScope(
        canPop: true, // 👈 allow back press
        onPopInvokedWithResult: (didPop, _) async {
          if (didPop) {
            // 👇 Save when user presses back
            await SecureStorageService.write(
              AppConstants.popupImageKey,
              currentImage,
            );
          }
        },
        child: Padding(
          padding: const EdgeInsets.only(top: 50),
          child: Stack(
            clipBehavior: Clip.none,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: Image.network(banner?.image ?? '', fit: BoxFit.cover),
              ).animate().fade(duration: 500.ms).slideY(begin: 0.3),

              /// ❌ Close button
              Positioned(
                right: 10,
                top: -20,
                child: GestureDetector(
                  onTap: () async {
                    await SecureStorageService.write(
                      AppConstants.popupImageKey,
                      currentImage,
                    );
                    Get.back();
                  },
                  child: Container(
                    padding: const EdgeInsets.all(4),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      shape: BoxShape.circle,
                    ),
                    child: const Icon(Icons.close, color: Colors.black),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      isDismissible: false,
      enableDrag: false,
      backgroundColor: Colors.transparent,
      isScrollControlled: true,
    );
  }

  /// -------------------- HELPERS --------------------
  void setDate(DateTime date) {
    selectedDate.text = DateFormat('dd-MM-yyyy').format(date);
  }
}
