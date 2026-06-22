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
  Future<BaseResponseModel<List<PackageModel>>> getPackageList();

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
    @Part(name: "mess_type") String messType,
    @Part(name: "mess_time") String messTime, {
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
}
