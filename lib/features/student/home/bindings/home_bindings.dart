import 'package:padmavatiupdated/core/exporters/app_export.dart';

class HomeBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<HomeController>(
      () => HomeController(
        getIt<GetHomeUsecase>(),
        getIt<GetPackagesUsecase>(),
        getIt<StartMessUsecase>(),
      ),
    );
  }
}
