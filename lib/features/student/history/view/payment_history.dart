import 'package:padmavatiupdated/core/exporters/app_export.dart';

class PaymentHistory extends StatefulWidget {
  const PaymentHistory({super.key});

  @override
  State<PaymentHistory> createState() => _PaymentHistoryState();
}

class _PaymentHistoryState extends State<PaymentHistory> {
  // final controller = Get.find<HistoryController>();
  final controller = Get.put(HistoryController(getIt(), getIt()));

  @override
  void initState() {
    super.initState();
    controller.fetchPaymentHistory();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(80.h),
        child: GradientAppbar(title: 'Payment History', showBack: false),
      ),
      body: Obx(
        () => controller.isHistoryLoading.isTrue
            ? AppLoader(size: 2.5, color: AppColors.lightPrimary)
            : controller.paymentHistoryList.isEmpty
            ? Center(
                child: AppText(text: 'No Data Found.', fontSize: 16.sp),
              )
            : ListView.separated(
                // shrinkWrap: true,
                padding: const EdgeInsets.all(12),
                separatorBuilder: (_, __) => SizedBox(height: 12.h),
                // physics: const NeverScrollableScrollPhysics(),
                itemCount: controller.paymentHistoryList.length,
                itemBuilder: (_, i) {
                  final payment = controller.paymentHistoryList[i];
                  return PaymentTile(payment: payment);
                },
              ),
      ),
    );
  }
}
