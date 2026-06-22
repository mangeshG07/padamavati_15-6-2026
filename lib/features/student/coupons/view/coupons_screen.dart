import 'package:padmavatiupdated/core/exporters/app_export.dart';

class CouponsScreen extends StatefulWidget {
  const CouponsScreen({super.key});

  @override
  State<CouponsScreen> createState() => _CouponsScreenState();
}

class _CouponsScreenState extends State<CouponsScreen> {
  final controller = Get.find<CouponController>();

  @override
  void initState() {
    super.initState();
    controller.getCoupon();
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
      backgroundColor: Colors.white,
      body: Obx(
        () => controller.isLoading.isTrue
            ? AppLoader(strokeWidth: 2.5, color: AppColors.lightPrimary)
            : SingleChildScrollView(
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
                                controller.couponSummary.value.todayCoupons
                                        ?.toString() ??
                                    '0',
                                'Total: ${controller.couponSummary.value.totalCoupons?.toString() ?? '0'} Coupons',
                                'Today’s Coupons',
                                HugeIcons.strokeRoundedTicketStar,
                              ),
                              _buildCouponCard(
                                theme,
                                controller.couponSummary.value.remainingCoupons
                                        ?.toString() ??
                                    '0',
                                'Valid til: ${controller.couponSummary.value.expiryDate?.toString() ?? ''}',
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
                                text:
                                    'Total: ${controller.couponSummary.value.totalCoupons?.toString() ?? '0'} Coupons',
                                fontSize: 18.sp,
                              ),
                            ),
                          ),
                          _buildToggle(
                            theme.brightness == Brightness.light,
                            theme,
                          ),
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
      ),
    );
  }

  Widget _buildAppbar(ThemeData theme) {
    return GradientAppbar(title: 'My Coupons', showBack: false);
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
      children: controller.todayQR.map<Widget>((qr) {
        return _buildTodayCard(
          theme,
          qr.messTime ?? '',
          qr.messType ?? '',
          qr.scannedAt == null
              ? 'Valid Till : ${qr.expiresAt}'
              : 'Used At : ${qr.scannedAt}',
          qr.status!,
          qr.messTime == 'Morning'
              ? HugeIcons.strokeRoundedSun03
              : HugeIcons.strokeRoundedMoon02,
          qr,
        );
      }).toList(),

      // _buildTodayCard(
      //   theme,
      //   'Lunch',
      //   '12:00PM - 03:00PM',
      //   'Used',
      //   HugeIcons.strokeRoundedSun03,
      // ),
      // _buildTodayCard(
      //   theme,
      //   'Dinner',
      //   '07:00 PM - 10:00 PM',
      //   'Available',
      //   HugeIcons.strokeRoundedMoon02,
      // ),
    );
  }

  // Widget _buildTodayCard(
  //   ThemeData theme,
  //   String title,
  //   String subtitle,
  //   String timing,
  //   String status,
  //   dynamic icon, {
  //   bool isUsed = false,
  //   bool isTop = false,
  // }) {
  //   return GestureDetector(
  //     onTap: () => Get.toNamed(
  //       Routes.qrDetails,
  //       arguments: {'title': title, 'subTitle': subtitle, 'status': status},
  //     ),
  //     child: Container(
  //       decoration: isUsed
  //           ? BoxDecoration(
  //               color: Colors.white,
  //               borderRadius: isUsed
  //                   ? isTop
  //                         ? BorderRadius.only(
  //                             topLeft: Radius.circular(12.r),
  //                             topRight: Radius.circular(12.r),
  //                           )
  //                         : BorderRadius.only(
  //                             bottomLeft: Radius.circular(12.r),
  //                             bottomRight: Radius.circular(12.r),
  //                           )
  //                   : BorderRadius.circular(12.r),
  //               boxShadow: [
  //                 BoxShadow(
  //                   color: Colors.black.withValues(alpha: 0.05),
  //                   blurRadius: 12.r,
  //                   offset: const Offset(0, 4),
  //                   spreadRadius: 0,
  //                 ),
  //                 BoxShadow(
  //                   color: Colors.black.withValues(alpha: 0.02),
  //                   blurRadius: 4.r,
  //                   offset: const Offset(0, 2),
  //                 ),
  //               ],
  //             )
  //           : buildCardDecoration(isUsed: isUsed),
  //       child: ListTile(
  //         leading: AppIconButton(
  //           icon: icon,
  //           backgroundColor: AppColors.grey200,
  //         ),
  //         horizontalTitleGap: 0,
  //         title: AppText(
  //           text: title,
  //           fontSize: 14.sp,
  //           style: theme.textTheme.titleMedium,
  //         ),
  //         subtitle: Column(
  //           crossAxisAlignment: CrossAxisAlignment.start,
  //           children: [
  //             AppText(
  //               text: subtitle,
  //               fontSize: 14.sp,
  //               style: theme.textTheme.bodyMedium,
  //             ),
  //             AppText(
  //               text: timing,
  //               fontSize: 12.sp,
  //               style: theme.textTheme.bodySmall,
  //             ),
  //           ],
  //         ),
  //         trailing: badge(
  //           status,
  //           status == 'Active' ? Colors.green : Colors.red,
  //         ),
  //       ),
  //     ),
  //   );
  // }

  Widget _buildTodayCard(
    ThemeData theme,
    String title,
    String subtitle,
    String timing,
    String status,
    dynamic icon,
    QRModel data,
  ) {
    final isActive = status == 'Active';

    return GestureDetector(
      onTap: () => Get.toNamed(Routes.qrDetails, arguments: {'qrData': data}),
      child: Container(
        padding: const EdgeInsets.all(12),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(16),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withValues(alpha: 0.05),
              blurRadius: 10,
              offset: const Offset(0, 4),
            ),
          ],
        ),
        child: Row(
          children: [
            /// ICON
            Container(
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: AppColors.grey200,
                borderRadius: BorderRadius.circular(12),
              ),
              child: HugeIcon(icon: icon, size: 20),
            ),

            SizedBox(width: 12.w),

            /// TEXT
            Expanded(
              child: Column(
                spacing: 3,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  AppText(
                    text: title,
                    fontSize: 14.sp,
                    style: theme.textTheme.titleMedium,
                  ),
                  // SizedBox(height: 4.h),
                  AppText(
                    text: subtitle,
                    fontSize: 12.sp,
                    style: theme.textTheme.bodyMedium,
                  ),
                  // SizedBox(height: 2.h),
                  AppText(
                    text: timing,
                    fontSize: 11.sp,
                    style: theme.textTheme.bodySmall,
                  ),
                ],
              ),
            ),

            /// STATUS BADGE
            badge(status, isActive ? Colors.green : Colors.red),
          ],
        ),
      ),
    );
  }

  Widget usedCoupons(ThemeData theme) {
    return ListView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: controller.usedQR.length,
      padding: EdgeInsets.zero,
      itemBuilder: (_, index) {
        final qr = controller.usedQR[index];
        return _buildTodayCard(
          theme,
          qr.messTime ?? '',
          qr.messType ?? '',
          qr.scannedAt == null
              ? 'Valid Till : ${qr.expiresAt}'
              : 'Used At : ${qr.scannedAt}',
          qr.status!,
          qr.messTime == 'Morning'
              ? HugeIcons.strokeRoundedSun03
              : HugeIcons.strokeRoundedMoon02,
          qr,
        );
      },
    );
  }
}
