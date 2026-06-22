import 'package:padmavatiupdated/core/exporters/app_export.dart';

@lazySingleton
class PayHistoryUsecase {
  final PaymentHistoryRepository _repository;

  PayHistoryUsecase(this._repository);

  Future<Result<BaseResponseModel<List<PaymentDetailsModel>>>> call(
    UserRequest request,
  ) async {
    return await _repository.getPaymentHistory(request);
  }
}
