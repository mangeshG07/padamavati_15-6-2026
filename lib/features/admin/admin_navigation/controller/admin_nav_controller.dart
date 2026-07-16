import 'package:padmavatiupdated/core/exporters/app_export.dart';

class AdminNavController extends GetxController {
  final currentIndex = 0.obs;

  final List<Widget> _pages = [
    AdminDashboard(),
    const AdminRequestScreen(),
    const PeopleList(),
    const AdminProfileScreen(),
  ];

  @override
  void onInit() {
    super.onInit();
    _loadTab(0);
  }

  /// 🔥 Smart Lazy Loader
  void _loadTab(int index) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      checkInternetAndShowPopup();

      switch (index) {
        case 0:
          Get.find<DashboardController>().getDashboard();
          Get.find<RequestsUserController>().getUsersPaymentList(
            isRefresh: true,
          );
          break;
        case 1:
          Get.find<AdminReqCtrl>().getFoodRequestList(isRefresh: true);
          Get.find<AdminReqCtrl>().getLeaveRequestList(isRefresh: true);
          Get.find<AdminReqCtrl>().setDate(DateTime.now());
          break;
        case 2:
          Get.find<PeopleController>().getBranchUserList(isRefresh: true);
          break;
        case 3:
          Get.find<AdminProfileController>().getAdminProfile();
          break;
      }
    });
  }

  Widget get currentPage => _pages[currentIndex.value];

  void changePage(int index) {
    if (currentIndex.value == index) return;

    currentIndex.value = index;
    _loadTab(index);
  }
}
