// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format width=80

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;
import 'package:padmavatiupdated/core/component/time_service.dart' as _i766;
import 'package:padmavatiupdated/core/config/remote_config.dart' as _i602;
import 'package:padmavatiupdated/core/exporters/app_export.dart' as _i85;
import 'package:padmavatiupdated/core/network/api_service.dart' as _i400;
import 'package:padmavatiupdated/core/network/register_module.dart' as _i433;
import 'package:padmavatiupdated/data/repository_impl/admin_auth_repo_impl.dart'
    as _i403;
import 'package:padmavatiupdated/data/repository_impl/admin_profile_repo_impl.dart'
    as _i833;
import 'package:padmavatiupdated/data/repository_impl/admin_req_repo_impl.dart'
    as _i237;
import 'package:padmavatiupdated/data/repository_impl/auth_repository_impl.dart'
    as _i272;
import 'package:padmavatiupdated/data/repository_impl/coupon_repository_impl.dart'
    as _i791;
import 'package:padmavatiupdated/data/repository_impl/dashboard_repo_impl.dart'
    as _i886;
import 'package:padmavatiupdated/data/repository_impl/home_repository_impl.dart'
    as _i877;
import 'package:padmavatiupdated/data/repository_impl/pay_history_repository_impl.dart'
    as _i675;
import 'package:padmavatiupdated/data/repository_impl/people_repo_impl.dart'
    as _i28;
import 'package:padmavatiupdated/data/repository_impl/profile_repository_impl.dart'
    as _i24;
import 'package:padmavatiupdated/data/repository_impl/request_repository_impl.dart'
    as _i482;
import 'package:padmavatiupdated/domain/usecase/add_food_request_usecase.dart'
    as _i601;
import 'package:padmavatiupdated/domain/usecase/add_leave_usecase.dart'
    as _i667;
import 'package:padmavatiupdated/domain/usecase/admin_food_requests.dart'
    as _i752;
import 'package:padmavatiupdated/domain/usecase/admin_leave_usecase.dart'
    as _i876;
import 'package:padmavatiupdated/domain/usecase/admin_login.dart' as _i647;
import 'package:padmavatiupdated/domain/usecase/admin_profile_usecase.dart'
    as _i569;
import 'package:padmavatiupdated/domain/usecase/delete_account_usecase.dart'
    as _i604;
import 'package:padmavatiupdated/domain/usecase/food_items_usecase.dart'
    as _i376;
import 'package:padmavatiupdated/domain/usecase/food_req_usecase.dart' as _i348;
import 'package:padmavatiupdated/domain/usecase/get_branch_list_usecase.dart'
    as _i598;
import 'package:padmavatiupdated/domain/usecase/get_branch_users_usecase.dart'
    as _i237;
import 'package:padmavatiupdated/domain/usecase/get_coupon_usecase.dart'
    as _i924;
import 'package:padmavatiupdated/domain/usecase/get_dashboard_usecase.dart'
    as _i1027;
import 'package:padmavatiupdated/domain/usecase/get_degree_list_usecase.dart'
    as _i922;
import 'package:padmavatiupdated/domain/usecase/get_facility_usecase.dart'
    as _i538;
import 'package:padmavatiupdated/domain/usecase/get_home_usecase.dart'
    as _i1036;
import 'package:padmavatiupdated/domain/usecase/get_leave_requests.dart'
    as _i86;
import 'package:padmavatiupdated/domain/usecase/get_legal_page_usecase.dart'
    as _i578;
import 'package:padmavatiupdated/domain/usecase/get_packages_usecase.dart'
    as _i398;
import 'package:padmavatiupdated/domain/usecase/get_payment_receipt.dart'
    as _i911;
import 'package:padmavatiupdated/domain/usecase/get_profile_usecase.dart'
    as _i1003;
import 'package:padmavatiupdated/domain/usecase/pay_history_usecase.dart'
    as _i861;
import 'package:padmavatiupdated/domain/usecase/register_student_usecase.dart'
    as _i886;
import 'package:padmavatiupdated/domain/usecase/scan_qr_usecase.dart' as _i289;
import 'package:padmavatiupdated/domain/usecase/scanned_user_details_usecase.dart'
    as _i957;
import 'package:padmavatiupdated/domain/usecase/scanned_user_usecase.dart'
    as _i586;
