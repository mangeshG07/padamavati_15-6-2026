import 'package:padmavatiupdated/core/exporters/app_export.dart';

class PeopleList extends GetView<PeopleController> {
  const PeopleList({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          spacing: 8.h,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GradientAppbar(title: 'Branch Users', showBack: false),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: ListView.separated(
                shrinkWrap: true,
                padding: EdgeInsets.zero,
                separatorBuilder: (_, __) => SizedBox(height: 12.h),
                physics: const NeverScrollableScrollPhysics(),
                itemCount: controller.peopleList.length,
                itemBuilder: (BuildContext context, int index) {
                  final people =
                      controller.peopleList[index] as Map<String, dynamic>;
                  return Container(
                    decoration: buildCardDecoration(),
                    padding: EdgeInsets.all(16.w),
                    child: Row(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(12.r),
                          child: CustomImage(
                            image: people['image'],
                            width: 50.w,
                          ),
                        ),
                        SizedBox(width: 12.w),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              AppText(
                                text: people['name'] ?? '',
                                fontSize: 16.sp,
                                fontWeight: FontWeight.bold,
                              ),
                              SizedBox(height: 6.h),
                              AppText(
                                text: people['id'] ?? '-',
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
            SizedBox(height: 0.02.h),
          ],
        ),
      ),
    );
  }
}
