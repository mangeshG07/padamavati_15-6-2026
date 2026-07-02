import 'package:padmavatiupdated/core/exporters/app_export.dart';

class DashboardBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<DashboardController>(
      () => DashboardController(getIt(), getIt(), getIt(), getIt(), getIt()),
    );
  }
}
