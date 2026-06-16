import 'package:flutter_dotenv/flutter_dotenv.dart';

/// API-related constants
///
/// Configuration is loaded from .env files in the `env/` directory.
/// Values can be overridden using --dart-define.
class ApiConstants {
  ApiConstants._();

  /// Base URL for the API
  ///
  /// Loaded from .env file (BASE_URL) or --dart-define
  /// Priority: --dart-define > .env file > default value
  static String get baseUrl {
    // Check --dart-define first
    const dartDefine = String.fromEnvironment('BASE_URL');
    if (dartDefine.isNotEmpty) return dartDefine;
    // Then check .env file
    return dotenv.env['BASE_URL'] ?? '';
  }

  /// Connection timeout duration in milliseconds
  static Duration get connectionTimeout {
    final timeoutMs = dotenv.env['API_TIMEOUT'];
    if (timeoutMs != null) {
      return Duration(milliseconds: int.tryParse(timeoutMs) ?? 30000);
    }
    return const Duration(seconds: 30);
  }

  /// Receive timeout duration
  static Duration get receiveTimeout => connectionTimeout;

  /// API endpoints
  static const String sendOTP = '/send_otp';
  // static const String sendOTP = '/send-otp';
  static const String verifyOTP = '/otp_verify';
  // static const String verifyOTP = '/verify-otp';
  static const String getBranchList = '/get_branch_list';
  static const String getDegreeList = '/get_degree_list';
  static const String register = '/user_register';
  static const String getHome = '/home';
  static const String getPackageList = '/get_ratepackage_list';
  static const String startMessRequest = '/mess_req';
}
