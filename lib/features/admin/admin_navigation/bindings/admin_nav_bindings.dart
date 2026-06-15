import 'package:padmavatiupdated/core/exporters/app_export.dart';

class AdminNavigationBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<AdminNavController>(() => AdminNavController());
  }
}
