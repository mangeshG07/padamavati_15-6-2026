import 'package:padmavatiupdated/core/exporters/app_export.dart';
import 'package:padmavatiupdated/features/student/request/widget/popup_menu.dart';

class RequestScreen extends StatefulWidget {
  const RequestScreen({super.key});

  @override
  State<RequestScreen> createState() => _RequestScreenState();
}

class _RequestScreenState extends State<RequestScreen>
    with SingleTickerProviderStateMixin {
  final controller = Get.find<RequestController>();

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Column(
          spacing: 8.h,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GradientAppbar(title: 'Requests', showBack: false),
            TabBar(
              indicatorColor: AppColors.lightSecondary,
              indicatorSize: TabBarIndicatorSize.tab,
              labelStyle: TextStyle(fontSize: 14.sp),
              tabs: const [
                Tab(text: "Food Requests"),
                Tab(text: "Leave Requests"),
              ],
            ),

            /// 🔥 Tab Views
            Expanded(
              child: TabBarView(
                children: [
                  /// 🍽️ FOOD REQUEST TAB
                  _buildFoodList(),

                  /// 🏖️ LEAVE REQUEST TAB
                  _buildFoodList(),
                ],
              ),
            ),
            // _buildFoodList(),
          ],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            Get.dialog(PopupMenuRequest());

            // controller.resetFields();
            // AppBottomSheet.show(
            //   title: 'Special Food Request',
            //   context: context,
            //   height: Get.height * 0.75.h,
            //   // child: AddRequest(),
            //   child: AddLeave(),
            // );
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

  Padding _buildFoodList() {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: ListView.separated(
        shrinkWrap: true,
        padding: EdgeInsets.zero,
        separatorBuilder: (_, __) => SizedBox(height: 12.h),
        physics: const NeverScrollableScrollPhysics(),
        itemCount: controller.requestList.length,
        itemBuilder: (BuildContext context, int index) {
          final request = controller.requestList[index];
          return Container(
            decoration: buildCardDecoration(),
            padding: EdgeInsets.all(16.w),
            child: Row(
              children: [
                AppIconButton(
                  backgroundColor: Colors.orange.shade50,
                  icon: HugeIcons.strokeRoundedPaella,
                ),
                SizedBox(width: 12.w),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      AppText(
                        text: request['food'] ?? '',
                        fontSize: 16.sp,
                        fontWeight: FontWeight.bold,
                      ),
                      SizedBox(height: 6.h),
                      AppText(
                        text: "🍽️ For Date: ${request['date'] ?? '-'}",
                        fontSize: 13.sp,
                      ),
                      AppText(
                        text:
                            "📝 Requested On: ${request['created_at'] ?? '-'}",
                        fontSize: 13.sp,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
