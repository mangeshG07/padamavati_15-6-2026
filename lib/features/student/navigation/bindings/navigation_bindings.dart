import 'package:padmavatiupdated/core/exporters/app_export.dart';

class NavigationBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<NavigationController>(() => NavigationController());
  }
}
