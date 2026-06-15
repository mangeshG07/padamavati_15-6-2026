import 'package:padmavatiupdated/core/exporters/app_export.dart';

class HistoryController extends GetxController {

  final payHistoryList = [
    {
      'month': 'May-June',
      'type': 'Veg',
      'start_date': '13-05-2025',
      'end_date': '12-06-2025',
      'paid_amount': '₹ 2,600',
      'pending_amount': '₹ 2,600',
      'pending_status': 'Pending',
    },
    {
      'month': 'April-May',
      'type': 'Non-Veg',
      'start_date': '13-04-2025',
      'end_date': '12-05-2025',
      'paid_amount': '₹ 2,600',
      'pending_amount': '₹ 2,600',
      'pending_status': 'Completed',
    },
  ].obs;

}
