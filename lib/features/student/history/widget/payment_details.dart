import 'package:padmavatiupdated/core/exporters/app_export.dart';

class PaymentDetailsScreen extends StatefulWidget {
  const PaymentDetailsScreen({super.key});

  @override
  State<PaymentDetailsScreen> createState() => _PaymentDetailsScreenState();
}

class _PaymentDetailsScreenState extends State<PaymentDetailsScreen> {
  final controller = Get.find<HistoryController>();

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      checkInternetAndShowPopup();
    });
    PaymentDetailsModel payment = Get.arguments;

    controller.fetchPaymentReceipt(payment.transactionId.toString());
  }

  @override
  Widget build(BuildContext context) {
    PaymentDetailsModel payment = Get.arguments;

    final paid = double.tryParse(payment.paidAmount.toString()) ?? 0;

    final pending = double.tryParse(payment.dueAmount.toString()) ?? 0;

    final total = paid + pending;

    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(100.h),
        child: GradientAppbar(title: 'Payment Details', showBack: true),
      ),
      body: SafeArea(
        child: Obx(
          () => controller.isReceiptLoading.isTrue
              ? AppLoader(color: AppColors.lightPrimary, strokeWidth: 2.5)
              : ListView(
                  children: [
                    _summaryCard(payment, total),
                    if (controller.paymentReceiptList.isNotEmpty) ...[
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 16),
                        child: Align(
                          alignment: Alignment.centerLeft,
                          child: AppText(
                            text: "Payment History",
                            fontSize: 16.sp,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),

                      SizedBox(height: 10.h),
                      ListView.separated(
                        shrinkWrap: true,
                        physics: NeverScrollableScrollPhysics(),
                        itemCount: controller.paymentReceiptList.length,
                        padding: EdgeInsets.only(bottom: 24.h),
                        separatorBuilder: (_, __) => SizedBox(height: 10.h),
                        itemBuilder: (context, index) {
                          final item = controller.paymentReceiptList[index];

                          return _paymentItemCard(item);
                        },
                      ),
                    ],
                  ],
                ),
        ),
      ),
    );
  }

  Widget _summaryCard(PaymentDetailsModel payment, double total) {
    return Container(
      padding: EdgeInsets.all(20.r),
      margin: EdgeInsets.all(16.r),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20.r),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(alpha: .05),
            blurRadius: 12,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: Column(
        children: [
          Icon(
            Icons.receipt_long,
            color: AppColors.lightSecondary,
            size: 60.sp,
          ),

          SizedBox(height: 12.h),

          AppText(
            text: '${payment.startMonth}- ${payment.endMonth}',
            fontSize: 20.sp,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),

          SizedBox(height: 10.h),

          badge(
            payment.messTypeName ?? '',
            payment.messTypeName == 'Veg' ? Colors.green : Colors.red,
          ),

          SizedBox(height: 20.h),

          const Divider(),

          _detailRow(
            "Start Date",
            payment.startDate.toFormattedDate(),
            valueColor: Colors.black,
          ),

          _detailRow(
            "End Date",
            payment.endDate.toFormattedDate(),
            valueColor: Colors.black,
          ),

          _detailRow(
            "Paid Amount",
            payment.paidAmount?.toString() ?? '0',
            valueColor: Colors.green,
          ),

          _detailRow(
            "Pending Amount",
            "${payment.dueAmount ?? '0'}",
            valueColor: Colors.orange,
          ),

          const Divider(),

          _detailRow(
            "Total Amount",
            "₹ ${total.toStringAsFixed(0)}",
            isBold: true,
            valueColor: Colors.black,
          ),
        ],
      ),
    );
  }

  Widget _detailRow(
    String title,
    String value, {
    Color? valueColor,
    bool isBold = false,
  }) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 12.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          AppText(text: title, fontSize: 15.sp, color: AppColors.grey600),
          AppText(
            text: value,
            fontSize: 15.sp,
            fontWeight: isBold ? FontWeight.bold : FontWeight.w600,
            color: valueColor,
          ),
        ],
      ),
    );
  }

  Widget _paymentItemCard(PaymentModel item) {
    return GestureDetector(
      onTap: () {
        Get.toNamed(Routes.paymentReceipt, arguments: item);
      },
      child: Container(
        padding: EdgeInsets.all(14.r),
        margin: EdgeInsets.symmetric(horizontal: 14.r),
        decoration: BoxDecoration(
          color: Colors.grey.shade50,
          borderRadius: BorderRadius.circular(14.r),
          border: Border.all(color: Colors.grey.shade200),
        ),
        child: Row(
          children: [
            Container(
              padding: EdgeInsets.all(10.r),
              decoration: BoxDecoration(
                color: AppColors.lightSecondary.withValues(alpha: 0.1),
                shape: BoxShape.circle,
              ),
              child: Icon(Icons.payment, color: AppColors.lightSecondary),
            ),

            SizedBox(width: 12.w),

            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  AppText(
                    text: item.code ?? '',
                    fontWeight: FontWeight.bold,
                    fontSize: 14.sp,
                  ),
                  SizedBox(height: 4.h),
                  AppText(
                    text: item.date ?? '',
                    fontSize: 12.sp,
                    color: AppColors.grey600,
                  ),
                  SizedBox(height: 4.h),
                  AppText(
                    text: item.note ?? '',
                    fontSize: 12.sp,
                    color: AppColors.grey600,
                  ),
                ],
              ),
            ),

            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                AppText(
                  fontSize: 14.sp,
                  text: "₹ ${item.amount?.toStringAsFixed(0)}",
                  fontWeight: FontWeight.bold,
                  color: Colors.green,
                ),
                SizedBox(height: 6.h),
                AppText(
                  text: "View",
                  fontSize: 12.sp,
                  color: AppColors.lightSecondary,
                  fontWeight: FontWeight.w600,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
