import 'package:padmavatiupdated/core/exporters/app_export.dart';

@lazySingleton
class GetPaymentReceiptUsecase {
  final PaymentHistoryRepository _repository;
  GetPaymentReceiptUsecase(this._repository);

  Future<Result<BaseResponseModel<PaymentData>>> call(
    UserRequest request,
  ) async {
    return await _repository.getPaymentReceipt(request);
  }
}
