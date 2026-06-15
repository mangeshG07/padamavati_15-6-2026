import 'package:padmavatiupdated/core/exporters/app_export.dart';

class PaymentDetailsScreen extends StatelessWidget {
  const PaymentDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    PaymentDetailsModel payment = Get.arguments;

    final paid = double.tryParse(payment.paidAmount.toString()) ?? 0;

    final pending = double.tryParse(payment.dueAmount.toString()) ?? 0;

    final total = paid + pending;

    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      body: SingleChildScrollView(
        child: Column(
          children: [
            GradientAppbar(title: 'Payment Details', showBack: true),
            Container(
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
                  ),

                  SizedBox(height: 10.h),

                  badge(
                    payment.messTypeName ?? '',
                    payment.messTypeName == 'Veg' ? Colors.green : Colors.red,
                  ),

                  SizedBox(height: 20.h),

                  const Divider(),

                  _detailRow("Start Date", payment.startDate ?? ''),

                  _detailRow("End Date", payment.endDate ?? ''),

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
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: AppButton(
            text: 'Download Receipt',
            onTap: () => Get.toNamed(Routes.paymentReceipt),
            borderColor: AppColors.lightSecondary,
            textColor: AppColors.lightSecondary,
            type: AppButtonType.outline,
          ),
        ),
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
}
