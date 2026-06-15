import '../../../../core/exporters/app_export.dart';

class RegisterBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<RegisterController>(
      () => RegisterController(
        getIt<GetDegreeListUsecase>(),
        getIt<GetBranchListUsecase>(),
        getIt<RegisterUsecase>(),
      ),
    );
  }
}
