import 'package:padmavatiupdated/core/exporters/app_export.dart';

// BASE_URL=http://192.168.29.126/padmavatimess/api/v1
// https://beta.madhyasthi.com/api/v1/

class DioClient {
  static Dio create() {
    final dio = Dio(
      BaseOptions(
        // contentType: 'multipart/form-data',
        baseUrl: ApiConstants.baseUrl,
        receiveDataWhenStatusError: true,
        connectTimeout: ApiConstants.connectionTimeout,
        receiveTimeout: ApiConstants.receiveTimeout,
        validateStatus: (status) {
          return status != null && status < 500;
        },
      ),
    );

    /// 🔥 Order matters
    dio.interceptors.addAll([
      AuthInterceptor(), // 1. Add token
      RetryInterceptor(dio), // 2. Retry failed requests
      LoggerInterceptor(), // 3. Log everything
    ]);

    return dio;
  }
}
