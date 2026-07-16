import 'package:padmavatiupdated/core/exporters/app_export.dart';

abstract class DashboardRepository {
  Future<Result<BaseResponseModel<DashboardModel>>> getDashboard(
    UserRequest request,
  );

  Future<Result<BaseResponseModel<QRResponseModel>>> scanQr(
    UserRequest request,
  );

  Future<Result<BaseResponseModel<ScannedResponseModel>>> scannedUserData(
    UserRequest request,
  );

  Future<Result<BaseResponseModel<UserDetailsModel>>> scannedUserDetailsData(
    UserRequest req,
  );

  Future<Result<BaseResponseModel<UsedQRResponseModel>>> usedQrData(
    UserRequest req,
  );

  Future<Result<BaseResponseModel<RequestsResponseModel>>> tomorrowRequests(
    UserRequest req,
  );

  Future<Result<BaseResponseModel<PaymentResponseModel>>> usersPaymentData(
    UserRequest req,
  );
}
