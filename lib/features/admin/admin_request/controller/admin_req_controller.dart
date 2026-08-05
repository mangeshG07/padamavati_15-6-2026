import 'package:intl/intl.dart';
import 'package:padmavatiupdated/core/exporters/app_export.dart'
    hide DateFormat;

class AdminReqCtrl extends BaseController {
  final GetAdminFoodRequests _foodRequests;
  final GetAdminLeaveRequests _leaveRequests;

  AdminReqCtrl(this._foodRequests, this._leaveRequests);

  final selectedType = 0.obs;
  final isLoading = false.obs;

  final leavePagination = PaginationState<LeaveRequestModel>();
  final foodPagination = PaginationState<FoodRequestModel>();

  Future<void> getFoodRequests() async {
    final userId = await getUserId();
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
    final date = selectedDate.value == 'Today'
        ? DateFormat('dd-MM-yyyy').format(DateTime.now()).toString()
        : selectedDate.value;
    if (isRefresh) foodPagination.reset();

    foodPagination.startLoading(showLoading: showLoading);

    final userId = await getUserId();

    try {
      final response = await _foodRequests(
        UserRequest(
          userId,
          pageNo: foodPagination.currentPage.toString(),
          type: date,
        ),
      );

      switch (response) {
        case Success(:final data):
          final List<FoodRequestModel> list = data.data!.foodRequests ?? [];

          foodPagination.handleSuccess(list);

        case Failure(:final message):
          debugPrint('');
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
    final date = selectedDate.value == 'Today'
        ? DateFormat('dd-MM-yyyy').format(DateTime.now()).toString()
        : selectedDate.value;
    if (isRefresh) leavePagination.reset();

    leavePagination.startLoading(showLoading: showLoading);

    final userId = await getUserId();

    try {
      final response = await _leaveRequests(
        UserRequest(
          userId,
          pageNo: leavePagination.currentPage.toString(),
          type: date,
        ),
      );

      switch (response) {
        case Success(:final data):
          final List<LeaveRequestModel> list = data.data!.leaveRequests ?? [];

          leavePagination.handleSuccess(list);

        case Failure(:final message):
          debugPrint(message);
        // CustomSnackbar.show(context: Get.context!, message: message);
      }
    } catch (e) {
      debugPrint("Error: $e");
    } finally {
      leavePagination.stopLoading();
    }
  }

  final selectedDate = ''.obs;

  @override
  void onInit() {
    super.onInit();
    setDate(DateTime.now());
  }

  void setDate(DateTime date) async {
    final formatted = DateFormat('dd-MM-yyyy').format(date);
    final today = DateFormat('dd-MM-yyyy').format(DateTime.now());

    selectedDate.value = (formatted == today) ? 'Today' : formatted;
    await getFoodRequestList(isRefresh: true);
    await getLeaveRequestList(isRefresh: true);
  }
}
