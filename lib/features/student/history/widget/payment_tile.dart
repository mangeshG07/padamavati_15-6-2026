import 'package:padmavatiupdated/core/exporters/app_export.dart';

class PaymentTile extends StatelessWidget {
  final PaymentDetailsModel payment;
  const PaymentTile({super.key, required this.payment});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return GestureDetector(
      onTap: () => Get.toNamed(Routes.paymentDetails, arguments: payment),
      child: Container(
        decoration: _buildCardDecoration(),
        padding: const EdgeInsets.all(16),
        child: Column(
          spacing: 12.h,
          children: [
            _buildHeader(),
            _dates(theme),
            const DottedLine(
              dashColor: Colors.grey,
              direction: Axis.horizontal,
            ),
            _buildAmountRow(
              'Mess Type',
              payment.messTime?.toString() ?? '',
              Colors.orange,
              Icons.watch_later_outlined,
            ),
            _buildAmountRow(
              'Paid',
              payment.paidAmount ?? '',
              Colors.green,
              Icons.check_circle,
            ),
            _buildAmountRow(
              'Pending',
              payment.dueAmount?.toString() ?? '',
              Colors.orange,
              Icons.pending,
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildHeader() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        AppText(
          text: '${payment.startMonth} - ${payment.endMonth}',
          fontSize: 16.sp,
          fontWeight: FontWeight.bold,
          color: Colors.black,
        ),
        badge(
          payment.messTypeName ?? '',
          payment.messTypeName == 'Veg' ? Colors.green : Colors.red,
        ),
      ],
    );
  }

  Widget _dates(ThemeData theme) {
    return Row(
      spacing: 12.w,
      children: [
        _buildDate(theme, 'Start Date', payment.startDate.toFormattedDate()),
        _buildDate(theme, 'End Date', payment.endDate.toFormattedDate()),
      ],
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
          border: buildOutlineInputBorder(),
          enabledBorder: buildOutlineInputBorder().copyWith(
            borderRadius: BorderRadius.circular(40.r),
          ),
          label: AppText(text: title, fontSize: 14.sp, color: Colors.black),
        ),
        child: AppText(text: date, fontSize: 16.sp, color: Colors.black),
      ),
    );
  }

  Widget _buildAmountRow(
    String title,
    String? value,
    Color color,
    IconData icon,
  ) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            Icon(icon, size: 16.sp, color: color),
            SizedBox(width: 6.w),
            AppText(text: title, fontSize: 14.sp, color: AppColors.grey600),
          ],
        ),
        AppText(
          // text: payment.paidAmount ?? '',
          text: value ?? '',
          fontSize: 14.sp,
          fontWeight: FontWeight.bold,
          color: color,
        ),
      ],
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
