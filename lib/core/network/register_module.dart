import 'package:padmavatiupdated/core/exporters/app_export.dart';
import 'package:padmavatiupdated/core/network/dio_client.dart';

@module
abstract class RegisterModule {
  @lazySingleton
  Dio get dio => DioClient.create();

  // getIt.registerLazySingleton(() => RemoteConfigService());
}

// @module
// abstract class RegisterModule {
//   @lazySingleton
//   Dio get dio => Dio();
// }
