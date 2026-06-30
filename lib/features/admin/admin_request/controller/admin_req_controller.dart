import 'package:padmavatiupdated/core/exporters/app_export.dart';

class AdminReqCtrl extends BaseController {
  final GetAdminFoodRequests _foodRequests;

  AdminReqCtrl(this._foodRequests);

  final selectedType = 0.obs;
  final requestList = [
    {'date': '12-06-2025', 'food': 'veg', 'created_at': '11-06-2025'},
    {'date': '13-06-2025', 'food': 'NonVeg', 'created_at': '11-06-2025'},
    {'date': '14-06-2025', 'food': 'veg', 'created_at': '11-06-2025'},
    {'date': '16-06-2025', 'food': 'NonVeg', 'created_at': '11-06-2025'},
    {'date': '17-06-2025', 'food': 'Khichadi', 'created_at': '11-06-2025'},
  ].obs;

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
}
