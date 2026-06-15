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
import 'package:padmavatiupdated/core/exporters/app_export.dart' as _i85;
import 'package:padmavatiupdated/core/network/api_service.dart' as _i400;
import 'package:padmavatiupdated/core/network/register_module.dart' as _i433;
import 'package:padmavatiupdated/data/repository_impl/auth_repository_impl.dart'
    as _i272;
import 'package:padmavatiupdated/data/repository_impl/home_repository_impl.dart'
    as _i877;
import 'package:padmavatiupdated/domain/usecase/get_branch_list_usecase.dart'
    as _i598;
import 'package:padmavatiupdated/domain/usecase/get_degree_list_usecase.dart'
    as _i922;
import 'package:padmavatiupdated/domain/usecase/get_home_usecase.dart'
    as _i1036;
import 'package:padmavatiupdated/domain/usecase/get_packages_usecase.dart'
    as _i398;
import 'package:padmavatiupdated/domain/usecase/register_student_usecase.dart'
    as _i886;
import 'package:padmavatiupdated/domain/usecase/send_otp_usecase.dart' as _i470;
import 'package:padmavatiupdated/domain/usecase/start_mess_usecase.dart'
    as _i765;
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
    gh.lazySingleton<_i85.Dio>(() => registerModule.dio);
    gh.lazySingleton<_i1022.SplashController>(() => _i1022.SplashController());
    gh.factory<_i400.ApiService>(() => _i400.ApiService(gh<_i85.Dio>()));
    gh.lazySingleton<_i85.HomeRepository>(
      () => _i877.HomeRepositoryImpl(gh<_i85.ApiService>()),
    );
    gh.lazySingleton<_i85.AuthRepository>(
      () => _i272.AuthRepositoryImpl(gh<_i85.ApiService>()),
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
    return this;
  }
}

class _$RegisterModule extends _i433.RegisterModule {}
