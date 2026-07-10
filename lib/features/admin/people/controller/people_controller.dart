import 'package:padmavatiupdated/core/exporters/app_export.dart';

class PeopleController extends GetxController
    with PaginationMixin<PeopleModel> {
  final GetBranchUsersUsecase _branchUsersUsecase;
  PeopleController(this._branchUsersUsecase);

  final searchKeyword = TextEditingController();
  final searchText = ''.obs;

  final debouncer = Debouncer(milliseconds: 500);

  void updateSearchText(String value) {
    searchText.value = value;
  }

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
        UserRequest(
          userId,
          pageNo: currentPage.toString(),
          type: searchKeyword.text.trim(),
        ),
      );

      switch (response) {
        case Success(:final data):
          final List<PeopleModel> list = data.data!.users ?? [];

          handleSuccess(list);

        case Failure(:final message):
          debugPrint(message);
        // CustomSnackbar.show(context: Get.context!, message: message);
      }
    } catch (e) {
      debugPrint("Error: $e");
    } finally {
      stopLoading();
    }
  }

  String formatAmount(String? value) {
    final amount = double.tryParse(value ?? '') ?? 0.0;
    return "₹ ${amount.toStringAsFixed(2)}";
  }
}
