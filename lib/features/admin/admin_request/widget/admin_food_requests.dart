import '../../../../core/exporters/app_export.dart';

class AdminFoodRequests extends StatelessWidget {
  const AdminFoodRequests({
    super.key,
    required this.foodData,
    required this.controller,
  });

  final PaginationState<FoodRequestModel> foodData;
  final AdminReqCtrl controller;

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
                        return FoodItemCard(request: request);
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

class FoodItemCard extends StatelessWidget {
  const FoodItemCard({super.key, required this.request});

  final FoodRequestModel request;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: buildCardDecoration(),
      padding: EdgeInsets.all(16.w),
      child: Row(
        children: [
          AppIconButton(
            backgroundColor: Colors.orange.shade50,
            icon: HugeIcons.strokeRoundedPaella,
          ),
          SizedBox(width: 12.w),

          /// Details
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                AppText(
                  text: request.requestedBy ?? '',
                  fontSize: 16.sp,
                  fontWeight: FontWeight.bold,
                ),
                SizedBox(height: 6.h),
                AppText(
                  text: "🍽️ For Date: ${request.foodDate ?? '-'}",
                  fontSize: 13.sp,
                ),
                AppText(
                  text: "📝 Requested On: ${request.requestedOn ?? '-'}",
                  fontSize: 13.sp,
                ),
              ],
            ),
          ),

          /// Food Name
          AppText(text: request.foodName ?? '', fontSize: 13.sp),
        ],
      ),
    );
  }
}
