import 'package:padmavatiupdated/core/exporters/app_export.dart';

class PeopleController extends GetxController
    with PaginationMixin<PeopleModel> {
  final GetBranchUsersUsecase _branchUsersUsecase;
  PeopleController(this._branchUsersUsecase);

  final peopleList = [
    {'image': AppAssets.defaultImage, 'name': 'Rohit Patil', 'id': 'PDM01'},
    {'image': AppAssets.defaultImage, 'name': 'Sneha Joshi', 'id': 'PDM02'},
    {'image': AppAssets.defaultImage, 'name': 'Amit Shewale', 'id': 'PDM03'},
    {'image': AppAssets.defaultImage, 'name': 'Pooja Khot', 'id': 'PDM04'},
  ].obs;

  Future<void> getBranchUserList({
    bool isRefresh = false,
    bool showLoading = true,
  }) async {
    if (isRefresh) resetPagination();

    startLoading(showLoading: showLoading);

    final userId =
        await SecureStorageService.read(AppConstants.userIdKey) ?? '';

    try {
      final response = await _branchUsersUsecase(
        UserRequest(userId, pageNo: currentPage.toString()),
      );

      switch (response) {
        case Success(:final data):
          final List<PeopleModel> list = data.data!.users ?? [];

          handleSuccess(list);

        case Failure(:final message):
          print(message);
        // CustomSnackbar.show(context: Get.context!, message: message);
      }
    } catch (e) {
      debugPrint("Error: $e");
    } finally {
      stopLoading();
    }
  }
}
