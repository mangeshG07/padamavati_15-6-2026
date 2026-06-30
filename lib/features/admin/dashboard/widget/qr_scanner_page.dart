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

    /// 🎧 LISTENER (Replacement of ref.listen)
    ever(controller.userData, (user) {
      if (user.name != null) {
        scannerController.stop();

        Get.dialog(
          AlertDialog(
            title: const Text("Student Details"),
            content: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomImage(image: user.profileImage ?? ''),
                Text("Name : ${user.name}"),
                Text("Gender : ${user.gender}"),
                Text("Type : ${user.messTime}"),
                Text("Remaining Coupon : ${user.remainingCoupons}"),
                Text("Last Mess Day : ${user.lastMessDay}"),
                Text("Meal : ${controller.scanData.value.scanMessType}"),
                Text(
                  "Remaining payment : ${controller.paymentData.value.remainingAmount}",
                ),
              ],
            ),
            actions: [
              TextButton(
                onPressed: () {
                  Get.back();

                  controller.resetScanning();
                  isProcessing = false;

                  scannerController.start();
                },
                child: const Text("OK"),
              ),
            ],
          ),
        );
      }
    });

    /// ❌ Error listener
    ever(controller.isScanning, (loading) {
      if (!loading && isProcessing) {
        isProcessing = false;
      }
    });
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

                /// 🔥 API CALL
                await controller.scanQr(qr, userId);
              } catch (e) {
                Get.snackbar("Error", "Invalid QR Code");
                isProcessing = false;
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
