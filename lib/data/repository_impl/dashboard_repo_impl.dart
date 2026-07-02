import 'package:padmavatiupdated/core/exporters/app_export.dart';

@LazySingleton(as: DashboardRepository)
class DashboardRepositoryImpl implements DashboardRepository {
  final ApiService _apiService;
  DashboardRepositoryImpl(this._apiService);

  @override
  Future<Result<BaseResponseModel<DashboardModel>>> getDashboard(
    UserRequest request,
  ) async {
    try {
      final res = await _apiService.getDashboard(request.userId);

      if (res.common.status == true) {
        return Success(res);
      } else {
        return Failure(res.common.message);
      }
    } catch (error) {
      return Failure('Something went wrong');
    }
  }

  @override
  Future<Result<BaseResponseModel<QRResponseModel>>> scanQr(
    UserRequest request,
  ) async {
    try {
      final res = await _apiService.scanQr(request.userId, request.type);
      if (res.common.status == true) {
        return Success(res);
      } else {
        return Failure(res.common.message);
      }
    } catch (error) {
      return Failure('Something went wrong');
    }
  }

  @override
  Future<Result<BaseResponseModel<ScannedResponseModel>>> scannedUserData(
    UserRequest request,
  ) async {
    try {
      final res = await _apiService.scannedUserData(
        request.userId,
        request.pageNo,
        request.type,
      );
      if (res.common.status == true) {
        return Success(res);
      } else {
        return Failure(res.common.message);
      }
    } catch (error) {
      return Failure('Something went wrong');
    }
  }

  @override
  Future<Result<BaseResponseModel<UserDetailsModel>>> scannedUserDetailsData(
    UserRequest req,
  ) async {
    try {
      final res = await _apiService.scannedUserDetailsData(
        req.userId,
        req.type,
      );
      if (res.common.status == true) {
        return Success(res);
      } else {
        return Failure(res.common.message);
      }
    } catch (error) {
      return Failure('Something went wrong');
    }
  }

  @override
  Future<Result<BaseResponseModel<UsedQRResponseModel>>> usedQrData(
    UserRequest req,
  ) async {
    try {
      final res = await _apiService.usedQrData(
        req.userId,
        req.pageNo,
        req.type,
      );
      if (res.common.status == true) {
        return Success(res);
      } else {
        return Failure(res.common.message);
      }
    } catch (error) {
      return Failure('Something went wrong');
    }
  }
}
