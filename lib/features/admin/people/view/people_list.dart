import 'package:padmavatiupdated/core/exporters/app_export.dart';

class PeopleList extends StatefulWidget {
  const PeopleList({super.key});

  @override
  State<PeopleList> createState() => _PeopleListState();
}

class _PeopleListState extends State<PeopleList> {
  final controller = Get.find<PeopleController>();

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
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(16),
              child: _buildSearchField(),
            ),
            Expanded(
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
                                separatorBuilder: (_, __) =>
                                    SizedBox(height: 12.h),
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

                                      controller.getBranchUserList(
                                        isRefresh: true,
                                      );
                                    },
                                    child: Container(
                                      decoration: buildCardDecoration(),
                                      padding: EdgeInsets.all(16.w),
                                      child: Row(
                                        children: [
                                          ClipRRect(
                                            borderRadius: BorderRadius.circular(
                                              12.r,
                                            ),
                                            child: CustomImage(
                                              image: people.profileImage ?? '',
                                              placeholder: Image.asset(
                                                AppAssets.defaultImage,
                                                width: 50.w,
                                                height: 50.h,
                                              ),
                                              errorWidget: Image.asset(
                                                AppAssets.defaultImage,
                                                width: 50.w,
                                                height: 50.h,
                                              ),
                                              width: 50.w,
                                              height: 50.h,
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
                                                Row(
                                                  spacing: 12.w,
                                                  children: [
                                                    AppText(
                                                      text: people.code ?? '-',
                                                      fontSize: 13.sp,
                                                    ),

                                                    /// 🔥 DUE AMOUNT
                                                    Builder(
                                                      builder: (_) {
                                                        final amount =
                                                            double.tryParse(
                                                              people.dueAmount
                                                                      ?.toString() ??
                                                                  '',
                                                            ) ??
                                                            0.0;

                                                        final isDue =
                                                            amount > 0;

                                                        if (!isDue) {
                                                          return const SizedBox.shrink();
                                                        }

                                                        return Container(
                                                          padding:
                                                              EdgeInsets.symmetric(
                                                                horizontal:
                                                                    10.w,
                                                                vertical: 4.h,
                                                              ),
                                                          decoration: BoxDecoration(
                                                            color: isDue
                                                                ? Colors.red
                                                                      .withValues(
                                                                        alpha:
                                                                            0.1,
                                                                      )
                                                                : Colors.green
                                                                      .withValues(
                                                                        alpha:
                                                                            0.1,
                                                                      ),
                                                            borderRadius:
                                                                BorderRadius.circular(
                                                                  20.r,
                                                                ),
                                                          ),
                                                          child: AppText(
                                                            text:
                                                                'Pending ${controller.formatAmount(people.dueAmount?.toString())}',
                                                            fontSize: 12.sp,
                                                            fontWeight:
                                                                FontWeight.w600,
                                                            color: isDue
                                                                ? Colors.red
                                                                : Colors.green,
                                                          ),
                                                        );
                                                      },
                                                    ),
                                                  ],
                                                ),
                                                AppText(
                                                  text:
                                                      people.statusLabel ?? '',
                                                  fontSize: 14.sp,
                                                  color: people.status == '0'
                                                      ? Colors.green
                                                      : Colors.red,
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
          ],
        ),
      ),
    );
  }

  Widget _buildSearchField() {
    return TextFormField(
      controller: controller.searchKeyword,
      decoration: InputDecoration(
        filled: true,
        fillColor: Colors.white,
        focusedBorder: buildOutlineInputBorder(),
        enabledBorder: buildOutlineInputBorder(),
        contentPadding: EdgeInsets.all(15),
        suffixIcon: Obx(
          () => controller.searchText.value.isNotEmpty
              ? GestureDetector(
                  onTap: () {
                    controller.searchKeyword.clear();
                    controller.searchText.value = '';
                    controller.getBranchUserList(isRefresh: true);
                  },
                  child: Container(
                    margin: EdgeInsets.all(8.w),
                    decoration: BoxDecoration(
                      color: Colors.grey.shade200,
                      shape: BoxShape.circle,
                    ),
                    child: Icon(
                      Icons.close,
                      size: 18,
                      color: Colors.grey.shade600,
                    ),
                  ),
                )
              : Icon(Icons.search, color: Colors.grey),
        ),
        prefixIconConstraints: BoxConstraints(maxWidth: Get.width * 0.1),
        hintText: 'Search by Name, Number, etc.',
        hintStyle: TextStyle(fontSize: 14.sp, color: Colors.grey.shade500),
      ),
      onChanged: _onSearchChanged,
    );
  }

  void _onSearchChanged(String text) {
    controller.updateSearchText(text);
    if (text.trim().isEmpty) {
      controller.searchKeyword.clear();
      return;
    }

    controller.debouncer.run(() {
      controller.getBranchUserList(isRefresh: true);
    });
  }
}
