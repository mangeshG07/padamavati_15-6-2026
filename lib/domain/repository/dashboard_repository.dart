import 'package:padmavatiupdated/core/exporters/app_export.dart';

abstract class DashboardRepository {
  Future<Result<BaseResponseModel<DashboardModel>>> getDashboard(
    UserRequest request,
  );

  Future<Result<BaseResponseModel<QRResponseModel>>> scanQr(
    UserRequest request,
  );
}
