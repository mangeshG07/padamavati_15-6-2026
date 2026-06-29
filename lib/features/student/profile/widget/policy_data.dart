import 'package:padmavatiupdated/core/exporters/app_export.dart';

class PolicyInfo extends StatelessWidget {
  const PolicyInfo({super.key});

  @override
  Widget build(BuildContext context) {
    FacilityModel policyData = Get.arguments;

    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(100.h),
        child: GradientAppbar(title: policyData.name, showBack: true),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Padding(
              //   padding: const EdgeInsets.symmetric(horizontal: 16.0),
              //   child: AppText(
              //     text: policyData.name,
              //     fontSize: 22.sp,
              //     fontWeight: FontWeight.bold,
              //   ),
              // ),
              HtmlWidget(
                textStyle: const TextStyle(fontSize: 14),
                policyData.shortDescription ?? '',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
