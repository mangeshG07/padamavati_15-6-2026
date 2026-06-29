import 'package:padmavatiupdated/core/exporters/app_export.dart';

abstract class ProfileRepository {
  Future<Result<BaseResponseModel<ProfileResponseModel>>> getProfile(
    UserRequest request,
  );

  Future<Result<BaseResponseModel>> updateProfile(UpdateProfileEntity request);

  Future<Result<BaseResponseModel<List<FacilityModel>>>> getFacility();

  Future<Result<BaseResponseModel<List<FacilityModel>>>> getLegalPage();
}
