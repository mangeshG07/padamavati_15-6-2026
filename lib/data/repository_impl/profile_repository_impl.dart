import 'package:padmavatiupdated/core/exporters/app_export.dart';

@LazySingleton(as: ProfileRepository)
class ProfileRepositoryImpl implements ProfileRepository {
  final ApiService _apiService;
  ProfileRepositoryImpl(this._apiService);

  @override
  Future<Result<BaseResponseModel<ProfileResponseModel>>> getProfile(
    UserRequest request,
  ) async {
    try {
      final res = await _apiService.getProfile(request.userId);
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
  Future<Result<BaseResponseModel>> updateProfile(
    UpdateProfileEntity request,
  ) async {
    try {
      final res = await _apiService.updateProfile(
        request.userId,
        request.degreeId,
        request.currentAddress,
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

  @override
  Future<Result<BaseResponseModel<List<FacilityModel>>>> getFacility() async {
    try {
      final res = await _apiService.getFacility();
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
  Future<Result<BaseResponseModel<List<FacilityModel>>>> getLegalPage() async {
    try {
      final res = await _apiService.getLegalPage();
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
