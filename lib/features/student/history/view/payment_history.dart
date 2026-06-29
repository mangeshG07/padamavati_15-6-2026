import 'package:padmavatiupdated/core/exporters/app_export.dart';

class PaymentHistory extends StatefulWidget {
  const PaymentHistory({super.key});

  @override
  State<PaymentHistory> createState() => _PaymentHistoryState();
}

class _PaymentHistoryState extends State<PaymentHistory> {
  // final controller = Get.put<HistoryController>();
  final controller = Get.put(HistoryController(getIt(), getIt()));
  @override
  void initState() {
    controller.fetchPaymentHistory();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Obx(
        () => controller.isHistoryLoading.isTrue
            ? AppLoader(size: 2.5, color: AppColors.lightPrimary)
            : controller.paymentHistoryList.isEmpty
            ? Center(
                child: AppText(text: 'No Data Found.', fontSize: 16.sp),
              )
            : SingleChildScrollView(
                child: Column(
                  spacing: 8.h,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    GradientAppbar(title: 'Payment History', showBack: false),
                    Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: ListView.separated(
                        shrinkWrap: true,
                        padding: EdgeInsets.zero,
                        separatorBuilder: (_, __) => SizedBox(height: 12.h),
                        physics: const NeverScrollableScrollPhysics(),
                        itemCount: controller.paymentHistoryList.length,
                        itemBuilder: (BuildContext context, int index) {
                          final payment = controller.paymentHistoryList[index];
                          return PaymentTile(payment: payment);
                        },
                      ),
                    ),
                  ],
                ),
              ),
      ),
    );
  }
}
