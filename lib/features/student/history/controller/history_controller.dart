import 'package:padmavatiupdated/core/exporters/app_export.dart';

class HistoryController extends BaseController {
  final PayHistoryUsecase _historyUsecase;
  final GetPaymentReceiptUsecase _receiptUsecase;

  HistoryController(this._historyUsecase, this._receiptUsecase);

  final isHistoryLoading = false.obs;
  final paymentHistoryList = <PaymentDetailsModel>[].obs;

  final isReceiptLoading = false.obs;
  final paymentReceiptList = <PaymentModel>[].obs;

  /// -------------------- HISTORY --------------------
  Future<void> fetchPaymentHistory() async {
    final userId = await getUserId();
    await callApi<BaseResponseModel<List<PaymentDetailsModel>>>(
      request: () => _historyUsecase.call(UserRequest(userId)),
      loader: isHistoryLoading,
      onSuccess: (data) {
        paymentHistoryList.value = data.data ?? [];
      },
    );
  }

  /// -------------------- RECEIPT --------------------
  Future<void> fetchPaymentReceipt(String transId) async {
    final userId =
        await SecureStorageService.read(AppConstants.userIdKey) ?? '';
    await callApi<BaseResponseModel<PaymentData>>(
      request: () => _receiptUsecase.call(UserRequest(userId, type: transId)),
      loader: isReceiptLoading,
      onSuccess: (data) {
        paymentReceiptList.value = data.data!.payments;
      },
    );
  }
}
