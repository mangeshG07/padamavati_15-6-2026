import 'package:padmavatiupdated/core/exporters/app_export.dart';

class AdminRequestScreen extends GetView<AdminReqCtrl> {
  const AdminRequestScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          spacing: 8.h,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GradientAppbar(title: 'Request (Today)', showBack: false),

            _buildToggle(theme.brightness == Brightness.light, theme),
            Padding(
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
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildToggle(bool isLight, ThemeData theme) {
    return Obx(
      () => Container(
        width: Get.width,
        padding: const EdgeInsets.all(6.0),
        decoration: BoxDecoration(
          color: isLight ? AppColors.grey100 : AppColors.grey800,
          borderRadius: BorderRadius.circular(12.r),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            toggleItem(
              title: "Special Food Request",
              isSelected: controller.selectedType.value == 0,
              onTap: () async {
                controller.selectedType.value = 0;
              },
              isLight: isLight,
            ),
            SizedBox(width: 8.w),
            toggleItem(
              title: "Leave Request",
              isSelected: controller.selectedType.value == 1,
              onTap: () async {
                controller.selectedType.value = 1;
              },
              isLight: isLight,
            ),
          ],
        ),
      ),
    );
  }
}
