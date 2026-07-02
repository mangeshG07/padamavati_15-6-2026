import 'package:padmavatiupdated/features/admin/dashboard/widget/used_qr_sheet.dart';

import '../../../../core/exporters/app_export.dart';

class UserDetailsPage extends StatefulWidget {
  const UserDetailsPage({super.key});

  @override
  State<UserDetailsPage> createState() => _UserDetailsPageState();
}

class _UserDetailsPageState extends State<UserDetailsPage> {
  final controller = Get.find<DashboardController>();

  @override
  void initState() {
    super.initState();
    final studentId = Get.arguments['id']?.toString() ?? '';
    controller.getUserDetails(studentId);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(60.h),
        child: GradientAppbar(title: 'User Details', showBack: true),
      ),

      body: Obx(
        () => controller.userLoading.isTrue
            ? AppLoader(strokeWidth: 2.5)
            : SingleChildScrollView(
                padding: EdgeInsets.all(16.w),
                child: Column(
                  children: [
                    /// 🔹 USER HEADER
                    _buildUserHeader(controller.scanUserData.value),

                    SizedBox(height: 16.h),

                    /// 🔹 PACKAGE DETAILS
                    _buildPackage(controller.packageData.value),

                    SizedBox(height: 16.h),

                    /// 🔹 QR STATS
                    _buildQrSection(controller.qrData.value),

                    SizedBox(height: 16.h),

                    /// 🔹 PAYMENT
                    _buildPaymentSection(controller.scannedPayData.value),
                  ],
                ),
              ),
      ),
    );
  }

  Widget _buildPaymentSection(ScannedPaymentData payment) {
    return _sectionCard(
      title: "Payment",
      children: [
        _row(
          "Status",
          payment.paymentStatus == "1" ? "Paid" : "Pending",
          valueColor: payment.paymentStatus == "1" ? Colors.green : Colors.red,
        ),
        _row("Total", "₹${payment.totalAmount}"),
        _row("Paid", "₹${payment.paidAmount}"),
        _row(
          "Remaining",
          "₹${payment.remainingAmount}",
          valueColor: Colors.red,
        ),
      ],
    );
  }

  Widget _buildQrSection(QrData qr) {
    return _sectionCard(
      title: "QR Usage",
      children: [
        _row("Total QR", qr.totalQrs.toString()),
        GestureDetector(
          onTap: () {
            Get.bottomSheet(
              UsedQrSheet(
                id: controller.scanUserData.value.userId?.toString() ?? '',
              ),
              isScrollControlled: true,
            );
          },
          child: _row("Used", qr.usedQrs.toString()),
        ),
        _row("Pending", qr.pendingQrs.toString()),
        _row("Expired", qr.expiredQrs.toString()),
      ],
    );
  }

  Widget _buildPackage(PackageData pkg) {
    return _sectionCard(
      title: "Package Details",
      children: [
        _row("Package", pkg.packageName),
        _row("Type", pkg.packageType),
        _row("Days", pkg.packageDays.toString()),
        _row("Amount", "₹${pkg.packageAmount}"),
        _row("Start", pkg.startDate),
        _row("End", pkg.endDate),
      ],
    );
  }

  Widget _buildUserHeader(UserData user) {
    return Container(
      padding: EdgeInsets.all(16.w),
      decoration: _cardDecoration(),
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(12.r),
            child: CustomImage(
              image: user.profileImage ?? '',
              width: 70.w,
              height: 70.w,
              fit: BoxFit.cover,
            ),
          ),
          SizedBox(width: 14.w),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                AppText(
                  text: user.name ?? '',
                  fontSize: 18.sp,
                  fontWeight: FontWeight.bold,
                ),
                SizedBox(height: 6.h),
                AppText(text: user.mobileNo ?? '', fontSize: 14.sp),
                SizedBox(height: 6.h),
                Row(
                  children: [
                    _chip(user.gender ?? ''),
                    SizedBox(width: 8.w),
                    _chip(user.messType ?? ''),
                    SizedBox(width: 8.w),
                    _chip(user.messTime ?? ''),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  /// 🔹 Card Decoration
  BoxDecoration _cardDecoration() {
    return BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(16.r),
      boxShadow: [
        BoxShadow(
          color: Colors.black.withValues(alpha: 0.05),
          blurRadius: 10,
          offset: const Offset(0, 4),
        ),
      ],
    );
  }

  /// 🔹 Section Card
  Widget _sectionCard({required String title, required List<Widget> children}) {
    return Container(
      padding: EdgeInsets.all(16.w),
      decoration: _cardDecoration(),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AppText(text: title, fontSize: 16.sp, fontWeight: FontWeight.bold),
          SizedBox(height: 12.h),
          ...children,
        ],
      ),
    );
  }

  /// 🔹 Row Item
  Widget _row(String title, String? value, {Color? valueColor}) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 6.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          AppText(
            text: title,
            color: title == 'Used' ? Colors.blue : Colors.grey[600],
            fontSize: 14.sp,
          ),
          AppText(
            text: value ?? '-',
            fontWeight: FontWeight.w600,
            color: valueColor ?? Colors.black,
            fontSize: 14.sp,
          ),
        ],
      ),
    );
  }

  /// 🔹 Chip UI
  Widget _chip(String text) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 4.h),
      decoration: BoxDecoration(
        color: AppColors.lightPrimary.withValues(alpha: 0.1),
        borderRadius: BorderRadius.circular(20.r),
      ),
      child: AppText(
        text: text,
        fontSize: 11.sp,
        color: AppColors.lightPrimary,
      ),
    );
  }
}
