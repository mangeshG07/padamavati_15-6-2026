import 'package:padmavatiupdated/core/exporters/app_export.dart';

class AdminDashboard extends StatefulWidget {
  const AdminDashboard({super.key});

  @override
  State<AdminDashboard> createState() => _AdminDashboardState();
}

class _AdminDashboardState extends State<AdminDashboard> {
  final controller = Get.find<DashboardController>();

  @override
  void initState() {
    super.initState();
    controller.getDashboard();
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(60.h),
        child: GradientAppbar(title: 'Dashboard', showBack: false),
      ),
      body: Obx(
        () => controller.isLoading.isTrue
            ? AppLoader(strokeWidth: 2.5.w, color: AppColors.lightPrimary)
            : SingleChildScrollView(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  spacing: 16.h,
                  children: [
                    _buildBranchData(theme, controller.dashboardData.value),
                    AppText(
                      text: "Today's Overview",
                      fontSize: 22.sp,
                      maxLines: 2,
                      style: theme.textTheme.titleLarge,
                    ),
                    Row(
                      spacing: 16.w,
                      children: [
                        Expanded(
                          child: _buildOverviewCard(
                            'People\nCount',
                            controller.overview.value.peopleCount?.toString() ??
                                '0',
                            HugeIcons.strokeRoundedCall02,
                            () async {},
                            Colors.blue,
                            theme,
                            isLoading: false,
                          ),
                        ),
                        Expanded(
                          child: _buildOverviewCard(
                            'Lunch\nScans',
                            controller.overview.value.todayLunchScans
                                    ?.toString() ??
                                '0',
                            HugeIcons.strokeRoundedCall02,
                            () {
                              controller.selectedType.value = 1;
                              Get.toNamed(Routes.scannedUsers);
                            },
                            Colors.green,
                            theme,
                            isLoading: false,
                          ),
                        ),
                        Expanded(
                          child: _buildOverviewCard(
                            'Dinner\nScans',
                            controller.overview.value.todayDinnerScans
                                    ?.toString() ??
                                '0',
                            HugeIcons.strokeRoundedCall02,
                            () {
                              controller.selectedType.value = 2;
                              Get.toNamed(Routes.scannedUsers);
                            },
                            Colors.red,
                            theme,
                            isLoading: false,
                          ),
                        ),
                      ],
                    ),

                    _buildSectionCard(controller.menuList, theme),
                    SizedBox(height: 0.02.h),
                    AppButton(
                      icon: HugeIcon(icon: HugeIcons.strokeRoundedQrCode01),
                      text: "Scan QR",
                      onTap: () => Get.toNamed(Routes.qrScannerScreen),
                      backgroundColor: AppColors.lightSecondary,
                    ),
                  ],
                ),
              ),
      ),
    );
  }

  Widget _buildBranchData(ThemeData theme, DashboardModel data) {
    return Card(
      color: Colors.white,
      child: ListTile(
        leading: CustomImage(image: AppAssets.splashLogo, width: 50.h),
        title: AppText(
          text: data.name ?? '',
          fontSize: 16.sp,
          maxLines: 2,
          style: theme.textTheme.titleMedium,
        ),
        subtitle: AppText(
          text: data.branchName ?? '',
          fontSize: 14.sp,
          style: theme.textTheme.bodyMedium,
        ),
      ),
    );
  }

  /// 🔹 MENU CARD
  Widget _buildOverviewCard(
    String title,
    String value,
    dynamic icon,
    dynamic onTap,
    Color color,
    ThemeData theme, {
    bool isLoading = false,
  }) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: Get.height * 0.1.h,
        padding: EdgeInsets.symmetric(horizontal: 8.w),
        decoration: BoxDecoration(
          color: color.withValues(alpha: 0.1),
          borderRadius: BorderRadius.circular(16.r),
        ),
        child: isLoading
            ? AppLoader.circular(size: 20.r, color: AppColors.lightPrimary)
            : Column(
                spacing: 6.h,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  AppText(
                    text: title,
                    fontSize: 13.sp,
                    maxLines: 2,
                    style: theme.textTheme.labelMedium!.copyWith(
                      color: color,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Center(
                    child: AppText(
                      text: value,
                      fontSize: 13.sp,
                      maxLines: 2,
                      style: theme.textTheme.bodyMedium,
                      textAlign: TextAlign.center,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
      ),
    );
  }

  Widget _buildSectionCard(List<dynamic> list, ThemeData theme) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20.r),
        boxShadow: [
          BoxShadow(color: Colors.black.withValues(alpha: 0.04), blurRadius: 8),
        ],
      ),
      child: Column(
        children: List.generate(list.length, (index) {
          final menu = list[index];
          return Column(
            children: [
              _menuItem(menu, theme),
              if (index != list.length - 1)
                Divider(
                  height: 0,
                  thickness: 0.6,
                  indent: 50.w,
                  endIndent: 12.w,
                  color: theme.dividerTheme.color,
                ),
            ],
          );
        }),
      ),
    );
  }

  Widget _menuItem(DashboardMenuItem menu, ThemeData theme) {
    return Material(
      color: Colors.transparent,
      child: InkWell(
        borderRadius: BorderRadius.circular(12.r),
        onTap: menu.onTap,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 14.w, vertical: 14.h),
          child: Row(
            children: [
              Container(
                padding: EdgeInsets.all(10.w),
                decoration: BoxDecoration(
                  color: theme.brightness == Brightness.light
                      ? AppColors.lightPrimary.withValues(alpha: 0.08)
                      : AppColors.lightPink.withValues(alpha: 0.2),
                  borderRadius: BorderRadius.circular(14.r),
                  border: Border.all(
                    color: theme.dividerColor.withValues(alpha: 0.1),
                  ),
                ),
                child: HugeIcon(
                  icon: menu.icon,
                  color: theme.brightness == Brightness.light
                      ? AppColors.lightPrimary
                      : Colors.white,
                  size: 20.r,
                ),
              ),
              SizedBox(width: 12.w),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    AppText(
                      text: menu.title,
                      fontSize: 14.sp,
                      style: theme.textTheme.bodyMedium!.copyWith(
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    if (menu.isToday == true)
                      AppText(
                        text: 'Today',
                        fontSize: 14.sp,
                        style: theme.textTheme.labelMedium,
                      ),
                  ],
                ),
              ),
              AnimatedContainer(
                duration: const Duration(milliseconds: 200),
                padding: EdgeInsets.all(6.w),
                child: AppText(text: menu.count.toString(), fontSize: 14.sp),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

//
// class AdminDashboard extends GetView<DashboardController> {
//   const AdminDashboard({super.key});
//
//
// }
