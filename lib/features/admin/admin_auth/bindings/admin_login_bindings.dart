import '../../../../core/exporters/app_export.dart';

class AdminLoginBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<AdminLoginController>(() => AdminLoginController(getIt()));
  }
}
