import 'package:padmavatiupdated/core/exporters/app_export.dart';

class AdminDashboard extends GetView<DashboardController> {
  AdminDashboard({super.key});

  final data = Get.find<RequestsUserController>();

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
                    _buildSectionTitle(theme),
                    _buildOverviewCards(theme),

                    _buildSectionCard(controller.menuList, theme),
                    SizedBox(height: 0.02.h),
                    _buildScanButton(),

                    _paymentTable(context),
                    SizedBox(height: 0.03.h),
                  ],
                ),
              ),
      ),
    );
  }

  Widget _paymentTable(BuildContext context) {
    final payData = data.paymentPagination;

    if (payData.items.isEmpty) {
      return const SizedBox.shrink();
    }

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        AppText(
          text: "Payments Overview",
          fontSize: 18.sp,
          fontWeight: FontWeight.w600,
        ),
        SizedBox(height: 10.h),

        /// 🔥 SAME PAGINATION LISTENER
        NotificationListener<ScrollNotification>(
          onNotification: (scroll) {
            if (scroll is ScrollEndNotification &&
                scroll.metrics.pixels >= scroll.metrics.maxScrollExtent - 50 &&
                payData.hasMore &&
                !payData.isLoadMore.value &&
                !payData.isLoading.value) {
              data.getUsersPaymentList(showLoading: false);
            }
            return false;
          },

          /// 🔥 IMPORTANT: vertical scroll
          child: SizedBox(
            height: payData.items.length * 60.0,
            child: SingleChildScrollView(
              child: Column(
                children: [
                  /// 🔥 horizontal scroll inside
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: DataTable(
                      showBottomBorder: true,
                      border: TableBorder.all(
                        borderRadius: BorderRadius.circular(8),
                        color: AppColors.grey200,
                      ),
                      clipBehavior: Clip.antiAliasWithSaveLayer,
                      columns: [
                        _columnTitle('Id'),
                        _columnTitle('Name'),
                        _columnTitle('Mess'),
                        _columnTitle('Food'),
                        _columnTitle('Mobile'),
                        _columnTitle('Total'),
                        _columnTitle('Paid'),
                        _columnTitle('Pending'),
                        _columnTitle('Status'),
                      ],
                      rows: List.generate(payData.items.length, (index) {
                        final pay = payData.items[index];

                        return DataRow(
                          cells: [
                            _cell(pay.id, isId: true),
                            _cell(pay.name),
                            _cell(pay.messTime),
                            _cell(pay.messType),
                            _cell(pay.mobileNo),
                            _cell(pay.totalAmount),
                            _cell(pay.paidAmount),
                            _cell(pay.pendingAmount),
                            _statusCell(pay.paymentStatusText),
                          ],
                        );
                      }),
                    ),
                  ),

                  /// 🔄 SAME loader as your QR screen
                  Obx(() {
                    if (payData.isLoadMore.value) {
                      return Padding(
                        padding: EdgeInsets.all(16),
                        child: CircularProgressIndicator(),
                      );
                    } else {
                      return SizedBox();
                    }
                  }),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }

  // Widget _paymentTable(BuildContext context) {
  //   final payData = data.paymentPagination;
  //   if (payData.items.isEmpty) {
  //     return const SizedBox.shrink();
  //   }
  //   return Column(
  //     crossAxisAlignment: CrossAxisAlignment.start,
  //     children: [
  //       AppText(
  //         text: "Payments Overview",
  //         fontSize: 18.sp,
  //         fontWeight: FontWeight.w600,
  //       ),
  //       SizedBox(height: 10.h),
  //       SingleChildScrollView(
  //         scrollDirection: Axis.horizontal,
  //         child: DataTable(
  //           headingRowHeight: 40,
  //           dataRowMaxHeight: 50,
  //           horizontalMargin: 5,
  //           columnSpacing: 10,
  //           showBottomBorder: true,
  //           border: TableBorder.all(
  //             borderRadius: BorderRadius.circular(8),
  //             color: AppColors.grey200,
  //           ),
  //           clipBehavior: Clip.antiAliasWithSaveLayer,
  //           columns: [
  //             _columnTitle('id'),
  //             _columnTitle('Name'),
  //             _columnTitle('Mess'),
  //             _columnTitle('Food'),
  //             _columnTitle('Mobile'),
  //             _columnTitle('Total'),
  //             _columnTitle('Paid'),
  //             _columnTitle('Pending'),
  //             _columnTitle('Status'),
  //           ],
  //           rows: List.generate(payData.items.length, (index) {
  //             final pay = payData.items[index];
  //             return DataRow(
  //               color: WidgetStateProperty.resolveWith<Color?>(
  //                 (states) =>
  //                     index.isEven ? Colors.grey.withValues(alpha: 0.03) : null,
  //               ),
  //               cells: [
  //                 _cell(pay.id, isId: true),
  //                 _cell(pay.name),
  //                 _cell(pay.messTime),
  //                 _cell(pay.messType),
  //                 _cell(pay.mobileNo),
  //                 _cell(pay.totalAmount),
  //                 _cell(pay.paidAmount),
  //                 _cell(pay.pendingAmount),
  //                 _statusCell(pay.paymentStatusText),
  //               ],
  //             );
  //           }).toList(),
  //         ),
  //       ),
  //     ],
  //   );
  // }

  DataColumn _columnTitle(dynamic value) {
    return DataColumn(
      headingRowAlignment: MainAxisAlignment.center,
      label: Center(
        child: AppText(
          text: value?.toString() ?? '-',
          fontSize: 13.sp,
          textAlign: TextAlign.center,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }

  DataCell _cell(dynamic value, {bool isId = false}) {
    return DataCell(
      GestureDetector(
        onTap: () {
          if (isId) {
            Get.toNamed(
              Routes.scannedUsersDetails,
              arguments: {'id': value.toString()},
            );
          }
        },
        child: Center(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: isId ? 8.0 : 0),
            child: AppText(
              text: value?.toString() ?? '-',
              fontSize: 13.sp,
              color: isId ? Colors.blue : Colors.black,
              textAlign: TextAlign.center,
            ),
          ),
        ),
      ),
    );
  }

  DataCell _statusCell(String? status) {
    final color = status == 'Complete'
        ? Colors.green
        : status == 'Not Paid'
        ? Colors.red
        : Colors.orange;

    return DataCell(
      Center(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 4.h),
          decoration: BoxDecoration(
            color: color.withValues(alpha: 0.1),
            borderRadius: BorderRadius.circular(6),
          ),
          child: AppText(
            text: status ?? '-',
            fontSize: 12.sp,
            color: color,
            fontWeight: FontWeight.w600,
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

  Widget _buildSectionTitle(ThemeData theme) {
    return AppText(
      text: "Today's Overview",
      fontSize: 22.sp,
      maxLines: 2,
      style: theme.textTheme.titleLarge,
    );
  }

  Widget _buildOverviewCards(ThemeData theme) {
    return Row(
      spacing: 16.w,
      children: [
        Expanded(
          child: _buildOverviewCard(
            'People\nCount',
            controller.overview.value.peopleCount?.toString() ?? '0',
            HugeIcons.strokeRoundedCall02,
            () {},
            Colors.blue,
            theme,
          ),
        ),
        Expanded(
          child: _buildOverviewCard(
            'Lunch\nScans',
            controller.overview.value.todayLunchScans?.toString() ?? '0',
            HugeIcons.strokeRoundedCall02,
            () {
              controller.selectedType.value = 1;
              Get.toNamed(Routes.scannedUsers);
            },
            Colors.green,
            theme,
          ),
        ),
        Expanded(
          child: _buildOverviewCard(
            'Dinner\nScans',
            controller.overview.value.todayDinnerScans?.toString() ?? '0',
            HugeIcons.strokeRoundedCall02,
            () {
              controller.selectedType.value = 2;
              Get.toNamed(Routes.scannedUsers);
            },
            Colors.red,
            theme,
          ),
        ),
      ],
    );
  }

  Widget _buildScanButton() {
    return AppButton(
      icon: HugeIcon(icon: HugeIcons.strokeRoundedQrCode01),
      text: "Scan QR",
      onTap: () => Get.toNamed(Routes.qrScannerScreen),
      backgroundColor: AppColors.lightSecondary,
    );
  }

  /// 🔹 MENU CARD
  Widget _buildOverviewCard(
    String title,
    String value,
    dynamic icon,
    dynamic onTap,
    Color color,
    ThemeData theme,
  ) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: Get.height * 0.1.h,
        padding: EdgeInsets.symmetric(horizontal: 8.w),
        decoration: BoxDecoration(
          color: color.withValues(alpha: 0.1),
          borderRadius: BorderRadius.circular(16.r),
        ),
        child: Column(
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
