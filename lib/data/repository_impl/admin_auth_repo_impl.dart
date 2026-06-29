import 'package:padmavatiupdated/core/exporters/app_export.dart';

@LazySingleton(as: AdminAuthRepository)
class AdminAuthRepositoryImpl implements AdminAuthRepository {
  final ApiService _apiService;
  AdminAuthRepositoryImpl(this._apiService);

  @override
  Future<Result<BaseResponseModel<UserModel>>> adminLogin(
    AdminEntity request,
  ) async {
    try {
      final res = await _apiService.adminLogin(
        request.username,
        request.password,
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
