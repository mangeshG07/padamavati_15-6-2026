import 'package:intl/intl.dart';
import 'package:padmavatiupdated/core/exporters/app_export.dart'
    hide DateFormat;

class PeopleController extends GetxController
    with PaginationMixin<PeopleModel> {
  final GetBranchUsersUsecase _branchUsersUsecase;
  final ExpireCouponUsecase _couponUsecase;
  PeopleController(this._branchUsersUsecase, this._couponUsecase);

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

  final expirePagination = PaginationState<ExpireQrModel>();

  ////////////////////////////////////////Expire Coupons ///////////////////////////

  Future<void> getExpireCouponList({
    bool isRefresh = false,
    bool showLoading = true,
    required String studentId,
  }) async {
    if (isRefresh) expirePagination.reset();

    expirePagination.startLoading(showLoading: showLoading);

    final userId =
        await SecureStorageService.read(AppConstants.userIdKey) ?? '';

    try {
      final response = await _couponUsecase(
        UserRequest(
          userId,
          pageNo: expirePagination.currentPage.toString(),
          type: studentId,
        ),
      );

      switch (response) {
        case Success(:final data):
          final List<ExpireQrModel> list = data.data!.qrList ?? [];

          expirePagination.handleSuccess(list);

        case Failure(:final message):
          debugPrint(message);
      }
    } catch (e) {
      debugPrint("Error: $e");
    } finally {
      expirePagination.stopLoading();
    }
  }

  Map<String, List<ExpireQrModel>> groupByDate(List<ExpireQrModel> list) {
    final Map<String, List<ExpireQrModel>> grouped = {};

    for (final item in list) {
      final expiredAt = item.expiredAt;

      /// ✅ Skip null or empty
      if (expiredAt == null || expiredAt.isEmpty) continue;

      DateTime? parsedDate;

      try {
        /// 🔥 Parse full string
        parsedDate = DateFormat('dd-MM-yyyy hh:mm a').parse(expiredAt);
      } catch (e) {
        continue; // skip invalid format safely
      }

      /// ✅ Format only date (header)
      final dateKey = DateFormat('dd MMM yyyy').format(parsedDate);

      grouped.putIfAbsent(dateKey, () => []);
      grouped[dateKey]!.add(item);
    }

    return grouped;
  }
}
