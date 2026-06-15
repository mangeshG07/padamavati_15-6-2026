import 'package:padmavatiupdated/core/exporters/app_export.dart';

class CouponDetails extends StatelessWidget {
  const CouponDetails({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          spacing: 8.h,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            _buildAppbar(theme),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Column(
                children: [
                  _buildDetailsCard(),
                  SizedBox(height: 12.h),
                  Container(
                    width: Get.width,
                    padding: const EdgeInsets.all(12.0),
                    decoration: buildCardDecoration(),
                    child: Column(
                      spacing: 12.h,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        AppText(
                          text: 'How it works ?',
                          fontSize: 14.sp,
                          style: theme.textTheme.bodyLarge!.copyWith(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        buildBulletPoint(
                          text: '1 Coupon for Lunch (12:00 PM- 03:00 PM)',
                          theme,
                        ),
                        buildBulletPoint(
                          text: '1 Coupon for Dinner (07:00 PM- 10:00 PM)',
                          theme,
                        ),
                        buildBulletPoint(
                          text: 'Show QR Code at the counter',
                          theme,
                        ),
                        buildBulletPoint(text: 'Valid only for today', theme),
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

  Widget _buildDetailsCard() {
    return Container(
      padding: const EdgeInsets.all(12.0),
      decoration: buildCardDecoration(),
      child: Column(
        spacing: 12.h,
        children: [
          _detailRow(title: "Total Coupons", value: "70"),
          _divider(),

          _detailRow(title: "Used Coupons", value: "2"),
          _divider(),

          _detailRow(title: "Remaining Coupons", value: "68"),
          _divider(),

          _detailRow(title: "Start Date", value: "01 May 2026"),
          _divider(),

          _detailRow(title: "End Date", value: "31 May 2026"),
          _divider(),

          _detailRow(title: "Total Amount", value: "₹2700"),
          _divider(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              AppText(
                text: "Status",
                fontSize: 15.sp,
                fontWeight: FontWeight.w500,
              ),

              badge("Active", Colors.green),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildAppbar(ThemeData theme) {
    return GradientAppbar(title: 'Coupon Details',showBack: true,);


    //   Container(
    //   width: Get.width,
    //   padding: EdgeInsets.symmetric(horizontal: 16.w).copyWith(top: 16.h),
    //   decoration: BoxDecoration(
    //     gradient: LinearGradient(
    //       colors: [AppColors.appBgColor, Colors.white],
    //       begin: Alignment.topCenter,
    //       end: Alignment.bottomCenter,
    //     ),
    //   ),
    //   child: SafeArea(
    //     child: Row(
    //       children: [
    //         AppIconButton(
    //           onPressed: () => Get.back(),
    //           icon: HugeIcons.strokeRoundedArrowLeft02,
    //           backgroundColor: Colors.white70,
    //           iconColor: Colors.black,
    //         ),
    //         AppText(
    //           text: 'Coupon Details',
    //           fontSize: 22.sp,
    //           style: theme.textTheme.titleLarge,
    //         ),
    //       ],
    //     ),
    //   ),
    // );
  }

  Widget _detailRow({required String title, required String value}) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 6.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          AppText(text: title, color: Colors.grey, fontSize: 14.sp),
          Flexible(
            child: AppText(
              text: value,
              fontSize: 14.sp,
              fontWeight: FontWeight.w600,
              textAlign: TextAlign.end,
            ),
          ),
        ],
      ),
    );
  }

  Widget _divider() {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 6.h),
      child: Divider(height: 1),
    );
  }
}
