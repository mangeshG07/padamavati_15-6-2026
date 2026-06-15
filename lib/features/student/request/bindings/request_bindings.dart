import 'package:padmavatiupdated/core/exporters/app_export.dart';

class RequestBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<RequestController>(() => RequestController());
  }
}
