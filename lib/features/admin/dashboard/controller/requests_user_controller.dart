import 'package:padmavatiupdated/core/exporters/app_export.dart';

class RequestsUserController extends BaseController {
  final TomorrowUserUsecase _tomorrowUserUsecase;
  final UserPaymentUsecase _paymentUsecase;
  RequestsUserController(this._tomorrowUserUsecase, this._paymentUsecase);

  final requestsPagination = PaginationState<RequestUserModel>();

  final selectedType = 0.obs;

  Future<void> getRequestUserList({
    bool isRefresh = false,
    bool showLoading = true,
  }) async {
    if (isRefresh) requestsPagination.reset();

    requestsPagination.startLoading(showLoading: showLoading);

    final userId =
        await SecureStorageService.read(AppConstants.userIdKey) ?? '';

    try {
      final response = await _tomorrowUserUsecase(
        UserRequest(
          userId,
          pageNo: requestsPagination.currentPage.toString(),
          type: selectedType.value.toString(),
        ),
      );

      switch (response) {
        case Success(:final data):
          final List<RequestUserModel> list = data.data!.request ?? [];

          requestsPagination.handleSuccess(list);

        case Failure(:final message):
          debugPrint(message);
      }
    } catch (e) {
      debugPrint("Error: $e");
    } finally {
      requestsPagination.stopLoading();
    }
  }

  final paymentPagination = PaginationState<UserPaymentModel>();

  Future<void> getUsersPaymentList({
    bool isRefresh = false,
    bool showLoading = true,
  }) async {
    if (isRefresh) paymentPagination.reset();

    paymentPagination.startLoading(showLoading: showLoading);

    final userId =
        await SecureStorageService.read(AppConstants.userIdKey) ?? '';

    try {
      final response = await _paymentUsecase(
        UserRequest(userId, pageNo: paymentPagination.currentPage.toString()),
      );

      switch (response) {
        case Success(:final data):
          final List<UserPaymentModel> list = data.data!.users ?? [];

          paymentPagination.handleSuccess(list);

        case Failure(:final message):
          debugPrint(message);
      }
    } catch (e) {
      debugPrint("Error: $e");
    } finally {
      paymentPagination.stopLoading();
    }
  }
}
