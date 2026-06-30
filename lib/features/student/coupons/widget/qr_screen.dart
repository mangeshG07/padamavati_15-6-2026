import 'package:padmavatiupdated/core/exporters/app_export.dart';

class QRScreen extends StatelessWidget {
  const QRScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    final qrData = Get.arguments['qrData'] as QRModel;

    return Scaffold(
      backgroundColor: const Color(0xffF8F9FD),
      body: Column(
        children: [
          _buildAppBar(theme),

          Expanded(
            child: SingleChildScrollView(
              padding: EdgeInsets.all(16.w),
              child: Column(
                children: [
                  Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(24.r),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withValues(alpha: .05),
                          blurRadius: 20,
                          offset: const Offset(0, 8),
                        ),
                      ],
                    ),
                    child: Column(
                      children: [
                        /// Coupon Header
                        _buildHeader(
                          qrData.messType,
                          theme,
                          qrData.expiresAt,
                          qrData.status!,
                        ),
                        Divider(),
                        Padding(
                          padding: EdgeInsets.all(20.w),
                          child: Column(
                            children: [
                              AppText(
                                text: "Scan QR Code",
                                fontSize: 18.sp,
                                style: theme.textTheme.titleMedium,
                              ),

                              SizedBox(height: 6.h),

                              AppText(
                                text:
                                    "Present this code at the billing counter",
                                fontSize: 13.sp,
                                style: theme.textTheme.bodySmall,
                              ),

                              SizedBox(height: 24.h),

                              /// QR Container
                              _buildQRCode(qrData),

                              SizedBox(height: 20.h),

                              /// Instruction Card
                              _buildInfoCard(theme),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildAppBar(ThemeData theme) {
    return GradientAppbar(title: 'Coupon QR', showBack: true);
  }

  Widget _buildHeader(title, ThemeData theme, subTitle, status) {
    final isActive = status == 'Active';
    return Container(
      padding: EdgeInsets.all(20.w),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(24.r),
          topRight: Radius.circular(24.r),
        ),
      ),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                AppText(
                  text: title,
                  fontSize: 18.sp,
                  style: theme.textTheme.titleMedium,
                ),
                SizedBox(height: 4.h),
                AppText(
                  text: subTitle,
                  fontSize: 13.sp,
                  style: theme.textTheme.bodySmall,
                ),
              ],
            ),
          ),
          badge(status, isActive ? Colors.green : Colors.red),
        ],
      ),
    );
  }

  Widget _buildQRCode(QRModel coupon) {
    final qrData = jsonEncode({
      "qr_code": coupon.uuid,
      "userId": coupon.appId.toString(),
    });
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20.r),
        border: Border.all(color: AppColors.grey300),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(alpha: .05),
            blurRadius: 12,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(16.r),
        child: Stack(
          children: [
            QrImageView(data: qrData, size: 250),

            /// OVERLAY (only if used/expired)
            if (coupon.status != 'Active')
              Container(
                width: 250,
                height: 250,
                color: Colors.red.withValues(alpha: 0.6),
                alignment: Alignment.center,
                child: Transform.rotate(
                  angle: -0.4,
                  child: Text(
                    coupon.status ?? 'Used',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 28.sp,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 2,
                    ),
                  ),
                ),
              ),
          ],
        ),
      ),
    );
  }

  Widget _buildInfoCard(ThemeData theme) {
    return Container(
      padding: EdgeInsets.all(14.w),
      decoration: BoxDecoration(
        color: Colors.amber.shade50,
        borderRadius: BorderRadius.circular(16.r),
        border: Border.all(color: Colors.amber.shade200),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Icon(Icons.info_outline, color: Colors.orange),
          SizedBox(width: 10.w),

          Expanded(
            child: AppText(
              text:
                  "Show this QR code at the counter. Once scanned, the coupon will be marked as used and cannot be redeemed again.",
              fontSize: 13.sp,
              maxLines: 4,
              style: theme.textTheme.bodyMedium,
            ),
          ),
        ],
      ),
    );
  }
}
