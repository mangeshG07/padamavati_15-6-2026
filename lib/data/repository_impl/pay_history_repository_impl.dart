import '../../core/exporters/app_export.dart';

@LazySingleton(as: PaymentHistoryRepository)
class PaymentHistoryRepoImpl implements PaymentHistoryRepository {
  final ApiService _apiService;

  PaymentHistoryRepoImpl(this._apiService);

  @override
  Future<Result<BaseResponseModel<List<PaymentDetailsModel>>>>
  getPaymentHistory(UserRequest request) async {
    try {
      final res = await _apiService.paymentHistory(request.userId);

      if (res.common.status == true) {
        return Success(res);
      } else {
        return Failure(res.common.message);
      }
    } catch (e) {
      return Failure('Something went wrong.');
    }
  }

  @override
  Future<Result<BaseResponseModel<PaymentData>>> getPaymentReceipt(
    UserRequest request,
  ) async {
    try {
      final res = await _apiService.paymentReceipt(
        request.userId,
        request.type,
      );

      if (res.common.status == true) {
        return Success(res);
      } else {
        return Failure(res.common.message);
      }
    } catch (e) {
      return Failure('Something went wrong.');
    }
  }
}
