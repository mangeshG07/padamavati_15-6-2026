import 'package:padmavatiupdated/core/exporters/app_export.dart';

class ProfileBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ProfileController>(
      () => ProfileController(getIt(), getIt(), getIt(),getIt(), getIt()),
    );
  }
}
