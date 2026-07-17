import '../../exporters/app_export.dart';

class RetryInterceptor extends Interceptor {
  final Dio dio;

  RetryInterceptor(this.dio);

  @override
  void onError(DioException err, ErrorInterceptorHandler handler) async {
    int retryCount = err.requestOptions.extra['retryCount'] ?? 0;
    final statusCode = err.response?.statusCode;

    /// 🔁 MAX 2 RETRIES
    if (retryCount >= 2) {
      _showError(_getMessage(err));
      return handler.next(err);
    }

    /// ================================
    /// 🔥 HANDLE 429 (RATE LIMIT)
    /// ================================
    if (statusCode == 429) {
      err.requestOptions.extra['retryCount'] = retryCount + 1;

      /// ⏳ Exponential Backoff
      final delay = Duration(seconds: 2 * (retryCount + 1));
      await Future.delayed(delay);

      try {
        final response = await dio.fetch(err.requestOptions);
        return handler.resolve(response);
      } catch (_) {
        return handler.next(err);
      }
    }

    /// ================================
    /// 🌐 NETWORK RETRY
    /// ================================
    if (err.type == DioExceptionType.connectionError ||
        err.type == DioExceptionType.receiveTimeout) {
      err.requestOptions.extra['retryCount'] = retryCount + 1;

      final delay = Duration(seconds: 1 * (retryCount + 1));
      await Future.delayed(delay);

      try {
        final response = await dio.fetch(err.requestOptions);
        return handler.resolve(response);
      } catch (_) {
        return handler.next(err);
      }
    }

    /// ❌ FINAL ERROR
    _showError(_getMessage(err));
    return handler.next(err);
  }

  /// 🎯 Error Message Handler
  String _getMessage(DioException err) {
    switch (err.type) {
      case DioExceptionType.connectionTimeout:
        return "Connection timeout. Please check internet.";

      case DioExceptionType.sendTimeout:
        return "Request timeout.";

      case DioExceptionType.receiveTimeout:
        return "Server is slow.";

      case DioExceptionType.badResponse:
        return _handleStatusCode(err.response?.statusCode);

      case DioExceptionType.cancel:
        return "Request cancelled.";

      case DioExceptionType.connectionError:
        return "No internet connection.";

      case DioExceptionType.unknown:
        return "Unexpected error occurred.";

      case DioExceptionType.badCertificate:
        return "Security error.";
    }
  }

  String _handleStatusCode(int? statusCode) {
    switch (statusCode) {
      case 400:
        return "Bad request.";
      case 401:
        return "Session expired.";
      case 403:
        return "Access denied.";
      case 404:
        return "Not found.";
      case 429:
        return "Too many requests. Please wait.";
      case 500:
        return "Server error.";
      default:
        return "Something went wrong.";
    }
  }

  void _showError(String message) {
    Get.snackbar(
      "Error",
      message,
      snackPosition: SnackPosition.BOTTOM,
      duration: const Duration(seconds: 3),
    );
  }
}

// class RetryInterceptor extends Interceptor {
//   final Dio dio;
//
//   RetryInterceptor(this.dio);
//
//   @override
//   void onError(DioException err, ErrorInterceptorHandler handler) async {
//     String message = "Something went wrong. Please try again.";
//     if (err.response?.statusCode == 429) {
//       _showError("Too many requests. Please wait a moment.");
//       return handler.next(err);
//     }
//
//     int retryCount = err.requestOptions.extra['retryCount'] ?? 0;
//
//     /// 🚫 Max retry limit
//     if (retryCount >= 2) {
//       return handler.next(err);
//     }
//
//     switch (err.type) {
//       case DioExceptionType.connectionTimeout:
//         message = "Connection timeout. Please check your internet.";
//         break;
//
//       case DioExceptionType.sendTimeout:
//         message = "Request timeout. Please try again.";
//         break;
//
//       case DioExceptionType.receiveTimeout:
//         message = "Server is taking too long to respond.";
//         break;
//
//       case DioExceptionType.badResponse:
//         message = _handleStatusCode(err.response?.statusCode);
//         break;
//
//       case DioExceptionType.cancel:
//         message = "Request was cancelled.";
//         break;
//
//       case DioExceptionType.connectionError:
//         message = "No internet connection. Please check your network.";
//         break;
//
//       case DioExceptionType.unknown:
//         message = "Unexpected error occurred.";
//         break;
//       case DioExceptionType.badCertificate:
//         message = "Something went wrong. Please try again.";
//         break;
//     }
//
//     /// Retry only for network issues
//     if (err.type == DioExceptionType.connectionError ||
//         err.type == DioExceptionType.receiveTimeout) {
//       err.requestOptions.extra['retryCount'] = retryCount + 1;
//
//       await Future.delayed(const Duration(seconds: 1));
//
//       try {
//         final response = await dio.fetch(err.requestOptions);
//         return handler.resolve(response);
//       } catch (e) {
//         return handler.next(err);
//       }
//     }
//     _showError(message);
//     return handler.next(err);
//   }
//
//   String _handleStatusCode(int? statusCode) {
//     switch (statusCode) {
//       case 400:
//         return "Bad request. Please try again.";
//       case 401:
//         return "Session expired. Please auth again.";
//       case 403:
//         return "You don’t have permission.";
//       case 404:
//         return "Requested resource not found.";
//       case 429:
//         return "Too many requests.";
//       case 500:
//         return "Server error. Please try later.";
//       default:
//         return "Something went wrong. Try again.";
//     }
//   }
//
//   void _showError(String message) {
//     Get.snackbar(
//       "Error",
//       message,
//       snackPosition: SnackPosition.BOTTOM,
//       duration: const Duration(seconds: 3),
//     );
//   }
// }
