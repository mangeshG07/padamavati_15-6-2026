import 'package:padmavatiupdated/core/exporters/app_export.dart';

class PeopleList extends StatefulWidget {
  const PeopleList({super.key});

  @override
  State<PeopleList> createState() => _PeopleListState();
}

class _PeopleListState extends State<PeopleList> {
  final controller = Get.find<PeopleController>();

  @override
  void initState() {
    super.initState();
    controller.getBranchUserList(isRefresh: true);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(80.h),
        child: GradientAppbar(title: 'Branch Users', showBack: false),
      ),
      body: RefreshIndicator(
        onRefresh: () => controller.getBranchUserList(isRefresh: true),
        child: Obx(
          () => controller.isLoading.isTrue
              ? AppLoader(strokeWidth: 2.5)
              : controller.items.isEmpty
              ? Center(
                  child: AppText(text: 'No Data Found', fontSize: 16.sp),
                )
              : NotificationListener<ScrollNotification>(
                  onNotification: (scroll) {
                    if (scroll is ScrollEndNotification &&
                        scroll.metrics.pixels >=
                            scroll.metrics.maxScrollExtent - 50 &&
                        controller.hasMore &&
                        !controller.isLoadMore.value &&
                        !controller.isLoading.value) {
                      controller.getBranchUserList(showLoading: false);
                    }
                    return false;
                  },
                  child: Column(
                    children: [
                      Expanded(
                        child: ListView.separated(
                          padding: EdgeInsets.symmetric(
                            horizontal: 12.w,
                          ).copyWith(bottom: 16.h),
                          separatorBuilder: (_, __) => SizedBox(height: 12.h),
                          itemCount: controller.items.length,
                          itemBuilder: (BuildContext context, int index) {
                            final people = controller.items[index];
                            return GestureDetector(
                              /// 🔥 REFRESH AFTER RETURN
                              onTap: () async {
                                await Get.toNamed(
                                  Routes.scannedUsersDetails,
                                  arguments: {'id': people.id.toString()},
                                );

                                controller.getBranchUserList(isRefresh: true);
                              },

                              // onTap: () => Get.toNamed(
                              //   Routes.scannedUsersDetails,
                              //   arguments: {'id': people.id.toString()},
                              // ),
                              child: Container(
                                decoration: buildCardDecoration(),
                                padding: EdgeInsets.all(16.w),
                                child: Row(
                                  children: [
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
                                        width: 50.w,
                                      ),
                                    ),
                                    SizedBox(width: 12.w),
                                    Expanded(
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          AppText(
                                            text: people.name ?? '',
                                            fontSize: 16.sp,
                                            fontWeight: FontWeight.bold,
                                          ),
                                          SizedBox(height: 6.h),
                                          AppText(
                                            text: people.code ?? '-',
                                            fontSize: 13.sp,
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            );
                          },
                        ),
                      ),
                      Obx(() {
                        if (controller.isLoadMore.value) {
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
        ),
      ),
    );
  }
}
