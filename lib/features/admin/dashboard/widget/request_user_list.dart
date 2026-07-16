import 'package:padmavatiupdated/core/exporters/app_export.dart';

class RequestUsers extends StatefulWidget {
  const RequestUsers({super.key});

  @override
  State<RequestUsers> createState() => _RequestUsersState();
}

class _RequestUsersState extends State<RequestUsers> {
  final controller = Get.find<RequestsUserController>();

  @override
  void initState() {
    super.initState();

    WidgetsBinding.instance.addPostFrameCallback((_) {
      checkInternetAndShowPopup();
      controller.getRequestUserList(isRefresh: true);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(60.h),
        child: GradientAppbar(
          title: controller.selectedType.value == 1
              ? 'Tomorrow Leave Request'
              : 'Tomorrow Special Request',
          showBack: true,
        ),
      ),
      body: Obx(() {
        final users = controller.requestsPagination;
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
              controller.getRequestUserList(showLoading: false);
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
                    final requests = users.items[index];

                    return controller.selectedType.value == 0
                        ? _FoodItemCard(request: requests)
                        : _LeaveItemCard(request: requests);
                  },
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

class _FoodItemCard extends StatelessWidget {
  const _FoodItemCard({required this.request});

  final RequestUserModel request;

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
                  text: "🍽️ For Date: ${request.forDate ?? '-'}",
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

class _LeaveItemCard extends StatelessWidget {
  const _LeaveItemCard({required this.request});

  final RequestUserModel request;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: buildCardDecoration(),
      padding: EdgeInsets.all(16.w),
      child: Row(
        children: [
          AppIconButton(
            backgroundColor: Colors.orange.shade50,
            icon: HugeIcons.strokeRoundedCalendar03,
          ),
          SizedBox(width: 12.w),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              spacing: 4.h,
              children: [
                AppText(
                  text: request.name ?? '',
                  fontSize: 14.sp,
                  fontWeight: FontWeight.bold,
                ),
                AppText(
                  text: '${request.fromDate} - ${request.toDate}',
                  fontSize: 12.sp,
                ),
                AppText(
                  text: "Total Days: ${request.totalDays}",
                  fontSize: 12.sp,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
