import 'package:padmavatiupdated/core/exporters/app_export.dart';

class AdminDashboard extends StatefulWidget {
  const AdminDashboard({super.key});

  @override
  State<AdminDashboard> createState() => _AdminDashboardState();
}

class _AdminDashboardState extends State<AdminDashboard>
    with SingleTickerProviderStateMixin {
  final data = Get.find<RequestsUserController>();
  final controller = Get.find<DashboardController>();
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
    WidgetsBinding.instance.addPostFrameCallback((_) {
      checkInternetAndShowPopup();
      controller.getDashboard();
      data.getUsersPaymentList(isRefresh: true);
    });
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
            : NestedScrollView(
                controller: ScrollController(),
                headerSliverBuilder: (context, innerBoxIsScrolled) {
                  return [
                    /// 🔹 TOP CONTENT
                    SliverToBoxAdapter(
                      child: Padding(
                        padding: const EdgeInsets.all(16),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            _buildBranchData(
                              theme,
                              controller.dashboardData.value,
                            ),

                            SizedBox(height: 12.h),

                            _buildPremiumSearchBar(),

                            SizedBox(height: 16.h),

                            _buildSectionTitle(theme),

                            SizedBox(height: 12.h),

                            _buildOverviewCards(theme),

                            SizedBox(height: 16.h),

                            _buildSectionCard(controller.menuList, theme),

                            SizedBox(height: 12.h),

                            _buildScanButton(),

                            SizedBox(height: 20.h),
                          ],
                        ),
                      ),
                    ),

                    /// 🔥 STICKY TAB BAR
                    SliverPersistentHeader(
                      pinned: true,
                      delegate: _TabBarDelegate(_buildTabs()),
                    ),
                  ];
                },

                /// 🔥 TAB VIEWS (SCROLLABLE LIST)
                body: _buildTabViews(),
              ),
      ),
    );
  }

  TabBar _buildTabs() {
    return TabBar(
      controller: _tabController,
      labelColor: AppColors.lightPrimary,
      unselectedLabelColor: Colors.grey,
      indicatorColor: AppColors.lightPrimary,
      tabs: const [
        Tab(text: "Pending"),
        Tab(text: "Partial"),
        Tab(text: "Completed"),
      ],
    );
  }

  Widget _buildTabViews() {
    return TabBarView(
      controller: _tabController,
      children: [
        _paymentList("Not Paid"),
        _paymentList("Partial"),
        _paymentList("Complete"),
      ],
    );
  }

  Widget _paymentTabs() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        AppText(
          text: "Payments Overview",
          fontSize: 18.sp,
          fontWeight: FontWeight.w600,
        ),
        SizedBox(height: 10.h),

        /// 🔥 TAB BAR
        TabBar(
          controller: _tabController,
          labelColor: AppColors.lightPrimary,
          unselectedLabelColor: Colors.grey,
          indicatorSize: TabBarIndicatorSize.tab,
          indicatorColor: AppColors.lightPrimary,
          tabs: const [
            Tab(text: "Pending"),
            Tab(text: "Partial"),
            Tab(text: "Completed"),
          ],
        ),

        SizedBox(
          height: 500,
          child: TabBarView(
            controller: _tabController,
            children: [
              _paymentList("Not Paid"),
              _paymentList("Partial"),
              _paymentList("Complete"),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildPremiumSearchBar() {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        gradient: LinearGradient(colors: [Colors.white, Colors.grey.shade100]),
        boxShadow: [
          BoxShadow(
            color: Colors.black12,
            blurRadius: 10,
            offset: Offset(0, 4),
          ),
        ],
      ),
      child: TextField(
        onTap: () {
          Get.find<AdminNavController>().changePage(2);
          Get.find<PeopleController>().searchNode.requestFocus();
        },
        readOnly: true,
        onChanged: (value) => controller.searchQuery.value = value,
        decoration: InputDecoration(
          hintText: "Search users, mobile...",
          prefixIcon: Icon(Icons.search, color: Colors.grey),
          suffixIcon: Obx(
            () => controller.searchQuery.value.isNotEmpty
                ? IconButton(
                    icon: Icon(Icons.close),
                    onPressed: () => controller.searchQuery.value = '',
                  )
                : SizedBox(),
          ),
          border: InputBorder.none,
          contentPadding: EdgeInsets.symmetric(vertical: 14),
        ),
      ),
    );
  }

  Widget _paymentList(String status) {
    return Obx(() {
      final payData = data.paymentPagination;

      /// 🔥 FILTER DATA
      final filteredList = payData.items
          .where((e) => e.paymentStatusText == status)
          .toList();

      if (filteredList.isEmpty) {
        return Center(child: Text("No Data"));
      }

      return NotificationListener<ScrollNotification>(
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
        child: ListView.builder(
          itemCount: filteredList.length + 1,
          itemBuilder: (context, index) {
            if (index == filteredList.length) {
              return Obx(
                () => payData.isLoadMore.value
                    ? Padding(
                        padding: const EdgeInsets.all(16),
                        child: CircularProgressIndicator(),
                      )
                    : const SizedBox(),
              );
            }

            final pay = filteredList[index];

            return _buildStudentCard(pay);

            //   Card(
            //   color: Colors.white,
            //   surfaceTintColor: Colors.white,
            //   margin: EdgeInsets.symmetric(vertical: 6.h),
            //   child: ListTile(
            //     onTap: () {
            //       Get.toNamed(
            //         Routes.scannedUsersDetails,
            //         arguments: {'id': pay.id.toString()},
            //       );
            //     },
            //     title: AppText(text: pay.name ?? '', fontSize: 14.sp),
            //     subtitle: Column(
            //       crossAxisAlignment: CrossAxisAlignment.start,
            //       children: [
            //         AppText(text: "Mobile: ${pay.mobileNo}", fontSize: 14.sp),
            //         AppText(text: "Mess: ${pay.messTime}", fontSize: 14.sp),
            //         AppText(text: "Food: ${pay.messType}", fontSize: 14.sp),
            //       ],
            //     ),
            //     trailing: Column(
            //       crossAxisAlignment: CrossAxisAlignment.end,
            //       children: [
            //         AppText(text: "₹${pay.totalAmount}", fontSize: 14.sp),
            //         _statusChip(pay.paymentStatusText),
            //       ],
            //     ),
            //   ),
            // );
          },
        ),
      );
    });
  }

  Widget _buildStudentCard(UserPaymentModel pay) {
    return Card(
      color: Colors.white,
      surfaceTintColor: Colors.white,
      margin: EdgeInsets.symmetric(vertical: 8.h, horizontal: 16.w),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16.r)),
      elevation: 3,
      shadowColor: Colors.grey.withValues(alpha: 0.15),
      child: InkWell(
        onTap: () {
          Get.toNamed(
            Routes.scannedUsersDetails,
            arguments: {'id': pay.id.toString()},
          );
        },
        borderRadius: BorderRadius.circular(16.r),
        child: Container(
          padding: EdgeInsets.all(16.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Header Row with Name and Amount
              Row(
                children: [
                  // Avatar with initials
                  Container(
                    width: 44.w,
                    height: 44.w,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors: [
                          AppColors.lightPrimary.withValues(alpha: 0.2),
                          AppColors.lightSecondary.withValues(alpha: 0.4),
                        ],
                      ),
                      borderRadius: BorderRadius.circular(12.r),
                    ),
                    child: Center(
                      child: AppText(
                        text: _getInitials(pay.name),
                        fontSize: 18.sp,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  SizedBox(width: 12.w),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        AppText(
                          text: pay.name ?? '',
                          fontSize: 16.sp,
                          fontWeight: FontWeight.w600,
                          color: Colors.grey.shade900,
                        ),
                        AppText(
                          text: "₹${pay.totalAmount}",
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w500,
                          color: Colors.green.shade700,
                        ),
                      ],
                    ),
                  ),
                  _statusChip(pay.paymentStatusText),
                ],
              ),
              SizedBox(height: 12.h),
              // Details Row
              Row(
                children: [
                  _buildDetailChip(Icons.phone, pay.mobileNo ?? ''),
                  SizedBox(width: 8.w),
                  _buildDetailChip(Icons.access_time, pay.messTime ?? ''),
                  SizedBox(width: 8.w),
                  _buildDetailChip(Icons.restaurant, pay.messType ?? ''),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  // Helper methods for alternative version
  Widget _buildDetailChip(IconData icon, String text) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 4.h),
      decoration: BoxDecoration(
        color: Colors.grey.shade50,
        borderRadius: BorderRadius.circular(8.r),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(icon, size: 12.sp, color: Colors.grey.shade600),
          SizedBox(width: 4.w),
          AppText(text: text, fontSize: 11.sp, color: Colors.grey.shade700),
        ],
      ),
    );
  }

  String _getInitials(String? name) {
    if (name == null || name.isEmpty) return '';
    List<String> nameParts = name.trim().split(' ');
    if (nameParts.length == 1) return nameParts[0][0].toUpperCase();
    return (nameParts[0][0] + nameParts[1][0]).toUpperCase();
  }

  Widget _statusChip(String? status) {
    final color = status == 'Complete'
        ? Colors.green
        : status == 'Not Paid'
        ? Colors.red
        : Colors.orange;

    return Container(
      margin: EdgeInsets.only(top: 4.h),
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
    );
  }

  // Widget _paymentTable(BuildContext context) {
  //   final payData = data.paymentPagination;
  //
  //   if (payData.items.isEmpty) {
  //     return const SizedBox.shrink();
  //   }
  //
  //   return Column(
  //     crossAxisAlignment: CrossAxisAlignment.start,
  //     children: [
  //       AppText(
  //         text: "Payments Overview",
  //         fontSize: 18.sp,
  //         fontWeight: FontWeight.w600,
  //       ),
  //       SizedBox(height: 10.h),
  //
  //       /// 🔥 SAME PAGINATION LISTENER
  //       NotificationListener<ScrollNotification>(
  //         onNotification: (scroll) {
  //           if (scroll is ScrollEndNotification &&
  //               scroll.metrics.pixels >= scroll.metrics.maxScrollExtent - 50 &&
  //               payData.hasMore &&
  //               !payData.isLoadMore.value &&
  //               !payData.isLoading.value) {
  //             data.getUsersPaymentList(showLoading: false);
  //           }
  //           return false;
  //         },
  //
  //         /// 🔥 IMPORTANT: vertical scroll
  //         child: SizedBox(
  //           height: payData.items.length * 60.0,
  //           child: SingleChildScrollView(
  //             child: Column(
  //               children: [
  //                 /// 🔥 horizontal scroll inside
  //                 SingleChildScrollView(
  //                   scrollDirection: Axis.horizontal,
  //                   child: DataTable(
  //                     showBottomBorder: true,
  //                     dataRowMaxHeight: 50,
  //                     headingRowHeight: 40,
  //                     columnSpacing: 20,
  //                     horizontalMargin: 10,
  //                     border: TableBorder.all(
  //                       borderRadius: BorderRadius.circular(8),
  //                       color: AppColors.grey200,
  //                     ),
  //                     clipBehavior: Clip.antiAliasWithSaveLayer,
  //                     columns: [
  //                       _columnTitle('Id'),
  //                       _columnTitle('Name'),
  //                       _columnTitle('Mess'),
  //                       _columnTitle('Food'),
  //                       _columnTitle('Mobile'),
  //                       _columnTitle('Total'),
  //                       _columnTitle('Paid'),
  //                       _columnTitle('Pending'),
  //                       _columnTitle('Status'),
  //                     ],
  //                     rows: List.generate(payData.items.length, (index) {
  //                       final pay = payData.items[index];
  //
  //                       return DataRow(
  //                         cells: [
  //                           _cell(pay.id, isId: true),
  //                           _cell(pay.name),
  //                           _cell(pay.messTime),
  //                           _cell(pay.messType),
  //                           _cell(pay.mobileNo),
  //                           _cell(pay.totalAmount),
  //                           _cell(pay.paidAmount),
  //                           _cell(pay.pendingAmount),
  //                           _statusCell(pay.paymentStatusText),
  //                         ],
  //                       );
  //                     }),
  //                   ),
  //                 ),
  //
  //                 /// 🔄 SAME loader as your QR screen
  //                 Obx(() {
  //                   if (payData.isLoadMore.value) {
  //                     return Padding(
  //                       padding: const EdgeInsets.all(16),
  //                       child: CircularProgressIndicator(),
  //                     );
  //                   } else {
  //                     return SizedBox();
  //                   }
  //                 }),
  //               ],
  //             ),
  //           ),
  //         ),
  //       ),
  //     ],
  //   );
  // }

  // DataColumn _columnTitle(dynamic value) {
  //   return DataColumn(
  //     headingRowAlignment: MainAxisAlignment.center,
  //     label: Center(
  //       child: AppText(
  //         text: value?.toString() ?? '-',
  //         fontSize: 13.sp,
  //         textAlign: TextAlign.center,
  //         fontWeight: FontWeight.bold,
  //       ),
  //     ),
  //   );
  // }
  //
  // DataCell _cell(dynamic value, {bool isId = false}) {
  //   return DataCell(
  //     GestureDetector(
  //       onTap: () {
  //         if (isId) {
  //           Get.toNamed(
  //             Routes.scannedUsersDetails,
  //             arguments: {'id': value.toString()},
  //           );
  //         }
  //       },
  //       child: Center(
  //         child: Padding(
  //           padding: EdgeInsets.symmetric(horizontal: isId ? 8.0 : 0),
  //           child: AppText(
  //             text: value?.toString() ?? '-',
  //             fontSize: 13.sp,
  //             color: isId ? Colors.blue : Colors.black,
  //             textAlign: TextAlign.center,
  //           ),
  //         ),
  //       ),
  //     ),
  //   );
  // }
  //
  // DataCell _statusCell(String? status) {
  //   final color = status == 'Complete'
  //       ? Colors.green
  //       : status == 'Not Paid'
  //       ? Colors.red
  //       : Colors.orange;
  //
  //   return DataCell(
  //     Center(
  //       child: Container(
  //         padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 4.h),
  //         decoration: BoxDecoration(
  //           color: color.withValues(alpha: 0.1),
  //           borderRadius: BorderRadius.circular(6),
  //         ),
  //         child: AppText(
  //           text: status ?? '-',
  //           fontSize: 12.sp,
  //           color: color,
  //           fontWeight: FontWeight.w600,
  //         ),
  //       ),
  //     ),
  //   );
  // }

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
            () {
              Get.find<AdminNavController>().changePage(2);
            },
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

class _TabBarDelegate extends SliverPersistentHeaderDelegate {
  final TabBar tabBar;

  _TabBarDelegate(this.tabBar);

  @override
  double get minExtent => tabBar.preferredSize.height;

  @override
  double get maxExtent => tabBar.preferredSize.height;

  @override
  Widget build(
    BuildContext context,
    double shrinkOffset,
    bool overlapsContent,
  ) {
    return Container(color: Colors.white, child: tabBar);
  }

  @override
  bool shouldRebuild(_TabBarDelegate oldDelegate) {
    return false;
  }
}
