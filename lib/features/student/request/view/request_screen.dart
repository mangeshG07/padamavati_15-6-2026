import 'package:padmavatiupdated/core/exporters/app_export.dart';
import 'package:padmavatiupdated/features/student/request/widget/food_requests.dart';
import 'package:padmavatiupdated/features/student/request/widget/leave_requests.dart';

class RequestScreen extends StatefulWidget {
  const RequestScreen({super.key});

  @override
  State<RequestScreen> createState() => _RequestScreenState();
}

class _RequestScreenState extends State<RequestScreen>
    with SingleTickerProviderStateMixin {
  final controller = Get.find<RequestController>();

  @override
  void initState() {
    super.initState();
    Future.wait([
      controller.getLeaveRequestList(isRefresh: true),
      controller.getFoodRequestList(isRefresh: true),
    ]);
  }

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
              GradientAppbar(title: 'Requests', showBack: false),

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
              _buildFoodList(),

              /// 🏖️ LEAVE REQUEST TAB
              _buildLeaveList(),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () async {
            controller.resetFields();
            await controller.getFoodItems();
            Get.dialog(PopupMenuRequest());
          },
          mini: true,
          elevation: 0,
          shape: CircleBorder(),
          foregroundColor: Colors.white,
          backgroundColor: AppColors.lightSecondary,
          child: HugeIcon(icon: HugeIconsStrokeRounded.add01),
        ),
      ),
    );
  }

  Widget _buildFoodList() {
    final foodData = controller.foodPagination;
    return FoodRequests(foodData: foodData, controller: controller);

    //   return Padding(
    //     padding: const EdgeInsets.all(12.0),
    //     child: ListView.separated(
    //       shrinkWrap: true,
    //       padding: EdgeInsets.zero,
    //       separatorBuilder: (_, __) => SizedBox(height: 12.h),
    //       physics: const NeverScrollableScrollPhysics(),
    //       itemCount: controller.requestList.length,
    //       itemBuilder: (BuildContext context, int index) {
    //         final request = controller.requestList[index];
    //         return Container(
    //           decoration: buildCardDecoration(),
    //           padding: EdgeInsets.all(16.w),
    //           child: Row(
    //             children: [
    //               AppIconButton(
    //                 backgroundColor: Colors.orange.shade50,
    //                 icon: HugeIcons.strokeRoundedPaella,
    //               ),
    //               SizedBox(width: 12.w),
    //               Expanded(
    //                 child: Column(
    //                   crossAxisAlignment: CrossAxisAlignment.start,
    //                   children: [
    //                     AppText(
    //                       text: request['food'] ?? '',
    //                       fontSize: 16.sp,
    //                       fontWeight: FontWeight.bold,
    //                     ),
    //                     SizedBox(height: 6.h),
    //                     AppText(
    //                       text: "🍽️ For Date: ${request['date'] ?? '-'}",
    //                       fontSize: 13.sp,
    //                     ),
    //                     AppText(
    //                       text:
    //                           "📝 Requested On: ${request['created_at'] ?? '-'}",
    //                       fontSize: 13.sp,
    //                     ),
    //                   ],
    //                 ),
    //               ),
    //             ],
    //           ),
    //         );
    //       },
    //     ),
    //   );
  }

  Widget _buildLeaveList() {
    final leaveData = controller.leavePagination;
    return LeaveRequest(leaveData: leaveData, controller: controller);
  }
}
