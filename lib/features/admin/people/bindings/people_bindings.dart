import 'package:padmavatiupdated/core/exporters/app_export.dart';

class PeopleBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<PeopleController>(() => PeopleController());
  }
}
