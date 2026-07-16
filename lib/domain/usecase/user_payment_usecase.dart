import 'package:padmavatiupdated/core/exporters/app_export.dart';

@lazySingleton
class UserPaymentUsecase{
  final DashboardRepository _repository;
  UserPaymentUsecase(this._repository);

  Future<Result<BaseResponseModel<PaymentResponseModel>>> call(
      UserRequest req,
      )async{
    return await _repository.usersPaymentData(req);
  }
}