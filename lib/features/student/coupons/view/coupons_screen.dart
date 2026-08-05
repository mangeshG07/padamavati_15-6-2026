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
    WidgetsBinding.instance.addPostFrameCallback((_) {
      checkInternetAndShowPopup();
      controller.getCoupon();
    });
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(60.h),
        child: GradientAppbar(title: 'My Coupons', showBack: false),
      ),
      body: Obx(
        () => controller.isLoading.isTrue
            ? AppLoader(strokeWidth: 2.5, color: AppColors.lightPrimary)
            : SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.all(12),
                  child: Column(
                    spacing: 12.h,
                    children: [
                      _summaryRow(theme),
                      _totalCard(),
                      _buildToggle(),
                      Obx(
                        () => controller.selectedType.value == 0
                            ? todayCoupons(theme)
                            : usedCoupons(theme),
                      ),
                    ],
                  ),
                ),
              ),
      ),
    );
  }

  /// ================= SUMMARY =================
  Widget _summaryRow(ThemeData theme) {
    final summary = controller.couponSummary.value;

    return Row(
      spacing: 8.h,
      children: [
        _buildCouponCard(
          theme,
          summary.todayCoupons?.toString() ?? '0',
          // 'Total: ${summary.totalCoupons?.toString() ?? '0'} Coupons',
          '',
          'Today’s Coupons',
          HugeIcons.strokeRoundedTicketStar,
        ),
        _buildCouponCard(
          theme,
          summary.remainingCoupons?.toString() ?? '0',
          'Valid till: ${summary.expiryDate?.toString() ?? ''}',
          'Remaining Coupons',
          HugeIcons.strokeRoundedTags,
        ),
      ],
    );
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
        child: Card(
          color: Colors.white,
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
                          color: Colors.black,
                        ),
                      ),
                      // if(value.isNotEmpty)
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

  /// ================= TOTAL =================
  Widget _totalCard() {
    final total =
        controller.couponSummary.value.totalCoupons?.toString() ?? '0';
    final expire =
        controller.couponSummary.value.expiredCoupons?.toString() ?? '0';
    return Row(
      spacing: 8,
      children: [
        Expanded(
          child: Container(
            width: double.infinity,
            padding: const EdgeInsets.all(8.0),
            alignment: Alignment.center,
            decoration: buildCardDecoration(),
            child: AppText(
              text: 'Expired: $expire Coupons',
              fontSize: 16.sp,
              color: Colors.black,
            ),
          ),
        ),
        Expanded(
          child: Container(
            width: double.infinity,
            padding: const EdgeInsets.all(8.0),
            alignment: Alignment.center,
            decoration: buildCardDecoration(),
            child: AppText(
              text: 'Total: $total Coupons',
              fontSize: 16.sp,
              color: Colors.black,
            ),
          ),
        ),
      ],
    );
  }

  /// ================= TOGGLE =================
  Widget _buildToggle() {
    return Obx(
      () => Container(
        width: Get.width,
        padding: const EdgeInsets.all(6.0),
        decoration: BoxDecoration(
          color: AppColors.grey100,
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
            ),
            SizedBox(width: 8.w),
            toggleItem(
              title: "Used Coupons",
              isSelected: controller.selectedType.value == 1,
              onTap: () async {
                controller.selectedType.value = 1;
              },
            ),
          ],
        ),
      ),
    );
  }

  /// ================= LIST =================
  Widget todayCoupons(ThemeData theme) {
    if (controller.todayQR.isEmpty) {
      return const EmptyView();
    }

    return Column(
      spacing: 12.h,
      children: controller.todayQR.map<Widget>((qr) {
        return _buildTodayCard(
          theme,
          qr.messTime == 'Morning'
              ? "Lunch"
              : qr.messTime == '1 Time'
              ? 'One Time'
              : "Dinner",
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
    );
  }

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
              child: HugeIcon(icon: icon, size: 20, color: Colors.black),
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
                    style: theme.textTheme.titleMedium!.copyWith(
                      color: Colors.black,
                    ),
                  ),
                  AppText(
                    text: subtitle,
                    fontSize: 12.sp,
                    style: theme.textTheme.bodySmall!.copyWith(
                      color: Colors.black,
                    ),
                  ),
                  AppText(
                    text: timing,
                    fontSize: 11.sp,
                    style: theme.textTheme.bodySmall!.copyWith(
                      color: Colors.grey,
                    ),
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
    if (controller.usedQR.isEmpty) {
      return const EmptyView();
    }
    return ListView.separated(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      separatorBuilder: (_, __) => SizedBox(height: 12.h),
      itemCount: controller.usedQR.length,
      padding: EdgeInsets.zero,
      itemBuilder: (_, index) {
        final qr = controller.usedQR[index];
        return _buildTodayCard(
          theme,
          qr.messTime == 'Morning'
              ? "Lunch"
              : qr.messTime == '1 Time'
              ? 'One Time'
              : "Dinner",
          qr.messType ?? '',
          qr.scannedAt == null
              ? 'Valid Till : ${qr.expiresAt}'
              : 'Used At : ${qr.scannedAt}',
          qr.status!,
          // HugeIcons.strokeRoundedServingFood,
          qr.messTime == 'Morning'
              ? HugeIcons.strokeRoundedSun03
              : HugeIcons.strokeRoundedMoon02,
          qr,
        );
      },
    );
  }
}
