import 'package:padmavatiupdated/core/exporters/app_export.dart';

class PaymentReceipt extends StatelessWidget {
  const PaymentReceipt({super.key});

  @override
  Widget build(BuildContext context) {
    PaymentModel payment = Get.arguments;

    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      body: SingleChildScrollView(
        child: Column(
          children: [
            GradientAppbar(title: 'Receipt', showBack: true),
            Container(
              width: double.infinity,
              margin: EdgeInsets.all(16.r),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(24.r),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withValues(alpha: .08),
                    blurRadius: 20,
                    offset: const Offset(0, 8),
                  ),
                ],
              ),
              child: Column(
                children: [
                  // Header
                  Container(
                    width: double.infinity,
                    padding: EdgeInsets.symmetric(vertical: 12.h),
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors: [Colors.white, AppColors.grey300],
                      ),
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(24.r),
                        topRight: Radius.circular(24.r),
                      ),
                    ),
                    child: Column(
                      children: [
                        Container(
                          height: 50.h,
                          width: 50.h,
                          decoration: const BoxDecoration(
                            color: Colors.white,
                            shape: BoxShape.circle,
                          ),
                          child: Icon(
                            Icons.check_circle,
                            color: Colors.green,
                            size: 35.sp,
                          ),
                        ),
                        SizedBox(height: 12.h),
                        AppText(
                          text: "Payment Successful",
                          color: Colors.black,
                          fontSize: 20.sp,
                          fontWeight: FontWeight.bold,
                        ),
                      ],
                    ),
                  ),

                  Padding(
                    padding: EdgeInsets.all(20.r),
                    child: Column(
                      children: [
                        CustomImage(image: AppAssets.splashLogo, height: 50.h),

                        SizedBox(height: 10.h),

                        AppText(
                          text: "Padmavati Mess",
                          fontSize: 18.sp,
                          fontWeight: FontWeight.bold,
                        ),

                        SizedBox(height: 8.h),

                        Container(
                          padding: EdgeInsets.symmetric(
                            horizontal: 12.w,
                            vertical: 6.h,
                          ),
                          decoration: BoxDecoration(
                            color: AppColors.lightPrimary.withValues(alpha: .1),
                            borderRadius: BorderRadius.circular(20.r),
                          ),
                          child: AppText(
                            text: "Receipt #${payment.code ?? ''}",
                            color: AppColors.lightPrimary,
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w600,
                          ),
                        ),

                        SizedBox(height: 20.h),

                        const DottedLine(),

                        SizedBox(height: 10.h),

                        _detailRow("Date", payment.date ?? ''),
                        _detailRow(
                          "Payment Method",
                          payment.paymentMethod ?? '',
                        ),

                        SizedBox(height: 10.h),

                        Container(
                          padding: EdgeInsets.all(12.r),
                          decoration: BoxDecoration(
                            color: Colors.green.shade50,
                            borderRadius: BorderRadius.circular(16.r),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              AppText(
                                text: "Paid Amount",
                                fontWeight: FontWeight.bold,
                                fontSize: 16.sp,
                              ),
                              AppText(
                                text: "₹ ${payment.amount}",
                                color: Colors.green,
                                fontWeight: FontWeight.bold,
                                fontSize: 18.sp,
                              ),
                            ],
                          ),
                        ),

                        SizedBox(height: 16.h),

                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            AppText(
                              text: "Payment Status",
                              fontSize: 14.sp,
                              fontWeight: FontWeight.w600,
                            ),
                            Container(
                              padding: EdgeInsets.symmetric(
                                horizontal: 12.w,
                                vertical: 6.h,
                              ),
                              decoration: BoxDecoration(
                                color: Colors.green.shade100,
                                borderRadius: BorderRadius.circular(20.r),
                              ),
                              child: Row(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Icon(
                                    Icons.check_circle,
                                    size: 16.sp,
                                    color: Colors.green,
                                  ),
                                  SizedBox(width: 4.w),
                                  AppText(
                                    text: payment.paymentStatus ?? '-',
                                    fontSize: 14.sp,
                                    color: Colors.green,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),

                        SizedBox(height: 24.h),

                        const DottedLine(),

                        SizedBox(height: 20.h),

                        AppText(
                          text: "Thank You!",
                          fontSize: 18.sp,
                          fontWeight: FontWeight.bold,
                        ),

                        SizedBox(height: 4.h),

                        AppText(
                          text: "This is a system generated receipt.",
                          color: Colors.grey,
                          fontSize: 14.sp,
                          textAlign: TextAlign.center,
                        ),

                        SizedBox(height: 24.h),

                        ElevatedButton.icon(
                          onPressed: () =>
                              downloadFile(payment.receiptUrl ?? ''),
                          icon: const Icon(Icons.download),
                          label: const Text("Download"),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
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
            fontWeight: isBold ? FontWeight.bold : FontWeight.w300,
            color: valueColor,
          ),
        ],
      ),
    );
  }
}
