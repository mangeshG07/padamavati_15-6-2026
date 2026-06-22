import 'package:padmavatiupdated/core/exporters/app_export.dart';
import 'package:padmavatiupdated/domain/usecase/get_payment_receipt.dart';

class HistoryController extends BaseController {
  final PayHistoryUsecase _historyUsecase;
  final GetPaymentReceiptUsecase _receiptUsecase;

  HistoryController(this._historyUsecase, this._receiptUsecase);

  final isHistoryLoading = false.obs;
  final paymentHistoryList = <PaymentDetailsModel>[].obs;
  final paymentReceiptList = <PaymentModel>[].obs;
  final isReceiptLoading = false.obs;

  final payHistoryList = [
    {
      'month': 'May-June',
      'type': 'Veg',
      'start_date': '13-05-2025',
      'end_date': '12-06-2025',
      'paid_amount': '₹ 2,600',
      'pending_amount': '₹ 2,600',
      'pending_status': 'Pending',
    },
    {
      'month': 'April-May',
      'type': 'Non-Veg',
      'start_date': '13-04-2025',
      'end_date': '12-05-2025',
      'paid_amount': '₹ 2,600',
      'pending_amount': '₹ 2,600',
      'pending_status': 'Completed',
    },
  ].obs;

  /// -------------------- METHODS --------------------

  Future<void> fetchPaymentHistory() async {
    final userId =
        await SecureStorageService.read(AppConstants.userIdKey) ?? '';
    await callApi<BaseResponseModel<List<PaymentDetailsModel>>>(
      request: () => _historyUsecase.call(UserRequest(userId)),
      loader: isHistoryLoading,
      onSuccess: (data) {
        paymentHistoryList.value = data.data ?? [];
      },
    );
  }

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
