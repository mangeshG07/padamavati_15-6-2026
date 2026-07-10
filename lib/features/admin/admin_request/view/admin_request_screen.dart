import 'package:padmavatiupdated/core/exporters/app_export.dart';
import 'package:padmavatiupdated/features/admin/admin_request/widget/admin_leave_requests.dart';

class AdminRequestScreen extends StatefulWidget {
  const AdminRequestScreen({super.key});

  @override
  State<AdminRequestScreen> createState() => _AdminRequestScreenState();
}

class _AdminRequestScreenState extends State<AdminRequestScreen> {
  final controller = Get.find<AdminReqCtrl>();

  // @override
  // void initState() {
  //   super.initState();
  //   controller.getFoodRequestList(isRefresh: true);
  //   controller.getLeaveRequestList(isRefresh: true);
  // }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(100.h),
          child: Column(
            children: [
              GradientAppbar(title: 'Request (Today)', showBack: false),

              /// Tabs
              TabBar(
                labelColor: AppColors.lightPrimary,
                unselectedLabelColor: Colors.grey,
                indicatorColor: AppColors.lightPrimary,
                tabs: const [
                  Tab(text: "Food Request"),
                  Tab(text: "Leave Request"),
                ],
              ),
            ],
          ),
        ),
        body: SafeArea(
          child: TabBarView(
            children: [
              /// 🍽️ FOOD REQUEST TAB
              AdminFoodRequests(
                foodData: controller.foodPagination,
                controller: controller,
              ),
              AdminLeaveRequests(
                leaveData: controller.leavePagination,
                controller: controller,
              ),
              // _buildLeaveList(),
            ],
          ),
        ),
      ),
    );
  }

  // Widget _buildToggle(bool isLight, ThemeData theme) {
  //   return Obx(
  //     () => Container(
  //       width: Get.width,
  //       padding: const EdgeInsets.all(6.0),
  //       decoration: BoxDecoration(
  //         color: isLight ? AppColors.grey100 : AppColors.grey800,
  //         borderRadius: BorderRadius.circular(12.r),
  //       ),
  //       child: Row(
  //         mainAxisAlignment: MainAxisAlignment.center,
  //         children: [
  //           toggleItem(
  //             title: "Special Food Request",
  //             isSelected: controller.selectedType.value == 0,
  //             onTap: () async {
  //               controller.selectedType.value = 0;
  //             },
  //           ),
  //           SizedBox(width: 8.w),
  //           toggleItem(
  //             title: "Leave Request",
  //             isSelected: controller.selectedType.value == 1,
  //             onTap: () async {
  //               controller.selectedType.value = 1;
  //             },
  //           ),
  //         ],
  //       ),
  //     ),
  //   );
  // }
}
