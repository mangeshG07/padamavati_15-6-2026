import 'package:retrofit/retrofit.dart';
import '../exporters/app_export.dart';

part 'api_service.g.dart';

@RestApi()
@injectable
abstract class ApiService {
  @factoryMethod
  factory ApiService(Dio dio) = _ApiService;

  @POST(ApiConstants.sendOTP)
  Future<LoginResponseModel> sendOTP(
    @Part(name: "mobile_no") String mobileNumber,
  );

  @POST(ApiConstants.verifyOTP)
  Future<LoginResponseModel> verifyOTP(
    @Part(name: "mobile_no") String mobileNumber,
    @Part(name: "otp") String otp,
  );

  @POST(ApiConstants.getBranchList)
  Future<BaseResponseModel<List<MasterDataModel>>> getBranchList();

  @POST(ApiConstants.getDegreeList)
  Future<BaseResponseModel<List<MasterDataModel>>> getDegreeList();

  @POST(ApiConstants.getPackageList)
  Future<BaseResponseModel<List<PackageModel>>> getPackageList(
    @Part(name: "user_id") String userId,
  );

  @POST(ApiConstants.register)
  @MultiPart()
  Future<RegisterResponseModel> registerUser(
    @Part(name: "name") String name,
    @Part(name: "mobile_no") String mobileNumber,
    @Part(name: "gender") String gender,
    @Part(name: "dob") String dob,
    @Part(name: "curr_address") String currAddress,
    @Part(name: "per_address") String perAddress,
    @Part(name: "degree_id") String degreeId,
    @Part(name: "branch_id") String branchId,
    @Part(name: "mess_type") String messType, {
    @Part(name: 'profile_image') File? profilePicture,
  });

  @POST(ApiConstants.getHome)
  Future<BaseResponseModel<HomeResponseModel>> getHome(
    @Part(name: "user_id") String userId,
  );

  @POST(ApiConstants.startMessRequest)
  Future<BaseResponseModel> startMessReq(
    @Part(name: "user_id") String userId,
    @Part(name: "ratepackage_id") String packageId,
    @Part(name: "date") String date,
  );

  @POST(ApiConstants.paymentHistory)
  Future<BaseResponseModel<List<PaymentDetailsModel>>> paymentHistory(
    @Part(name: "user_id") String userId,
  );

  @POST(ApiConstants.paymentReceipt)
  Future<BaseResponseModel<PaymentData>> paymentReceipt(
    @Part(name: "user_id") String userId,
    @Part(name: "transaction_id") String transId,
  );

  @POST(ApiConstants.getCoupon)
  Future<BaseResponseModel<CouponResponseModel>> getCoupon(
    @Part(name: "user_id") String userId,
  );

  @POST(ApiConstants.leaveRequests)
  Future<BaseResponseModel<LeaveResponseModel>> leaveRequests(
    @Part(name: "user_id") String userId,
    @Part(name: "page_number") String pageNo,
  );

  @POST(ApiConstants.specialFoodItems)
  Future<BaseResponseModel<List<MasterDataModel>>> specialFoodItems();

  @POST(ApiConstants.specialFoodRequests)
  Future<BaseResponseModel<FoodResponseModel>> specialFoodRequests(
    @Part(name: "user_id") String userId,
    @Part(name: "page_number") String pageNo,
  );

  @POST(ApiConstants.addSpecialFoodReq)
  Future<BaseResponseModel> addSpecialFoodReq(
    @Part(name: "user_id") String userId,
    @Part(name: "specialfood_id") String foodId,
    @Part(name: "date") String date,
  );

  @POST(ApiConstants.addLeaveReq)
  Future<BaseResponseModel> addLeaveReq(
    @Part(name: "user_id") String userId,
    @Part(name: "from_date") String fromDate,
    @Part(name: "to_date") String toDate,
  );

  @POST(ApiConstants.getProfile)
  Future<BaseResponseModel<ProfileResponseModel>> getProfile(
    @Part(name: "user_id") String userId,
  );

  @POST(ApiConstants.updateProfile)
  Future<BaseResponseModel> updateProfile(
    @Part(name: "user_id") String userId,
    @Part(name: "degree_id") String degreeId,
    @Part(name: "curr_address") String address,
  );

  @POST(ApiConstants.getFacility)
  Future<BaseResponseModel<List<FacilityModel>>> getFacility();

  @POST(ApiConstants.getLegalPage)
  Future<BaseResponseModel<List<FacilityModel>>> getLegalPage();

  @POST(ApiConstants.adminLogin)
  Future<BaseResponseModel<UserModel>> adminLogin(
    @Part(name: "username") String username,
    @Part(name: "password") String password,
  );

  @POST(ApiConstants.dashboard)
  Future<BaseResponseModel<DashboardModel>> getDashboard(
    @Part(name: "user_id") String userId,
  );

  @POST(ApiConstants.adminFoodRequest)
  Future<BaseResponseModel<FoodResponseModel>> adminFoodRequest(
    @Part(name: "user_id") String userId,
    @Part(name: "page_number") String pageNo,
  );

  @POST(ApiConstants.branchUserList)
  Future<BaseResponseModel<PeopleResponseModel>> branchUserList(
    @Part(name: "user_id") String userId,
    @Part(name: "page_number") String pageNo,
    @Part(name: "search") String search,
  );

  @POST(ApiConstants.scanQr)
  Future<BaseResponseModel<QRResponseModel>> scanQr(
    @Part(name: "user_id") String userId,
    @Part(name: "qr_code") String qrCode,
  );

  @POST(ApiConstants.adminProfile)
  Future<BaseResponseModel<ProfileResponseModel>> adminProfile(
    @Part(name: "user_id") String userId,
  );

  @POST(ApiConstants.adminLeaveRequest)
  Future<BaseResponseModel<LeaveResponseModel>> adminLeaveRequest(
    @Part(name: "user_id") String userId,
    @Part(name: "page_number") String pageNo,
  );

  @POST(ApiConstants.scannedUserData)
  Future<BaseResponseModel<ScannedResponseModel>> scannedUserData(
    @Part(name: "user_id") String userId,
    @Part(name: "page_number") String pageNo,
    @Part(name: "mess_time") String messType,
  );

  @POST(ApiConstants.scannedUserDetailsData)
  Future<BaseResponseModel<UserDetailsModel>> scannedUserDetailsData(
    @Part(name: "user_id") String userId,
    @Part(name: "student_id") String studentId,
  );

  @POST(ApiConstants.usedQrData)
  Future<BaseResponseModel<UsedQRResponseModel>> usedQrData(
    @Part(name: "user_id") String userId,
    @Part(name: "page_number") String pageNo,
    @Part(name: "student_id") String studentId,
  );

  @POST(ApiConstants.deleteAccount)
  Future<BaseResponseModel> deleteAccount(@Part(name: "user_id") String userId);
}
