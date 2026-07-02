import 'package:padmavatiupdated/core/exporters/app_export.dart';

class AdminReqCtrl extends BaseController {
  final GetAdminFoodRequests _foodRequests;
  final GetAdminLeaveRequests _leaveRequests;

  AdminReqCtrl(this._foodRequests, this._leaveRequests);

  final selectedType = 0.obs;

  final leavePagination = PaginationState<LeaveRequestModel>();
  final foodPagination = PaginationState<FoodRequestModel>();

  Future<void> getFoodRequests() async {
    final userId =
        await SecureStorageService.read(AppConstants.userIdKey) ?? '';
    await callApi<BaseResponseModel<FoodResponseModel>>(
      request: () => _foodRequests.call(UserRequest(userId)),
      loader: isLoading,
      onSuccess: (data) {},
    );
  }

  ////////////////////////////////////////Special Food Request///////////////////////////

  Future<void> getFoodRequestList({
    bool isRefresh = false,
    bool showLoading = true,
  }) async {
    if (isRefresh) foodPagination.reset();

    foodPagination.startLoading(showLoading: showLoading);

    final userId =
        await SecureStorageService.read(AppConstants.userIdKey) ?? '';

    try {
      final response = await _foodRequests(
        UserRequest(userId, pageNo: foodPagination.currentPage.toString()),
      );

      switch (response) {
        case Success(:final data):
          final List<FoodRequestModel> list = data.data!.foodRequests ?? [];

          foodPagination.handleSuccess(list);

        case Failure(:final message):
          print(message);
        // CustomSnackbar.show(context: Get.context!, message: message);
      }
    } catch (e) {
      debugPrint("Error: $e");
    } finally {
      foodPagination.stopLoading();
    }
  }

  ////////////////////////////////////////Leave Request///////////////////////////
  Future<void> getLeaveRequestList({
    bool isRefresh = false,
    bool showLoading = true,
  }) async {
    if (isRefresh) leavePagination.reset();

    leavePagination.startLoading(showLoading: showLoading);

    final userId =
        await SecureStorageService.read(AppConstants.userIdKey) ?? '';

    try {
      final response = await _leaveRequests(
        UserRequest(userId, pageNo: leavePagination.currentPage.toString()),
      );

      switch (response) {
        case Success(:final data):
          final List<LeaveRequestModel> list = data.data!.leaveRequests ?? [];

          leavePagination.handleSuccess(list);

        case Failure(:final message):
          print(message);
        // CustomSnackbar.show(context: Get.context!, message: message);
      }
    } catch (e) {
      debugPrint("Error: $e");
    } finally {
      leavePagination.stopLoading();
    }
  }
}
