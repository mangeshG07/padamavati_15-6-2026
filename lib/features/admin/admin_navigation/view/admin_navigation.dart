import 'package:padmavatiupdated/core/exporters/app_export.dart';

class AdminNavigation extends GetView<AdminNavController> {
  const AdminNavigation({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Obx(
      () => Scaffold(
        backgroundColor: Colors.white,
        body: AnimatedSwitcher(
          duration: const Duration(milliseconds: 300),
          transitionBuilder: (child, animation) {
            return FadeTransition(opacity: animation, child: child);
          },
          child: controller.currentPage,
        ),
        bottomNavigationBar: Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(16.r),
              topRight: Radius.circular(16.r),
            ),
            boxShadow: [
              if (theme.brightness == Brightness.light)
                BoxShadow(
                  color: Colors.black.withValues(alpha: 0.07),
                  blurRadius: 10,
                  offset: const Offset(0, -2),
                )
              else
                BoxShadow(
                  color: Colors.white.withValues(alpha: 0.08),
                  blurRadius: 10,
                  offset: const Offset(0, -2),
                ),
            ],
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.vertical(top: Radius.circular(16.r)),
            child: BottomNavigationBar(
              backgroundColor: Colors.white,
              selectedItemColor: AppColors.lightPrimary,
              unselectedItemColor: Colors.grey.shade500,
              selectedLabelStyle: const TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 12,
              ),
              currentIndex: controller.currentIndex.value,
              onTap: controller.changePage,

              items: [
                _buildNavItem(
                  HugeIcons.strokeRoundedAnalytics01,
                  'Dashboard',
                  controller.currentIndex.value == 0,
                ),
                _buildNavItem(
                  HugeIcons.strokeRoundedTransactionHistory,
                  'Request',
                  controller.currentIndex.value == 1,
                ),
                _buildNavItem(
                  HugeIcons.strokeRoundedUserGroup,
                  'People',
                  controller.currentIndex.value == 2,
                ),
                _buildNavItem(
                  HugeIcons.strokeRoundedUser03,
                  'Profile',
                  controller.currentIndex.value == 3,
                  iconSize: Get.width * 0.05,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  BottomNavigationBarItem _buildNavItem(
    dynamic icon,
    String label,
    bool isSelected, {
    double? iconSize,
  }) {
    return BottomNavigationBarItem(
      backgroundColor: Colors.white,
      icon: Padding(
        padding: const EdgeInsets.only(bottom: 4.0),
        child: HugeIcon(
          size: iconSize ?? Get.width * 0.06,
          icon: icon,
          color: isSelected ? AppColors.lightPrimary : Colors.grey.shade500,
        ),
      ),
      label: label,
    );
  }
}
