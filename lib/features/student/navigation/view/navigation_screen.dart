import 'package:padmavatiupdated/core/exporters/app_export.dart';

class NavigationScreen extends GetView<NavigationController> {
  const NavigationScreen({super.key});

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
            borderRadius: BorderRadius.vertical(top: Radius.circular(16.r)),
            boxShadow: [
              BoxShadow(
                color: theme.brightness == Brightness.light
                    ? Colors.black.withValues(alpha: 0.07)
                    : Colors.white.withValues(alpha: 0.08),
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
                _item(0, HugeIcons.strokeRoundedHome04, 'Home'),
                _item(1, HugeIcons.strokeRoundedTicketStar, 'Coupons'),
                _item(2, HugeIcons.strokeRoundedTransactionHistory, 'History'),
                _item(3, HugeIcons.strokeRoundedValidationApproval, 'Requests'),
                _item(4, HugeIcons.strokeRoundedUser03, 'Profile'),
                // _buildNavItem(
                //   HugeIcons.strokeRoundedHome04,
                //   'Home',
                //   controller.currentIndex.value == 0,
                // ),
                // _buildNavItem(
                //   HugeIcons.strokeRoundedTicketStar,
                //   'Coupens',
                //   controller.currentIndex.value == 1,
                // ),
                // _buildNavItem(
                //   HugeIcons.strokeRoundedTransactionHistory,
                //   'History',
                //   controller.currentIndex.value == 2,
                // ),
                // _buildNavItem(
                //   HugeIcons.strokeRoundedValidationApproval,
                //   'Requests',
                //   controller.currentIndex.value == 3,
                // ),
                // _buildNavItem(
                //   HugeIcons.strokeRoundedUser03,
                //   'Profile',
                //   controller.currentIndex.value == 4,
                //   iconSize: Get.width * 0.05,
                // ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  BottomNavigationBarItem _item(int index, dynamic icon, String label) {
    final isSelected = controller.currentIndex.value == index;

    return BottomNavigationBarItem(
      backgroundColor: Colors.white,
      icon: HugeIcon(
        icon: icon,
        size: Get.width * 0.06,
        color: isSelected ? AppColors.lightPrimary : Colors.grey.shade500,
      ),
      label: label,
    );
  }

  // BottomNavigationBarItem _buildNavItem(
  //   dynamic icon,
  //   String label,
  //   bool isSelected, {
  //   double? iconSize,
  // }) {
  //   return BottomNavigationBarItem(
  //     backgroundColor: Colors.white,
  //     icon: Padding(
  //       padding: const EdgeInsets.only(bottom: 4.0),
  //       child: HugeIcon(
  //         size: iconSize ?? Get.width * 0.06,
  //         icon: icon,
  //         color: isSelected ? AppColors.lightPrimary : Colors.grey.shade500,
  //       ),
  //     ),
  //     label: label,
  //   );
  // }
}
