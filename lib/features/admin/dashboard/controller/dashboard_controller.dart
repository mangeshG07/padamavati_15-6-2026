import 'package:padmavatiupdated/core/exporters/app_export.dart';

class DashboardController extends BaseController {
  final GetDashboardUsecase _dashboardUsecase;
  final ScanQRUsecase _qrUsecase;
  DashboardController(this._dashboardUsecase, this._qrUsecase);

  final overview = OverViewModel().obs;
  final dashboardData = DashboardModel().obs;
  final menuList = <DashboardMenuItem>[].obs;

  final userData = QRUserDataModel().obs;
  final paymentData = PaymentDataModel().obs;
  final scanData = ScanDataModel().obs;
  final isScanning = false.obs;

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
      showError: true,
    );
  }

  void resetScanning() {
    isScanning.value = false;
    userData.value = QRUserDataModel();
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
