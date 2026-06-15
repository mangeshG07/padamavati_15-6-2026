import 'package:padmavatiupdated/core/exporters/app_export.dart';

class PaymentHistory extends StatefulWidget {
  const PaymentHistory({super.key});

  @override
  State<PaymentHistory> createState() => _PaymentHistoryState();
}

class _PaymentHistoryState extends State<PaymentHistory> {
  final controller = Get.find<HistoryController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          spacing: 8.h,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GradientAppbar(title: 'Payment History', showBack: false),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: ListView.separated(
                shrinkWrap: true,
                padding: EdgeInsets.zero,
                separatorBuilder: (_, __) => SizedBox(height: 12.h),
                physics: const NeverScrollableScrollPhysics(),
                itemCount: controller.payHistoryList.length,
                itemBuilder: (BuildContext context, int index) {
                  final payment = controller.payHistoryList[index];
                  return Container();
                  // return PaymentTile(payment: payment);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
