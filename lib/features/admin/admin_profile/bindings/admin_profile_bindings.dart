import 'package:padmavatiupdated/core/exporters/app_export.dart';

class AdminProfileBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<AdminProfileController>(() => AdminProfileController(getIt()));
  }
}
