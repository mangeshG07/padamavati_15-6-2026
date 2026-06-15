import 'package:padmavatiupdated/core/exporters/app_export.dart';

abstract class AuthRepository {
  Future<LoginResponseModel> login(LoginRequest loginRequest);

  Future<LoginResponseModel> verifyOTP(LoginRequest loginRequest);

  Future<RegisterResponseModel> registerStudent(
    RegisterRequest registerRequest,
  );

  Future<BaseResponseModel<List<MasterDataModel>>> getBranchList();

  Future<BaseResponseModel<List<MasterDataModel>>> getDegreeList();
}
