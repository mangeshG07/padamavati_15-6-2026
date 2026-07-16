import 'package:padmavatiupdated/core/exporters/app_export.dart';

class ScannedUsersList extends StatefulWidget {
  const ScannedUsersList({super.key});

  @override
  State<ScannedUsersList> createState() => _ScannedUsersListState();
}

class _ScannedUsersListState extends State<ScannedUsersList> {
  final controller = Get.find<DashboardController>();

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      checkInternetAndShowPopup();
      controller.getScannedUserList(isRefresh: true);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(60.h),
        child: GradientAppbar(title: 'Scanned Users', showBack: true),
      ),
      body: Obx(() {
        final users = controller.userPagination;
        if (users.isLoading.isTrue) {
          return AppLoader(strokeWidth: 2.5);
        }
        if (users.items.isEmpty) {
          return EmptyState(title: 'No Data Found');
        }

        return NotificationListener<ScrollNotification>(
          onNotification: (scroll) {
            if (scroll is ScrollEndNotification &&
                scroll.metrics.pixels >= scroll.metrics.maxScrollExtent - 50 &&
                users.hasMore &&
                !users.isLoadMore.value &&
                !users.isLoading.value) {
              controller.getScannedUserList(showLoading: false);
            }
            return false;
          },
          child: Column(
            children: [
              Expanded(
                child: ListView.separated(
                  padding: EdgeInsets.symmetric(horizontal: 12.w),
                  separatorBuilder: (_, __) => SizedBox(height: 12.h),
                  itemCount: users.items.length,
                  itemBuilder: (BuildContext context, int index) {
                    final people = users.items[index];

                    return GestureDetector(
                      onTap: () => Get.toNamed(
                        Routes.scannedUsersDetails,
                        arguments: {'id': people.studentId.toString()},
                      ),
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(16.r),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withValues(alpha: 0.05),
                              blurRadius: 10,
                              offset: const Offset(0, 4),
                            ),
                          ],
                        ),
                        padding: EdgeInsets.all(14.w),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            /// 🔹 Profile Image
                            ClipRRect(
                              borderRadius: BorderRadius.circular(12.r),
                              child: CustomImage(
                                image: people.profileImage ?? '',
                                placeholder: Image.asset(
                                  AppAssets.defaultImage,
                                ),
                                errorWidget: Image.asset(
                                  AppAssets.defaultImage,
                                ),
                                width: 55.w,
                                height: 55.w,
                                fit: BoxFit.cover,
                              ),
                            ),

                            SizedBox(width: 12.w),

                            /// 🔹 Details Section
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  /// Name + Meal Badge
                                  Row(
                                    children: [
                                      Expanded(
                                        child: AppText(
                                          text: people.userName ?? 'Unknown',
                                          fontSize: 15.sp,
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),

                                      /// Meal Badge
                                      if ((people.meal ?? '').isNotEmpty)
                                        Container(
                                          padding: EdgeInsets.symmetric(
                                            horizontal: 10.w,
                                            vertical: 4.h,
                                          ),
                                          decoration: BoxDecoration(
                                            color: AppColors.lightPrimary
                                                .withValues(alpha: 0.1),
                                            borderRadius: BorderRadius.circular(
                                              20.r,
                                            ),
                                          ),
                                          child: AppText(
                                            text: people.meal ?? '',
                                            fontSize: 11.sp,
                                            fontWeight: FontWeight.w500,
                                            color: AppColors.lightPrimary,
                                          ),
                                        ),
                                    ],
                                  ),

                                  SizedBox(height: 6.h),

                                  /// Mess Type
                                  Row(
                                    children: [
                                      Icon(
                                        Icons.restaurant,
                                        size: 14.sp,
                                        color: Colors.grey,
                                      ),
                                      SizedBox(width: 6.w),
                                      AppText(
                                        text: people.messType ?? '-',
                                        fontSize: 12.sp,
                                        color: Colors.grey[700],
                                      ),
                                    ],
                                  ),

                                  SizedBox(height: 4.h),

                                  /// Scanned By
                                  if ((people.scannedBy ?? '').isNotEmpty)
                                    Row(
                                      children: [
                                        Icon(
                                          Icons.person,
                                          size: 14.sp,
                                          color: Colors.grey,
                                        ),
                                        SizedBox(width: 6.w),
                                        AppText(
                                          text: 'By ${people.scannedBy}',
                                          fontSize: 12.sp,
                                          color: Colors.grey[600],
                                        ),
                                      ],
                                    ),

                                  SizedBox(height: 4.h),

                                  /// Time
                                  if ((people.scannedAt ?? '').isNotEmpty)
                                    Row(
                                      children: [
                                        Icon(
                                          Icons.access_time,
                                          size: 14.sp,
                                          color: Colors.grey,
                                        ),
                                        SizedBox(width: 6.w),
                                        AppText(
                                          text: people.scannedAt ?? '',
                                          fontSize: 12.sp,
                                          color: Colors.grey[500],
                                        ),
                                      ],
                                    ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                  // itemBuilder: (BuildContext context, int index) {
                  //   final people = users.items[index];
                  //   return Container(
                  //     decoration: buildCardDecoration(),
                  //     padding: EdgeInsets.all(16.w),
                  //     child: Row(
                  //       children: [
                  //         ClipRRect(
                  //           borderRadius: BorderRadius.circular(12.r),
                  //           child: CustomImage(
                  //             image: people.profileImage ?? '',
                  //             placeholder: Image.asset(
                  //               AppAssets.defaultImage,
                  //             ),
                  //             errorWidget: Image.asset(
                  //               AppAssets.defaultImage,
                  //             ),
                  //             width: 50.w,
                  //           ),
                  //         ),
                  //         SizedBox(width: 12.w),
                  //         Expanded(
                  //           child: Column(
                  //             crossAxisAlignment:
                  //                 CrossAxisAlignment.start,
                  //             children: [
                  //               AppText(
                  //                 text: people.userName ?? '',
                  //                 fontSize: 16.sp,
                  //                 fontWeight: FontWeight.bold,
                  //               ),
                  //               SizedBox(height: 6.h),
                  //               AppText(
                  //                 text: people.messType ?? '-',
                  //                 fontSize: 13.sp,
                  //               ),
                  //             ],
                  //           ),
                  //         ),
                  //       ],
                  //     ),
                  //   );
                  // },
                ),
              ),
              Obx(() {
                if (users.isLoadMore.value) {
                  // Still loading next page
                  return Padding(
                    padding: EdgeInsets.symmetric(vertical: 16.h),
                    child: AppLoader.circular(color: AppColors.lightPrimary),
                  );
                } else {
                  return const SizedBox();
                }
              }),
            ],
          ),
        );
      }),
    );
  }
}
