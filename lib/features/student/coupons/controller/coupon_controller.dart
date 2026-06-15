import 'package:padmavatiupdated/core/exporters/app_export.dart';

class CouponController extends GetxController {
  final selectedType = 0.obs;

  final usedCouponList = [
    {
      'date': '23 May 2026',
      'status': {'day': 'Not Used', 'night': 'Not Used'},
    },
    {
      'date': '22 May 2026',
      'status': {'day': 'Used', 'night': 'Not Used'},
    },
    {
      'date': '21 May 2026',
      'status': {'day': 'Used', 'night': 'Used'},
    },
    {
      'date': '20 May 2026',
      'status': {'day': 'Used', 'night': 'Used'},
    },
  ].obs;
}
