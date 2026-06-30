import 'package:padmavatiupdated/core/exporters/app_export.dart';

class AdminReqBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<AdminReqCtrl>(() => AdminReqCtrl(getIt()));
  }
}
