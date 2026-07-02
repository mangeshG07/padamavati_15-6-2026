import 'package:padmavatiupdated/core/exporters/app_export.dart';

@LazySingleton(as: AdminProfileRepository)
class AdminProfileRepositoryImpl implements AdminProfileRepository {
  final ApiService _apiService;
  AdminProfileRepositoryImpl(this._apiService);

  @override
  Future<Result<BaseResponseModel<ProfileResponseModel>>> adminProfile(
    UserRequest request,
  ) async {
    try {
      final res = await _apiService.adminProfile(request.userId);
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