import 'package:padmavatiupdated/domain/usecase/send_otp_usecase.dart' as _i470;
import 'package:padmavatiupdated/domain/usecase/start_mess_usecase.dart'
    as _i765;
import 'package:padmavatiupdated/domain/usecase/update_profile_usecase.dart'
    as _i370;
import 'package:padmavatiupdated/domain/usecase/used_qr_list.dart' as _i446;
import 'package:padmavatiupdated/domain/usecase/verify_otp_usecase.dart'
    as _i1039;
import 'package:padmavatiupdated/features/splash/controller/splash_controller.dart'
    as _i1022;

extension GetItInjectableX on _i174.GetIt {
  // initializes the registration of main-scope dependencies inside of GetIt
  _i174.GetIt init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i526.GetItHelper(this, environment, environmentFilter);
    final registerModule = _$RegisterModule();
    gh.lazySingleton<_i766.TimerService>(() => _i766.TimerService());
    gh.lazySingleton<_i602.RemoteConfigService>(
      () => _i602.RemoteConfigService(),
    );
    gh.lazySingleton<_i85.Dio>(() => registerModule.dio);
    gh.lazySingleton<_i1022.SplashController>(
      () => _i1022.SplashController(gh<_i85.RemoteConfigService>()),
    );
    gh.factory<_i400.ApiService>(() => _i400.ApiService(gh<_i85.Dio>()));
    gh.lazySingleton<_i85.AdminAuthRepository>(
      () => _i403.AdminAuthRepositoryImpl(gh<_i85.ApiService>()),
    );
    gh.lazySingleton<_i647.AdminLoginUsecase>(
      () => _i647.AdminLoginUsecase(gh<_i85.AdminAuthRepository>()),
    );
    gh.lazySingleton<_i85.PeopleRepository>(
      () => _i28.PeopleRepositoryImpl(gh<_i85.ApiService>()),
    );
    gh.lazySingleton<_i237.GetBranchUsersUsecase>(
      () => _i237.GetBranchUsersUsecase(gh<_i85.PeopleRepository>()),
    );
    gh.lazySingleton<_i85.HomeRepository>(
      () => _i877.HomeRepositoryImpl(gh<_i85.ApiService>()),
    );
    gh.lazySingleton<_i85.AuthRepository>(
      () => _i272.AuthRepositoryImpl(gh<_i85.ApiService>()),
    );
    gh.lazySingleton<_i85.RequestRepository>(
      () => _i482.RequestRepositoryImpl(gh<_i85.ApiService>()),
    );
    gh.lazySingleton<_i85.PaymentHistoryRepository>(
      () => _i675.PaymentHistoryRepoImpl(gh<_i85.ApiService>()),
    );
    gh.lazySingleton<_i85.DashboardRepository>(
      () => _i886.DashboardRepositoryImpl(gh<_i85.ApiService>()),
    );
    gh.lazySingleton<_i85.ProfileRepository>(
      () => _i24.ProfileRepositoryImpl(gh<_i85.ApiService>()),
    );
    gh.lazySingleton<_i85.AdminRequestRepository>(
      () => _i237.AdminRequestRepositoryImpl(gh<_i85.ApiService>()),
    );
    gh.lazySingleton<_i85.AdminProfileRepository>(
      () => _i833.AdminProfileRepositoryImpl(gh<_i85.ApiService>()),
    );
    gh.lazySingleton<_i85.CouponRepository>(
      () => _i791.CouponRepositoryImpl(gh<_i85.ApiService>()),
    );
    gh.lazySingleton<_i601.AddFoodRequestUsecase>(
      () => _i601.AddFoodRequestUsecase(gh<_i85.RequestRepository>()),
    );
    gh.lazySingleton<_i667.AddLeaveRequestUsecase>(
      () => _i667.AddLeaveRequestUsecase(gh<_i85.RequestRepository>()),
    );
    gh.lazySingleton<_i376.FoodItemsUsecase>(
      () => _i376.FoodItemsUsecase(gh<_i85.RequestRepository>()),
    );
    gh.lazySingleton<_i348.GetFoodRequests>(
      () => _i348.GetFoodRequests(gh<_i85.RequestRepository>()),
    );
    gh.lazySingleton<_i86.GetLeaveRequests>(
      () => _i86.GetLeaveRequests(gh<_i85.RequestRepository>()),
    );
    gh.lazySingleton<_i569.AdminProfileUsecase>(
      () => _i569.AdminProfileUsecase(gh<_i85.AdminProfileRepository>()),
    );
    gh.lazySingleton<_i604.DeleteAccountUsecase>(
      () => _i604.DeleteAccountUsecase(gh<_i85.ProfileRepository>()),
    );
    gh.lazySingleton<_i538.GetFacilityUsecase>(
      () => _i538.GetFacilityUsecase(gh<_i85.ProfileRepository>()),
    );
    gh.lazySingleton<_i578.GetLegalPageUsecase>(
      () => _i578.GetLegalPageUsecase(gh<_i85.ProfileRepository>()),
    );
    gh.lazySingleton<_i1003.ProfileUsecase>(
      () => _i1003.ProfileUsecase(gh<_i85.ProfileRepository>()),
    );
    gh.lazySingleton<_i370.UpdateProfileUsecase>(
      () => _i370.UpdateProfileUsecase(gh<_i85.ProfileRepository>()),
    );
    gh.lazySingleton<_i1036.GetHomeUsecase>(
      () => _i1036.GetHomeUsecase(gh<_i85.HomeRepository>()),
    );
    gh.lazySingleton<_i398.GetPackagesUsecase>(
      () => _i398.GetPackagesUsecase(gh<_i85.HomeRepository>()),
    );
    gh.lazySingleton<_i765.StartMessUsecase>(
      () => _i765.StartMessUsecase(gh<_i85.HomeRepository>()),
    );
    gh.lazySingleton<_i1027.GetDashboardUsecase>(
      () => _i1027.GetDashboardUsecase(gh<_i85.DashboardRepository>()),
    );
    gh.lazySingleton<_i289.ScanQRUsecase>(
      () => _i289.ScanQRUsecase(gh<_i85.DashboardRepository>()),
    );
    gh.lazySingleton<_i957.ScannedUserDetailsUsecase>(
      () => _i957.ScannedUserDetailsUsecase(gh<_i85.DashboardRepository>()),
    );
    gh.lazySingleton<_i586.ScannedUserUsecase>(
      () => _i586.ScannedUserUsecase(gh<_i85.DashboardRepository>()),
    );
    gh.lazySingleton<_i446.UsedQrListUsecase>(
      () => _i446.UsedQrListUsecase(gh<_i85.DashboardRepository>()),
    );
    gh.lazySingleton<_i1039.VerifyOtpUsecase>(
      () => _i1039.VerifyOtpUsecase(gh<_i85.AuthRepository>()),
    );
    gh.lazySingleton<_i598.GetBranchListUsecase>(
      () => _i598.GetBranchListUsecase(gh<_i85.AuthRepository>()),
    );
    gh.lazySingleton<_i922.GetDegreeListUsecase>(
      () => _i922.GetDegreeListUsecase(gh<_i85.AuthRepository>()),
    );
    gh.lazySingleton<_i470.SendOtpUsecase>(
      () => _i470.SendOtpUsecase(gh<_i85.AuthRepository>()),
    );
    gh.lazySingleton<_i886.RegisterUsecase>(
      () => _i886.RegisterUsecase(gh<_i85.AuthRepository>()),
    );
    gh.lazySingleton<_i911.GetPaymentReceiptUsecase>(
      () => _i911.GetPaymentReceiptUsecase(gh<_i85.PaymentHistoryRepository>()),
    );
    gh.lazySingleton<_i861.PayHistoryUsecase>(
      () => _i861.PayHistoryUsecase(gh<_i85.PaymentHistoryRepository>()),
    );
    gh.lazySingleton<_i752.GetAdminFoodRequests>(
      () => _i752.GetAdminFoodRequests(gh<_i85.AdminRequestRepository>()),
    );
    gh.lazySingleton<_i876.GetAdminLeaveRequests>(
      () => _i876.GetAdminLeaveRequests(gh<_i85.AdminRequestRepository>()),
    );
    gh.lazySingleton<_i924.GetCouponUsecase>(
      () => _i924.GetCouponUsecase(gh<_i85.CouponRepository>()),
    );
    return this;
  }
}

class _$RegisterModule extends _i433.RegisterModule {}
