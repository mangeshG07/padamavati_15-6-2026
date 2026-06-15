import 'package:padmavatiupdated/core/exporters/app_export.dart';

class RequestScreen extends StatefulWidget {
  const RequestScreen({super.key});

  @override
  State<RequestScreen> createState() => _RequestScreenState();
}

class _RequestScreenState extends State<RequestScreen> {
  final controller = Get.find<RequestController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          spacing: 8.h,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GradientAppbar(title: 'Special Food Request', showBack: false),
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
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          controller.resetFields();
          AppBottomSheet.show(
            title: 'Special Food Request',
            context: context,
            height: Get.height * 0.75.h,
            child: AddRequest(),
          );
        },
        mini: true,
        elevation: 0,
        shape: CircleBorder(),
        foregroundColor: Colors.white,
        backgroundColor: AppColors.lightSecondary,
        child: HugeIcon(icon: HugeIconsStrokeRounded.add01),
      ),
    );
  }
}
