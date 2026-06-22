import 'package:padmavatiupdated/core/exporters/app_export.dart';

abstract class PaymentHistoryRepository {
  Future<Result<BaseResponseModel<List<PaymentDetailsModel>>>>
  getPaymentHistory(UserRequest request);

  Future<Result<BaseResponseModel<PaymentData>>> getPaymentReceipt(
    UserRequest request,
  );
}
