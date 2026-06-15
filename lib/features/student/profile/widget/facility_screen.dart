import 'package:padmavatiupdated/core/exporters/app_export.dart';

class FacilityScreen extends GetView<ProfileController> {
  const FacilityScreen({super.key});

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
            GradientAppbar(title: 'Facility', showBack: true),
            ListView.builder(
              shrinkWrap: true,
              padding: EdgeInsets.zero,
              physics: NeverScrollableScrollPhysics(),
              itemCount: controller.facilityList.length,
              itemBuilder: (_, index) {
                final facility =
                    controller.facilityList[index] as Map<String, dynamic>;
                return _buildFacilityTile(facility, theme);
              },
            ),
            SizedBox(height: 0.02.h),
          ],
        ),
      ),
    );
  }

  Widget _buildFacilityTile(Map<String, dynamic> facility, ThemeData theme) {
    return Container(
      margin: EdgeInsets.all(8.w).copyWith(right: 16, left: 16),
      decoration: buildCardDecoration(),
      child: ExpansionTile(
        collapsedShape: const RoundedRectangleBorder(side: BorderSide.none),
        shape: const RoundedRectangleBorder(side: BorderSide.none),
        leading: Container(
          padding: const EdgeInsets.all(8),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: AppColors.lightSecondary.withValues(alpha: 0.1),
          ),
          child: CustomImage(
            image: facility['image'] ?? '',
            height: 30.h,
            width: 30.w,
          ),
        ),
        title: AppText(
          text: facility['name'] ?? '',
          fontSize: 14.sp,
          style: theme.textTheme.bodyMedium,
        ),
        children: [
          Align(
            alignment: Alignment.topLeft,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: AppText(
                fontSize: 14,
                maxLines: 100,
                text: facility['short_description'] ?? '',
              ),
            ),
          ),
        ],
      ),
    );
  }
}
