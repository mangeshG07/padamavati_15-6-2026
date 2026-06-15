import 'package:padmavatiupdated/core/exporters/app_export.dart';

class PaymentTile extends StatelessWidget {
  final PaymentDetailsModel? payment;
  const PaymentTile({super.key, this.payment});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return GestureDetector(
      onTap: () => Get.toNamed(Routes.paymentDetails, arguments: payment),
      child: Container(
        decoration: _buildCardDecoration(),
        child: Padding(
          padding: EdgeInsets.all(16.r),
          child: Column(
            spacing: 12.h,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  AppText(
                    text: '${payment!.startMonth}- ${payment!.endMonth}',
                    fontSize: 16.sp,
                    fontWeight: FontWeight.bold,
                  ),
                  badge(
                    payment?.messTypeName ?? '',
                    payment?.messTypeName == 'Veg' ? Colors.green : Colors.red,
                  ),
                ],
              ),
              Row(
                spacing: 12.w,
                children: [
                  _buildDate(theme, 'Start Date', payment?.startDate ?? ''),
                  _buildDate(theme, 'End Date', payment?.endDate ?? ''),
                ],
              ),
              const DottedLine(
                dashColor: Colors.grey,
                direction: Axis.horizontal,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Icon(
                        Icons.check_circle,
                        size: 16.sp,
                        color: Colors.green,
                      ),
                      SizedBox(width: 6.w),
                      AppText(
                        text: 'Paid',
                        fontSize: 14.sp,
                        color: AppColors.grey600,
                      ),
                    ],
                  ),
                  AppText(
                    text: payment?.paidAmount ?? '',
                    fontSize: 14.sp,
                    fontWeight: FontWeight.bold,
                    color: Colors.green,
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Icon(Icons.pending, size: 16.sp, color: Colors.orange),
                      SizedBox(width: 6.w),
                      AppText(
                        text: 'Pending',
                        fontSize: 14.sp,
                        color: AppColors.grey600,
                      ),
                    ],
                  ),
                  AppText(
                    text: payment?.dueAmount?.toString() ?? '',
                    fontSize: 14.sp,
                    fontWeight: FontWeight.bold,
                    color: Colors.orange,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildDate(ThemeData theme, String title, String date) {
    return Expanded(
      child: InputDecorator(
        decoration: InputDecoration(
          alignLabelWithHint: true,
          contentPadding: EdgeInsets.all(8.r),
          filled: false,
          isDense: true,
          border: theme.inputDecorationTheme.enabledBorder,
          enabledBorder:
              (theme.inputDecorationTheme.enabledBorder as OutlineInputBorder)
                  .copyWith(borderRadius: BorderRadius.circular(40.r)),
          label: AppText(text: title, fontSize: 14.sp),
        ),
        child: AppText(text: date, fontSize: 16.sp),
      ),
    );
  }

  BoxDecoration _buildCardDecoration() {
    return BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(16.r),
      boxShadow: [
        BoxShadow(
          color: Colors.black.withValues(alpha: 0.05),
          blurRadius: 12.r,
          offset: const Offset(0, 4),
          spreadRadius: 0,
        ),
        BoxShadow(
          color: Colors.black.withValues(alpha: 0.02),
          blurRadius: 4.r,
          offset: const Offset(0, 2),
        ),
      ],
    );
  }
}
