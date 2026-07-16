import 'package:padmavatiupdated/core/exporters/app_export.dart';

class AuthInterceptor extends Interceptor {
  @override
  void onRequest(
    RequestOptions options,
    RequestInterceptorHandler handler,
  ) async {
    final fullUrl = options.uri.toString();

    final token = await SecureStorageService.read('token') ?? '';
    options.headers.addAll({
      'Authorization': fullUrl.contains(ApiConstants.getSplash)
          ? 'demo'
          : token.isNotEmpty
          ? 'Bearer $token'
          : 'demo',
      'Accept': 'application/json',
    });
    super.onRequest(options, handler);
  }
}
