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
  static const String verifyOTP = '/otp_verify';
  static const String getBranchList = '/get_branch_list';
  static const String getDegreeList = '/get_degree_list';
  static const String register = '/user_register';
  static const String getHome = '/home';
  static const String getPackageList = '/get_ratepackage_list';
  static const String getPackageDetails = '/ratepackage_popup';
  static const String startMessRequest = '/mess_req';
  static const String paymentHistory = '/payment_history';
  static const String paymentReceipt = '/payment_receipt';
  static const String getCoupon = '/coupon_code';
  static const String leaveRequests = '/leave_req_list';
  static const String specialFoodItems = '/get_special_food_list';
  static const String specialFoodRequests = '/special_food_req_list';
  static const String addSpecialFoodReq = '/special_food_req';
  static const String addLeaveReq = '/leave_req';
  static const String getProfile = '/get_user_profile';
  static const String updateProfile = '/update_user_profile';
  static const String getFacility = '/get_facility_list';
  static const String getLegalPage = '/get_legalpages_list';
  static const String adminLogin = '/admin_login';
  static const String dashboard = '/admin_dashboard';
  static const String adminFoodRequest = '/todays_specialfood_request';
  static const String branchUserList = '/branch_user_list';
  static const String scanQr = '/scan_qr';
  static const String adminProfile = '/admin_profile';
  static const String adminLeaveRequest = '/todays_leave_request';
  static const String scannedUserData = '/scanned_users_data';
  static const String scannedUserDetailsData = '/scanned_user_details';
  static const String usedQrData = '/used_qr_list';

  ///////////////Pending//////////////////////
}
