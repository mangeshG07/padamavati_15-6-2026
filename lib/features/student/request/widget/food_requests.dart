import '../../../../core/exporters/app_export.dart';

class FoodRequests extends StatelessWidget {
  const FoodRequests({
    super.key,
    required this.foodData,
    required this.controller,
  });

  final PaginationState<FoodRequestModel> foodData;
  final RequestController controller;

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => foodData.isLoading.isTrue
          ? AppLoader(strokeWidth: 2.5)
          : foodData.items.isEmpty
          ? Center(
              child: AppText(text: 'No Data Found', fontSize: 16.sp),
            )
          : NotificationListener<ScrollNotification>(
              onNotification: (scroll) {
                if (scroll is ScrollEndNotification &&
                    scroll.metrics.pixels >=
                        scroll.metrics.maxScrollExtent - 50 &&
                    foodData.hasMore &&
                    !foodData.isLoadMore.value &&
                    !foodData.isLoading.value) {
                  controller.getFoodRequestList(showLoading: false);
                }
                return false;
              },
              child: Column(
                children: [
                  Expanded(
                    child: ListView.separated(
                      padding: EdgeInsets.symmetric(horizontal: 12.w),
                      separatorBuilder: (_, __) => SizedBox(height: 12.h),
                      itemCount: foodData.items.length,
                      itemBuilder: (BuildContext context, int index) {
                        final request = foodData.items[index];
                        return Container(
                          decoration: buildCardDecoration(),
                          padding: EdgeInsets.all(16.w),
                          child: Row(
                            children: [
                              AppIconButton(
                                backgroundColor: Colors.orange.shade50,
                                icon: HugeIcons.strokeRoundedPaella,
                                iconColor: Colors.black,
                              ),
                              SizedBox(width: 12.w),
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    AppText(
                                      text: request.foodType ?? '',
                                      fontSize: 16.sp,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black,
                                    ),
                                    SizedBox(height: 6.h),
                                    AppText(
                                      text:
                                          "🍽️ For Date: ${request.forDate ?? '-'}",
                                      fontSize: 13.sp,
                                      color: Colors.black,
                                    ),
                                    AppText(
                                      text:
                                          "📝 Requested On: ${request.requestDate ?? '-'}",
                                      fontSize: 13.sp,
                                      color: Colors.black,
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
                    if (foodData.isLoadMore.value) {
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
