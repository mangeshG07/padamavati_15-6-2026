import '../../core/exporters/app_export.dart';

@LazySingleton(as: AuthRepository)
class AuthRepositoryImpl extends AuthRepository {
  final ApiService _apiService;

  AuthRepositoryImpl(this._apiService);

  @override
  Future<LoginResponseModel> login(LoginRequest loginRequest) async {
    return await _apiService.sendOTP(loginRequest.phone);
  }

  @override
  Future<LoginResponseModel> verifyOTP(LoginRequest request) async {
    return await _apiService.verifyOTP(request.phone, request.otp);
  }

  @override
  Future<BaseResponseModel<List<MasterDataModel>>> getBranchList() async {
    final res = await _apiService.getBranchList();
    return res;
  }

  @override
  Future<BaseResponseModel<List<MasterDataModel>>> getDegreeList() async {
    final res = await _apiService.getDegreeList();
    return res;
  }

  @override
  Future<RegisterResponseModel> registerStudent(RegisterRequest request) async {
    return await _apiService.registerUser(
      request.name,
      request.mobileNo,
      request.gender,
      request.birthdate,
      request.currentAddress,
      request.permanentAddress,
      request.degreeId,
      request.branchId,
      request.messType,
      request.messTime,
      profilePicture: request.profileImage,
    );
  }
}
