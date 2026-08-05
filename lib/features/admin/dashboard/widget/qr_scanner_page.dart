import 'package:padmavatiupdated/core/exporters/app_export.dart';
import 'package:mobile_scanner/mobile_scanner.dart';

class QRScannerPage extends StatefulWidget {
  const QRScannerPage({super.key});

  @override
  State<QRScannerPage> createState() => _QRScannerPageState();
}

class _QRScannerPageState extends State<QRScannerPage> {
  final controller = Get.find<DashboardController>();
  final MobileScannerController scannerController = MobileScannerController();

  bool isProcessing = false;

  @override
  void initState() {
    super.initState();

    ever(controller.userData, (user) {
      if (user.name != null) {
        scannerController.stop();

        Get.dialog(
          Dialog(
            backgroundColor: Colors.transparent,
            child: Container(
              padding: const EdgeInsets.all(18),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(22),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withValues(alpha: 0.1),
                    blurRadius: 20,
                    offset: const Offset(0, 10),
                  ),
                ],
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  /// 🔹 PROFILE HEADER
                  Column(
                    children: [
                      CircleAvatar(
                        radius: 40,
                        backgroundColor: AppColors.lightPrimary.withValues(
                          alpha: 0.1,
                        ),
                        backgroundImage: (user.profileImage ?? '').isNotEmpty
                            ? NetworkImage(user.profileImage!)
                            : null,
                        child: (user.profileImage ?? '').isEmpty
                            ? const Icon(Icons.person, size: 40)
                            : null,
                      ),
                      SizedBox(height: 10.h),
                      AppText(
                        text: user.name ?? '',
                        fontSize: 16.sp,
                        fontWeight: FontWeight.bold,
                      ),
                      AppText(
                        text: user.gender ?? '',
                        fontSize: 12.sp,
                        color: Colors.grey,
                      ),
                    ],
                  ),
                  SizedBox(height: 16.h),

                  /// 🔥 DETAILS CARD
                  Obx(
                    () => Container(
                      padding: const EdgeInsets.all(14),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16),
                        color: AppColors.lightPrimary.withValues(alpha: 0.07),
                      ),
                      child: Column(
                        children: [
                          _infoRow(
                            Icons.food_bank,
                            "Branch",
                            user.branch ?? '',
                          ),
                          _infoRow(
                            Icons.restaurant,
                            "Meal Type",
                            controller.scanData.value.scanMessType ?? '',
                          ),
                          _infoRow(
                            Icons.restaurant,
                            "Food Type",
                            user.messType ?? '',
                          ),
                          _infoRow(
                            Icons.confirmation_number,
                            "Coupons Left",
                            "${user.remainingCoupons}",
                          ),
                          _infoRow(
                            Icons.calendar_today,
                            "Last Mess Day",
                            "${user.lastMessDay}",
                          ),
                          _infoRow(
                            Icons.access_time,
                            "Mess Time",
                            "${user.messTime}",
                          ),
                          _infoRow(
                            Icons.access_time,
                            "Expired Coupon",
                            controller.scanQrData.value.expiredQr?.toString() ??
                                '0',
                          ),
                          _infoRow(
                            Icons.access_time,
                            "Used Coupon",
                            controller.scanQrData.value.usedQr?.toString() ??
                                '0',
                          ),
                          _infoRow(
                            Icons.calendar_today,
                            "Last Payment Date",
                            controller.paymentData.value.paidDate?.toString() ??
                                '0',
                          ),
                        ],
                      ),
                    ),
                  ),

                  SizedBox(height: 14.h),

                  /// 💰 PAYMENT WARNING
                  Obx(() {
                    final remaining =
                        controller.paymentData.value.remainingAmount ?? 0;

                    if (remaining <= 0) return const SizedBox();

                    return Container(
                      padding: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        color: Colors.red.withValues(alpha: 0.08),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Row(
                        spacing: 8.w,
                        children: [
                          const Icon(
                            Icons.warning_amber_rounded,
                            color: Colors.red,
                          ),
                          Expanded(
                            child: AppText(
                              fontSize: 14.sp,
                              text: "Pending Payment: ₹$remaining",
                              fontWeight: FontWeight.w600,
                              color: Colors.red,
                            ),
                          ),
                        ],
                      ),
                    );
                  }),
                  SizedBox(height: 20.h),

                  /// 🔹 BUTTON
                  SizedBox(
                    width: double.infinity,
                    child: AppButton(
                      text: 'Done',
                      backgroundColor: AppColors.lightPrimary,
                      onTap: () {
                        Get.back();
                        controller.resetScanning();
                        isProcessing = false;
                        scannerController.start();
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      }
    });

    /// 🔹 REUSABLE ROW

    // /// 🎧 LISTENER (Replacement of ref.listen)
    // ever(controller.userData, (user) {
    //   if (user.name != null) {
    //     scannerController.stop();
    //
    //     Get.dialog(
    //       AlertDialog(
    //         title: const Text("Student Details"),
    //         content: Column(
    //           mainAxisSize: MainAxisSize.min,
    //           crossAxisAlignment: CrossAxisAlignment.start,
    //           children: [
    //             CircleAvatar(
    //               radius: 40,
    //               backgroundColor: AppColors.lightPrimary.withValues(
    //                 alpha: 0.1,
    //               ),
    //               backgroundImage: (user.profileImage ?? '').isNotEmpty
    //                   ? NetworkImage(user.profileImage!)
    //                   : null,
    //               child: (user.profileImage ?? '').isEmpty
    //                   ? const Icon(Icons.person, size: 40)
    //                   : null,
    //             ),
    //             AppText(
    //               text: user.name ?? '',
    //               fontSize: 16.sp,
    //               fontWeight: FontWeight.bold,
    //             ),
    //             AppText(
    //               text: user.gender ?? '',
    //               fontSize: 12.sp,
    //               color: Colors.grey,
    //             ),
    //             Text("Type : ${user.messTime}"),
    //             Text("Remaining Coupon : ${user.remainingCoupons}"),
    //             Text("Last Mess Day : ${user.lastMessDay}"),
    //             Text("Meal : ${controller.scanData.value.scanMessType}"),
    //             Text(
    //               "Remaining payment : ${controller.paymentData.value.remainingAmount}",
    //             ),
    //           ],
    //         ),
    //         actions: [
    //           TextButton(
    //             onPressed: () {
    //               Get.back();
    //
    //               controller.resetScanning();
    //               isProcessing = false;
    //
    //               scannerController.start();
    //             },
    //             child: const Text("OK"),
    //           ),
    //         ],
    //       ),
    //     );
    //   }
    // });

    /// ❌ Error listener
    ever(controller.isScanning, (loading) {
      if (!loading && isProcessing) {
        isProcessing = false;
      }
    });
  }

  Widget _infoRow(IconData icon, String title, String value) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 6),
      child: Row(
        spacing: 10.w,
        children: [
          Icon(icon, size: 18, color: AppColors.lightPrimary),
          Expanded(
            child: AppText(text: title, fontSize: 12.sp, color: Colors.grey),
          ),
          AppText(text: value, fontSize: 13.sp, fontWeight: FontWeight.w600),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: const Text("Scan Lunch QR Code"),
        centerTitle: true,
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
      ),
      body: Stack(
        alignment: Alignment.center,
        children: [
          /// 📷 Scanner
          MobileScanner(
            controller: scannerController,
            onDetect: (capture) async {
              if (isProcessing) return;
              if (controller.isScanning.value) return;

              final barcode = capture.barcodes.first;
              final rawData = barcode.rawValue ?? "";

              try {
                final data = jsonDecode(rawData);
                final userId = data['userId']?.toString() ?? '';
                final qr = data['qr_code'];

                isProcessing = true;

                /// 🔥 STOP CAMERA BEFORE API
                scannerController.stop();

                /// 🔥 API CALL
                await controller.scanQr(qr, userId);
              } catch (e) {
                Get.snackbar("Error", "Invalid QR Code");
                isProcessing = false;

                /// 🔥 STOP CAMERA BEFORE API
                scannerController.stop();
              }
            },
          ),

          /// Loader
          Obx(() {
            return controller.isScanning.value
                ? const CircularProgressIndicator(color: Colors.white)
                : const SizedBox();
          }),

          /// Bottom text
          const Positioned(
            bottom: 100,
            child: Text(
              "Align QR code within the frame",
              style: TextStyle(color: Colors.white),
            ),
          ),
        ],
      ),
    );
  }
}
