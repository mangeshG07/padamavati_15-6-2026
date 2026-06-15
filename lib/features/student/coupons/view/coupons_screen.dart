import 'package:padmavatiupdated/core/exporters/app_export.dart';

class CouponsScreen extends StatefulWidget {
  const CouponsScreen({super.key});

  @override
  State<CouponsScreen> createState() => _CouponsScreenState();
}

class _CouponsScreenState extends State<CouponsScreen> {
  final controller = Get.find<CouponController>();

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
            _buildAppbar(theme),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Column(
                spacing: 12.h,
                children: [
                  Row(
                    spacing: 8.h,
                    children: [
                      _buildCouponCard(
                        theme,
                        '2',
                        'Total: 70 Coupons',
                        'Today’s Coupons',
                        HugeIcons.strokeRoundedTicketStar,
                      ),
                      _buildCouponCard(
                        theme,
                        '68',
                        'Valid til: 13-06-2026',
                        'Remaining Coupons',
                        HugeIcons.strokeRoundedTags,
                      ),
                    ],
                  ),
                  GestureDetector(
                    onTap: () => Get.toNamed(Routes.couponDetails),
                    child: Container(
                      width: double.infinity,
                      padding: const EdgeInsets.all(12.0),
                      alignment: Alignment.center,
                      decoration: buildCardDecoration(),
                      child: AppText(
                        text: 'Total: 70 Coupons',
                        fontSize: 18.sp,
                      ),
                    ),
                  ),
                  _buildToggle(theme.brightness == Brightness.light, theme),
                  Obx(
                    () => controller.selectedType.value == 0
                        ? todayCoupons(theme)
                        : usedCoupons(theme),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildAppbar(ThemeData theme) {
    return GradientAppbar(title: 'My Coupons',showBack: false,);
  }

  Widget _buildCouponCard(
    ThemeData theme,
    String title,
    String value,
    String header,
    dynamic icon,
  ) {
    return Expanded(
      child: GestureDetector(
        onTap: () => Get.toNamed(Routes.couponDetails),
        child: Card(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              spacing: 12.h,
              children: [
                buildSectionHeader(header, icon),
                Container(
                  padding: const EdgeInsets.all(12.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12.r),
                    gradient: LinearGradient(
                      colors: [
                        AppColors.couponBgColor1,
                        AppColors.couponBgColor2,
                      ],
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                    ),
                  ),
                  // height: 100,
                  width: double.infinity,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    spacing: 8.h,
                    children: [
                      AppText(
                        text: title,
                        fontSize: 16.sp,
                        style: theme.textTheme.displaySmall!.copyWith(
                          color: AppColors.lightPrimary,
                        ),
                      ),
                      AppText(
                        text: value,
                        fontSize: 14.sp,
                        maxLines: 2,
                        style: theme.textTheme.labelMedium!.copyWith(
                          color: AppColors.lightPrimary,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
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
              title: "Today's Coupons",
              isSelected: controller.selectedType.value == 0,
              onTap: () async {
                controller.selectedType.value = 0;
              },
              isLight: isLight,
            ),
            SizedBox(width: 8.w),
            toggleItem(
              title: "Used Coupons",
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

  Widget todayCoupons(ThemeData theme) {
    return Column(
      spacing: 12.h,
      children: [
        _buildTodayCard(
          theme,
          'Lunch',
          '12:00PM - 03:00PM',
          'Used',
          HugeIcons.strokeRoundedSun03,
        ),
        _buildTodayCard(
          theme,
          'Dinner',
          '07:00 PM - 10:00 PM',
          'Available',
          HugeIcons.strokeRoundedMoon02,
        ),
      ],
    );
  }

  Widget _buildTodayCard(
    ThemeData theme,
    String title,
    String subtitle,
    String status,
    dynamic icon, {
    bool isUsed = false,
    bool isTop = false,
  }) {
    return GestureDetector(
      onTap: () => Get.toNamed(
        Routes.qrDetails,
        arguments: {'title': title, 'subTitle': subtitle, 'status': status},
      ),
      child: Container(
        decoration: isUsed
            ? BoxDecoration(
                color: Colors.white,
                borderRadius: isUsed
                    ? isTop
                          ? BorderRadius.only(
                              topLeft: Radius.circular(12.r),
                              topRight: Radius.circular(12.r),
                            )
                          : BorderRadius.only(
                              bottomLeft: Radius.circular(12.r),
                              bottomRight: Radius.circular(12.r),
                            )
                    : BorderRadius.circular(12.r),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withValues(alpha: 0.05),
                    blurRadius: 12.r,
                    offset: const Offset(0, 4),
                    spreadRadius: 0,
                  ),
                  BoxShadow(
                    color: Colors.black.withValues(alpha: 0.02),
                    blurRadius: 4.r,
                    offset: const Offset(0, 2),
                  ),
                ],
              )
            : buildCardDecoration(isUsed: isUsed),
        child: ListTile(
          leading: AppIconButton(
            icon: icon,
            backgroundColor: AppColors.grey200,
          ),
          horizontalTitleGap: 0,
          title: AppText(
            text: title,
            fontSize: 14.sp,
            style: theme.textTheme.titleMedium,
          ),
          subtitle: AppText(
            text: subtitle,
            fontSize: 14.sp,
            style: theme.textTheme.bodyMedium,
          ),
          trailing: badge(status, status == 'Used' ? Colors.red : Colors.green),
        ),
      ),
    );
  }

  Widget usedCoupons(ThemeData theme) {
    return ListView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: controller.usedCouponList.length,
      padding: EdgeInsets.zero,
      itemBuilder: (_, index) {
        final coupon = controller.usedCouponList[index];
        final status = coupon['status'] as Map<String, dynamic>;
        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 8.0),
          child: Column(
            spacing: 12.h,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              AppText(
                text: coupon['date']?.toString() ?? '',
                fontSize: 14.sp,
                style: theme.textTheme.bodyMedium!.copyWith(color: Colors.grey),
              ),

              Container(
                decoration: BoxDecoration(
                  border: Border.all(width: 0.2, color: Colors.grey),
                  borderRadius: BorderRadius.circular(12.r),
                ),
                child: Column(
                  children: [
                    _buildTodayCard(
                      isTop: true,
                      isUsed: true,
                      theme,
                      'Lunch',
                      '12:00PM - 03:00PM',
                      status['day']?.toString() ?? '',
                      HugeIcons.strokeRoundedSun03,
                    ),
                    Divider(),
                    _buildTodayCard(
                      isUsed: true,
                      theme,
                      'Dinner',
                      '07:00 PM - 10:00 PM',
                      status['night']?.toString() ?? '',
                      HugeIcons.strokeRoundedMoon02,
                    ),
                  ],
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
