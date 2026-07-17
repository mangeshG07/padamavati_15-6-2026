// core/network/interceptors/logger_interceptor.dart
// import 'dart:developer';
import 'package:padmavatiupdated/core/exporters/app_export.dart';

class LoggerInterceptor extends Interceptor {
  @override
  void onRequest(options, handler) {
    // log("➡️ REQUEST: ${options.method} ${options.uri}");
    // log("Headers: ${options.headers}");
    // log("Body: ${options.data}");
    handler.next(options);
  }

  @override
  void onResponse(response, handler) {
    // log("✅ RESPONSE: ${response.statusCode} ${response.requestOptions.uri}");
    // log("Data: ${response.data}");
    final isLoggedOut = response.data['user_login'] == false;
    final requestPath = response.requestOptions.path;
    final isAuthOrLegal =
        requestPath.contains(ApiConstants.sendOTP) ||
        requestPath.contains(ApiConstants.verifyOTP) ||
        requestPath.contains(ApiConstants.register) ||
        requestPath.contains(ApiConstants.getSplash);
    if (!isAuthOrLegal) {
      if (isLoggedOut) {
        CustomSnackbar.show(
          message: "You have logged in on another device. Please auth again.",
          context: Get.context!,
          type: SnackbarType.error,
        );

        Future.microtask(() async {
          await SecureStorageService.clear();
          await LocalStorage.clear();

          Get.offAllNamed(Routes.login);
          return;
        });
      }
    }

    handler.next(response);
  }

  @override
  void onError(err, handler) {
    // log("❌ ERROR: ${err.message}");
    // log("StatusCode: ${err.response?.statusCode}");
    handler.next(err);
  }
}
