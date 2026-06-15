import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:mobile_scanner/mobile_scanner.dart';

class QRScannerPage extends StatefulWidget {
  const QRScannerPage({super.key});

  @override
  State<QRScannerPage> createState() => _QRScannerPageState();
}

class _QRScannerPageState extends State<QRScannerPage> {
  final MobileScannerController controller = MobileScannerController();

  bool isScanned = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: const Text("Scan Lunch QR Code"),
        centerTitle: true,
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        elevation: 0,
      ),
      body: Stack(
        alignment: Alignment.center,
        children: [
          /// Camera Scanner
          MobileScanner(
            controller: controller,
            onDetect: (capture) {
              if (isScanned) return;

              final barcode = capture.barcodes.first;

              final String rawData = barcode.rawValue ?? "";

              try {

                /// Convert String to Object
                final data = jsonDecode(rawData);

                String name = data['name'];
                String meal = data['meal'];
                String type = data['type'];

                setState(() {
                  isScanned = true;
                });

                showDialog(
                  context: context,
                  builder: (_) {
                    return AlertDialog(
                      title: const Text("Student Details"),
                      content: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Name : $name"),
                          Text("Meal : $meal"),
                          Text("Type : $type"),
                        ],
                      ),
                      actions: [
                        TextButton(
                          onPressed: () {
                            Navigator.pop(context);

                            setState(() {
                              isScanned = false;
                            });
                          },
                          child: const Text("OK"),
                        )
                      ],
                    );
                  },
                );

              } catch (e) {

                /// Invalid QR
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(
                    content: Text("Invalid QR Code"),
                  ),
                );
              }
            },
          ),

          /// Dark Overlay
          Container(color: Colors.black.withValues(alpha: 0.5)),

          /// Scanner Box Cut Area
          Center(
            child: Container(
              width: 260,
              height: 260,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.transparent,
              ),
              child: Stack(
                children: [
                  /// Transparent Center
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(color: Colors.white, width: 2),
                    ),
                  ),

                  /// Top Left
                  Positioned(top: 0, left: 0, child: buildCorner()),

                  /// Top Right
                  Positioned(
                    top: 0,
                    right: 0,
                    child: RotatedBox(quarterTurns: 1, child: buildCorner()),
                  ),

                  /// Bottom Left
                  Positioned(
                    bottom: 0,
                    left: 0,
                    child: RotatedBox(quarterTurns: 3, child: buildCorner()),
                  ),

                  /// Bottom Right
                  Positioned(
                    bottom: 0,
                    right: 0,
                    child: RotatedBox(quarterTurns: 2, child: buildCorner()),
                  ),
                ],
              ),
            ),
          ),

          /// Bottom Text
          Positioned(
            bottom: 100,
            child: Text(
              "Align QR code within the frame",
              style: TextStyle(
                color: Colors.white,
                fontSize: 16,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget buildCorner() {
    return Container(
      width: 40,
      height: 40,
      decoration: const BoxDecoration(
        border: Border(
          top: BorderSide(color: Colors.greenAccent, width: 4),
          left: BorderSide(color: Colors.greenAccent, width: 4),
        ),
      ),
    );
  }
}
