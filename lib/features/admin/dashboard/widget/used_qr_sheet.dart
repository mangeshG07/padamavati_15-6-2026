import '../../../../core/exporters/app_export.dart';

class UsedQrSheet extends StatefulWidget {
  final String id;
  const UsedQrSheet({super.key, required this.id});

  @override
  State<UsedQrSheet> createState() => _UsedQrSheetState();
}

class _UsedQrSheetState extends State<UsedQrSheet> {
  final controller = Get.find<DashboardController>();

  @override
  void initState() {
    super.initState();
    controller.usedQRList(isRefresh: true, studentId: widget.id);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: Get.height * 0.75,
      padding: const EdgeInsets.all(16),
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
      ),
      child: Column(
        children: [
          /// 🔹 Handle
          Container(
            width: 50,
            height: 5,
            margin: const EdgeInsets.only(bottom: 10),
            decoration: BoxDecoration(
              color: Colors.grey[400],
              borderRadius: BorderRadius.circular(10),
            ),
          ),

          const Text(
            "QR Scan History",
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),

          const SizedBox(height: 10),

          Expanded(
            child: Obx(() {
              final usedQR = controller.usedQRPagination;
              if (usedQR.isLoading.isTrue) {
                return AppLoader(strokeWidth: 2.5);
              }
              if (usedQR.items.isEmpty) {
                return Center(
                  child: AppText(text: 'No Data Found', fontSize: 16.sp),
                );
              }
              final groupedData = controller.groupByDate(
                controller.usedQRPagination.items,
              );

              final dates = groupedData.keys.toList();

              return NotificationListener<ScrollNotification>(
                onNotification: (scroll) {
                  if (scroll is ScrollEndNotification &&
                      scroll.metrics.pixels >=
                          scroll.metrics.maxScrollExtent - 50 &&
                      usedQR.hasMore &&
                      !usedQR.isLoadMore.value &&
                      !usedQR.isLoading.value) {
                    controller.usedQRList(
                      showLoading: false,
                      studentId: widget.id,
                    );
                  }
                  return false;
                },
                child: Column(
                  children: [
                    Expanded(
                      child: ListView.separated(
                        separatorBuilder: (_, __) => SizedBox(height: 4.h),
                        itemCount: dates.length,
                        itemBuilder: (BuildContext context, int index) {
                          final date = dates[index];
                          final items = groupedData[date]!;
                          return Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              // ✅ DATE HEADER
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                  vertical: 8,
                                ),
                                child: Text(
                                  date,
                                  style: const TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),

                              // ✅ LIST UNDER DATE
                              ...items.map((item) {
                                return Card(
                                  color: Colors.white,
                                  margin: const EdgeInsets.only(bottom: 10),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(12),
                                  ),
                                  child: ListTile(
                                    leading: const Icon(Icons.qr_code),
                                    title: Text(
                                      "${item.mess} (${item.messType})",
                                    ),
                                    subtitle: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text("Scanned At: ${item.scannedAt}"),
                                        Text("By: ${item.scannedByName}"),
                                      ],
                                    ),
                                  ),
                                );
                              }),
                            ],
                          );

                          // return Container(
                          //   margin: const EdgeInsets.symmetric(vertical: 6),
                          //   padding: const EdgeInsets.all(12),
                          //   decoration: BoxDecoration(
                          //     color: Colors.grey[100],
                          //     borderRadius: BorderRadius.circular(12),
                          //   ),
                          //   child: Column(
                          //     crossAxisAlignment: CrossAxisAlignment.start,
                          //     children: [
                          //       /// Meal + Type
                          //       Row(
                          //         mainAxisAlignment:
                          //             MainAxisAlignment.spaceBetween,
                          //         children: [
                          //           Text(
                          //             item.mess,
                          //             style: const TextStyle(
                          //               fontWeight: FontWeight.bold,
                          //             ),
                          //           ),
                          //           Text(
                          //             item.messType,
                          //             style: TextStyle(
                          //               color: item.messType == "Veg"
                          //                   ? Colors.green
                          //                   : Colors.red,
                          //             ),
                          //           ),
                          //         ],
                          //       ),
                          //
                          //       const SizedBox(height: 5),
                          //
                          //       Text("Valid: ${item.messValidDate}"),
                          //       Text("Scanned: ${item.scannedAt}"),
                          //       Text(
                          //         "By: ${item.scannedByName} (${item.scannedBy})",
                          //       ),
                          //     ],
                          //   ),
                          // );
                        },
                      ),
                    ),
                    Obx(() {
                      if (usedQR.isLoadMore.value) {
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
              );
            }),
          ),
        ],
      ),
    );
  }
}
