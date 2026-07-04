import '../../../../core/exporters/app_export.dart';

class RequestController extends BaseController {
  final GetLeaveRequests _leaveRequests;
  final GetFoodRequests _getFoodRequests;
  final FoodItemsUsecase _foodItemsUsecase;
  final AddFoodRequestUsecase _addFoodRequestUsecase;
  final AddLeaveRequestUsecase _addLeaveRequestUsecase;
  RequestController(
    this._leaveRequests,
    this._foodItemsUsecase,
    this._getFoodRequests,
    this._addFoodRequestUsecase,
    this._addLeaveRequestUsecase,
  );

  final dateController = TextEditingController();
  final selectedFood = Rxn<String>();

  final requestKey = GlobalKey<FormState>();

  void resetFields() {
    dateController.clear();
    fromDate.clear();
    toDate.clear();
    calculatedDays.value = 0;
    selectedFood.value = null;
  }

  final leavePagination = PaginationState<LeaveRequestModel>();
  final foodPagination = PaginationState<FoodRequestModel>();

  ////////////////////////////////////////Leave Request///////////////////////////

  final fromDate = TextEditingController();
  final toDate = TextEditingController();
  final leaveKey = GlobalKey<FormState>();
  final maxDays = 8.obs;
  final calculatedDays = 0.obs;
  final isFoodLoading = false.obs;
  final isAddFoodLoading = false.obs;
  final isAddLeaveLoading = false.obs;
  final foodItemsList = <MasterDataModel>[].obs;

  void calculateNumberOfDays(DateTime fromDate, DateTime toDate) {
    final difference = toDate.difference(fromDate).inDays + 1;

    if (difference < 0) {
      calculatedDays.value = 0;
    } else if (difference > maxDays.value) {
      calculatedDays.value = maxDays.value;
    } else {
      calculatedDays.value = difference;
    }
  }

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
          debugPrint(message);
        // CustomSnackbar.show(context: Get.context!, message: message);
      }
    } catch (e) {
      debugPrint("Error: $e");
    } finally {
      leavePagination.stopLoading();
    }
  }

  ////////////////////////////////////////Food Items///////////////////////////

  Future<void> getFoodItems() async {
    await callApi<BaseResponseModel<List<MasterDataModel>>>(
      request: () => _foodItemsUsecase.call(),
      loader: isFoodLoading,
      onSuccess: (data) {
        foodItemsList.value = data.data ?? [];
      },
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
      final response = await _getFoodRequests(
        UserRequest(userId, pageNo: foodPagination.currentPage.toString()),
      );

      switch (response) {
        case Success(:final data):
          final List<FoodRequestModel> list = data.data!.foodRequests ?? [];

          foodPagination.handleSuccess(list);

        case Failure(:final message):
          debugPrint(message);
        // CustomSnackbar.show(context: Get.context!, message: message);
      }
    } catch (e) {
      debugPrint("Error: $e");
    } finally {
      foodPagination.stopLoading();
    }
  }

  Future<void> addFoodRequest() async {
    final userId =
        await SecureStorageService.read(AppConstants.userIdKey) ?? '';
    await callApi<BaseResponseModel>(
      request: () => _addFoodRequestUsecase.call(
        MessRequest(
          userId: userId,
          specialfoodId: selectedFood.value!,
          date: dateController.text.trim(),
        ),
      ),
      showError: true,
      loader: isAddFoodLoading,
      onSuccess: (data) async {
        await getFoodRequestList();
        Get.back();
        CustomSnackbar.show(
          context: Get.context!,
          message: data.common.message,
          type: SnackbarType.success,
        );
      },
      onError: (msg) {
        Get.back();
        CustomSnackbar.show(
          context: Get.context!,
          message: msg,
          type: SnackbarType.error,
        );
      },
    );
  }

  Future<void> addLeaveRequest() async {
    final userId =
        await SecureStorageService.read(AppConstants.userIdKey) ?? '';
    await callApi<BaseResponseModel>(
      request: () => _addLeaveRequestUsecase.call(
        AddLeaveRequest(
          userId: userId,
          fromDate: fromDate.text.trim(),
          toDate: toDate.text.trim(),
        ),
      ),
      showError: true,
      loader: isAddLeaveLoading,
      onSuccess: (data) async {
        await getLeaveRequestList();
        Get.back();
        CustomSnackbar.show(
          context: Get.context!,
          message: data.common.message,
          type: SnackbarType.success,
        );
      },
      onError: (msg) {
        Get.back();
        // CustomSnackbar.show(
        //   context: Get.context!,
        //   message: msg,
        //   type: SnackbarType.error,
        // );
      },
    );
  }
}
