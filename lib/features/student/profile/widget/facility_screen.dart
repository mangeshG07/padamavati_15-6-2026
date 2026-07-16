import 'package:padmavatiupdated/core/exporters/app_export.dart';

class FacilityScreen extends StatefulWidget {
  const FacilityScreen({super.key});

  @override
  State<FacilityScreen> createState() => _FacilityScreenState();
}

class _FacilityScreenState extends State<FacilityScreen> {
  final controller = Get.find<ProfileController>();

  @override
  void initState() {
    super.initState();
    controller.fetchFacility();
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
      backgroundColor: Colors.white,
      body: Obx(() {
        final state = controller.state;

        if (state.isFacilityLoading.value) {
          return AppLoader(strokeWidth: 2.5);
        }
        if (state.facilityList.isEmpty) {
          return Center(
            child: AppText(text: 'No Facilities', fontSize: 16.sp),
          );
        }
        return SingleChildScrollView(
          child: Column(
            spacing: 8.h,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              GradientAppbar(title: 'Facility', showBack: true),
              ListView.builder(
                shrinkWrap: true,
                padding: EdgeInsets.zero,
                physics: NeverScrollableScrollPhysics(),
                itemCount: state.facilityList.length,
                itemBuilder: (_, index) {
                  final facility = state.facilityList[index];
                  return _buildFacilityTile(facility, theme);
                },
              ),
              SizedBox(height: 0.02.h),
            ],
          ),
        );
      }),
    );
  }

  Widget _buildFacilityTile(FacilityModel facility, ThemeData theme) {
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
            image: facility.image ?? '',
            placeholder: Image.asset(AppAssets.defaultImage),
            errorWidget: Image.asset(AppAssets.defaultImage),
            height: 30.h,
            width: 30.w,
          ),
        ),
        title: AppText(
          text: facility.name,
          fontSize: 14.sp,
          maxLines: 2,
          style: theme.textTheme.bodyMedium!.copyWith(color: Colors.black),
        ),
        children: [
          Align(
            alignment: Alignment.topLeft,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: HtmlWidget(
                facility.shortDescription ?? '',
                textStyle: TextStyle(color: Colors.black),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
