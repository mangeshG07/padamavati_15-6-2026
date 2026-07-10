import 'package:padmavatiupdated/core/exporters/app_export.dart';

class DashboardController extends BaseController {
  final GetDashboardUsecase _dashboardUsecase;
  final ScanQRUsecase _qrUsecase;
  final ScannedUserUsecase _scannedUserUsecase;
  final ScannedUserDetailsUsecase _userDetailsUsecase;
  final UsedQrListUsecase _qrListUsecase;

  DashboardController(
    this._dashboardUsecase,
    this._qrUsecase,
    this._scannedUserUsecase,
    this._qrListUsecase,
    this._userDetailsUsecase,
  );

  final overview = OverViewModel().obs;
  final dashboardData = DashboardModel().obs;
  final menuList = <DashboardMenuItem>[].obs;

  final userData = QRUserDataModel().obs;
  final paymentData = PaymentDataModel().obs;
  final scanData = ScanDataModel().obs;

  final isScanning = false.obs;
  final selectedType = 0.obs;

  Future<void> getDashboard() async {
    final userId =
        await SecureStorageService.read(AppConstants.userIdKey) ?? '';
    await callApi<BaseResponseModel<DashboardModel>>(
      request: () => _dashboardUsecase.call(UserRequest(userId)),
      loader: isLoading,
      onSuccess: (data) {
        dashboardData.value = data.data!;
        overview.value = data.data!.todayOverview!;
        _buildMenu();
      },
    );
  }

  void _buildMenu() {
    final data = overview.value;

    menuList.value = [
      DashboardMenuItem(
        title: 'Special Food Request',
        icon: HugeIcons.strokeRoundedSpoonAndKnife,
        isToday: true,
        count: data.todayFoodCount ?? 0,
        onTap: () {},
      ),
      DashboardMenuItem(
        title: 'Leave Request',
        icon: HugeIcons.strokeRoundedClock03,
        isToday: true,
        count: data.todayLeaveCount ?? 0,
        onTap: () {},
      ),
      DashboardMenuItem(
        title: 'Tomorrow Leave Request',
        icon: HugeIcons.strokeRoundedClock03,
        isToday: false,
        count: data.tomorrowLeaveCount ?? 0,
        onTap: () {},
      ),
      DashboardMenuItem(
        title: 'Tomorrow Special Request',
        icon: HugeIcons.strokeRoundedClock03,
        isToday: false,
        count: data.tomorrowFoodCount ?? 0,
        onTap: () {},
      ),
    ];
  }

  Future<void> scanQr(String qr, String studentId) async {
    await callApi<BaseResponseModel<QRResponseModel>>(
      request: () => _qrUsecase.call(UserRequest(studentId, type: qr)),
      loader: isScanning,
      onSuccess: (data) {
        userData.value = data.data!.userData!;
        paymentData.value = data.data!.paymentData!;
        scanData.value = data.data!.scanData!;
      },
      onError: (msg) {
        CustomSnackbar.show(
          context: Get.context!,
          message: msg,
          type: SnackbarType.error,
        );
      },
      showError: false,
    );
  }

  void resetScanning() {
    isScanning.value = false;
    userData.value = QRUserDataModel();
    scanData.value = ScanDataModel();
    paymentData.value = PaymentDataModel();
  }

  ////////////////////////////////////////Scanned Users List///////////////////////////

  final userPagination = PaginationState<ScannedUserModel>();
  final scanUserData = UserData().obs;
  final packageData = PackageData().obs;
  final qrData = QrData().obs;
  final scannedPayData = ScannedPaymentData().obs;
  final userLoading = false.obs;

  Future<void> getScannedUserList({
    bool isRefresh = false,
    bool showLoading = true,
  }) async {
    if (isRefresh) userPagination.reset();

    userPagination.startLoading(showLoading: showLoading);

    final userId =
        await SecureStorageService.read(AppConstants.userIdKey) ?? '';

    try {
      final response = await _scannedUserUsecase(
        UserRequest(
          userId,
          pageNo: userPagination.currentPage.toString(),
          type: selectedType.value.toString(),
        ),
      );

      switch (response) {
        case Success(:final data):
          final List<ScannedUserModel> list = data.data!.scannedUsers ?? [];

          userPagination.handleSuccess(list);

        case Failure(:final message):
          debugPrint(message);
        // CustomSnackbar.show(context: Get.context!, message: message);
      }
    } catch (e) {
      debugPrint("Error: $e");
    } finally {
      userPagination.stopLoading();
    }
  }

  Future<void> getUserDetails(String studentId) async {
    final userId =
        await SecureStorageService.read(AppConstants.userIdKey) ?? '';
    await callApi<BaseResponseModel<UserDetailsModel>>(
      request: () =>
          _userDetailsUsecase.call(UserRequest(userId, type: studentId)),
      loader: userLoading,
      onSuccess: (data) {
        scanUserData.value = data.data!.userData!;
        packageData.value = data.data!.packageData!;
        qrData.value = data.data!.qrData!;
        scannedPayData.value = data.data!.paymentData!;
      },
    );
  }

  final usedQRPagination = PaginationState<UsedQr>();

  Future<void> usedQRList({
    bool isRefresh = false,
    bool showLoading = true,
    required String studentId,
  }) async {
    if (isRefresh) usedQRPagination.reset();

    usedQRPagination.startLoading(showLoading: showLoading);

    final userId =
        await SecureStorageService.read(AppConstants.userIdKey) ?? '';

    try {
      final response = await _qrListUsecase(
        UserRequest(
          userId,
          pageNo: usedQRPagination.currentPage.toString(),
          type: studentId,
        ),
      );

      switch (response) {
        case Success(:final data):
          final List<UsedQr> list = data.data!.usedQrs ?? [];

          usedQRPagination.handleSuccess(list);

        case Failure(:final message):
          debugPrint(message);
        // CustomSnackbar.show(context: Get.context!, message: message);
      }
    } catch (e) {
      debugPrint("Error: $e");
    } finally {
      usedQRPagination.stopLoading();
    }
  }

  Map<String, List<UsedQr>> groupByDate(List<UsedQr> list) {
    final Map<String, List<UsedQr>> grouped = {};

    for (var item in list) {
      if (item.scannedAt.isEmpty) continue;

      // 👉 Extract DATE ONLY
      final date = item.scannedAt.split(' ').take(3).join(' ');
      // Example: "02 Jul 2026"

      if (!grouped.containsKey(date)) {
        grouped[date] = [];
      }

      grouped[date]!.add(item);
    }

    return grouped;
  }
}

class DashboardMenuItem {
  final String title;
  final dynamic icon;
  final bool isToday;
  final int count;
  final VoidCallback onTap;

  DashboardMenuItem({
    required this.title,
    required this.icon,
    required this.isToday,
    required this.count,
    required this.onTap,
  });
}
