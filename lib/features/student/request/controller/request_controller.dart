
import '../../../../core/exporters/app_export.dart';

class RequestController extends GetxController {
  final requestList = [
    {'date': '12-06-2025', 'food': 'veg', 'created_at': '11-06-2025'},
    {'date': '13-06-2025', 'food': 'NonVeg', 'created_at': '11-06-2025'},
    {'date': '14-06-2025', 'food': 'veg', 'created_at': '11-06-2025'},
    {'date': '16-06-2025', 'food': 'NonVeg', 'created_at': '11-06-2025'},
    {'date': '17-06-2025', 'food': 'Khichadi', 'created_at': '11-06-2025'},
  ].obs;

  final dateController = TextEditingController();
  final selectedFood = Rxn<String>();
  final foodList = ['Veg', 'NonVeg', 'Khichadi'].obs;

  final requestKey = GlobalKey<FormState>();

  void resetFields() {
    dateController.clear();
    selectedFood.value = null;
  }
}
