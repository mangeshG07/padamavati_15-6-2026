import '../../../../core/exporters/app_export.dart';

class LeaveRequest extends StatelessWidget {
  const LeaveRequest({
    super.key,
    required this.leaveData,
    required this.controller,
  });

  final PaginationState<LeaveRequestModel> leaveData;
  final RequestController controller;

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => leaveData.isLoading.isTrue
          ? AppLoader(strokeWidth: 2.5)
          : leaveData.items.isEmpty
          ? Center(
              child: AppText(text: 'No Data Found', fontSize: 16.sp),
            )
          : NotificationListener<ScrollNotification>(
              onNotification: (scroll) {
                if (scroll is ScrollEndNotification &&
                    scroll.metrics.pixels >=
                        scroll.metrics.maxScrollExtent - 50 &&
                    leaveData.hasMore &&
                    !leaveData.isLoadMore.value &&
                    !leaveData.isLoading.value) {
                  controller.getLeaveRequestList(showLoading: false);
                }
                return false;
              },
              child: Column(
                children: [
                  Expanded(
                    child: ListView.separated(
                      padding: EdgeInsets.symmetric(horizontal: 12.w),
                      separatorBuilder: (_, __) => SizedBox(height: 12.h),
                      itemCount: leaveData.items.length,
                      itemBuilder: (BuildContext context, int index) {
                        final request = leaveData.items[index];
                        return Container(
                          decoration: buildCardDecoration(),
                          padding: EdgeInsets.all(16.w),
                          child: Row(
                            children: [
                              AppIconButton(
                                backgroundColor: Colors.orange.shade50,
                                icon: HugeIcons.strokeRoundedCalendar03,iconColor: Colors.black,
                              ),
                              SizedBox(width: 12.w),
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  spacing: 4.h,
                                  children: [
                                    AppText(
                                      text:
                                          '${request.fromDate} - ${request.toDate}',
                                      fontSize: 14.sp,
                                      fontWeight: FontWeight.bold,color: Colors.black,
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      spacing: 8.w,
                                      children: [
                                        AppText(
                                          text:
                                              "Total Days: ${request.totalDays}",
                                          fontSize: 13.sp,color: Colors.black,
                                        ),
                                        // badge(
                                        //   request.statusText ?? '',
                                        //   getStatusColor(request.statusText!),
                                        // ),
                                      ],
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
                  Obx(() {
                    if (leaveData.isLoadMore.value) {
                      // Still loading next page
                      return Padding(
                        padding: EdgeInsets.symmetric(vertical: 16.h),
                        child: AppLoader.circular(
                          color: AppColors.lightPrimary,
                        ),
                      );
                    } else {
                      return const SizedBox();
                    }
                  }),
                ],
              ),
            ),
    );
  }
}
