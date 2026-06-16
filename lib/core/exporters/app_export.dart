//System//
export 'dart:io';
export 'dart:async';
export 'dart:convert';
export 'package:flutter/material.dart';
export 'package:flutter/services.dart';
export 'package:flutter/gestures.dart';

//Theme//
export 'package:padmavatiupdated/core/theme/dark_theme.dart';
export 'package:padmavatiupdated/core/theme/light_theme.dart';
export 'package:padmavatiupdated/core/theme/app_colors.dart';
export 'package:padmavatiupdated/core/theme/text_styles.dart';

//Plugins//
export 'package:get/get.dart'
    hide Response, FormData, MultipartFile, HeaderValue;
export 'package:injectable/injectable.dart';
export 'package:ui_package/ui_package.dart'
    hide AppTheme, AppColors, ListTileStyle, AppTextStyles, AppMultiDropdown;
export 'package:google_fonts/google_fonts.dart';
export 'package:pinput/pinput.dart';
export 'package:sms_autofill/sms_autofill.dart' hide Orientation;
export 'package:hugeicons/hugeicons.dart';
export 'package:carousel_slider/carousel_slider.dart';
export 'package:dio/dio.dart';
export 'package:hugeicons/styles/stroke_rounded.dart';
export 'package:connectivity_plus/connectivity_plus.dart';
export 'package:package_info_plus/package_info_plus.dart';
export 'package:url_launcher/url_launcher.dart';
export 'package:flutter_screenutil/flutter_screenutil.dart';
export 'package:animated_toggle_switch/animated_toggle_switch.dart'
    hide AnimationType;
export 'package:image_picker/image_picker.dart';
export 'package:dotted_line/dotted_line.dart';
export 'package:freezed_annotation/freezed_annotation.dart';

//Common//
export 'package:padmavatiupdated/core/constants/app_constants.dart';
export 'package:padmavatiupdated/core/config/routes/app_routes.dart';
export 'package:padmavatiupdated/core/config/routes/app_pages.dart';
export 'package:padmavatiupdated/core/constants/app_assets.dart';
export 'package:padmavatiupdated/core/theme/app_theme.dart';
export 'package:padmavatiupdated/core/utils/logger.dart';
export 'package:padmavatiupdated/core/di/injection.dart';
export 'package:padmavatiupdated/core/component/dialogs.dart';
export 'package:padmavatiupdated/core/utils/common.dart';
export 'package:padmavatiupdated/core/network/interceptors/logger_interceptor.dart';
export 'package:padmavatiupdated/core/network/interceptors/retry_interceptors.dart';
export 'package:padmavatiupdated/core/network/interceptors/auth_interceptor.dart';
export 'package:padmavatiupdated/core/constants/api_constants.dart';
export 'package:padmavatiupdated/core/network/api_service.dart';
export 'package:padmavatiupdated/core/utils/documents_preparation.dart';
export 'package:padmavatiupdated/core/utils/check_update.dart';
export 'package:padmavatiupdated/core/constants/init_service.dart';
export 'package:padmavatiupdated/core/network/initial_bindings.dart';
export 'package:padmavatiupdated/features/student/history/widget/payment_tile.dart';
export 'package:padmavatiupdated/features/student/home/widget/start_mess_dialog.dart';

//Pages//
export 'package:padmavatiupdated/main.dart';
export 'package:padmavatiupdated/features/splash/view/splash_screen.dart';
export 'package:padmavatiupdated/features/student/auth/view/login_screen.dart';
export 'package:padmavatiupdated/features/student/auth/view/verify_otp_screen.dart';
export 'package:padmavatiupdated/features/student/auth/view/register_screen.dart';
export 'package:padmavatiupdated/features/student/navigation/view/navigation_screen.dart';
export 'package:padmavatiupdated/features/student/home/view/home_screen.dart';
export 'package:padmavatiupdated/features/student/coupons/view/coupons_screen.dart';
export 'package:padmavatiupdated/features/student/coupons/widget/coupon_details.dart';
export 'package:padmavatiupdated/features/student/coupons/widget/qr_screen.dart';
export 'package:padmavatiupdated/features/student/history/view/payment_history.dart';
export 'package:padmavatiupdated/features/student/history/widget/payment_details.dart';
export 'package:padmavatiupdated/features/student/history/widget/payment_receipt.dart';
export 'package:padmavatiupdated/features/student/request/view/request_screen.dart';
export 'package:padmavatiupdated/features/student/request/widget/add_request.dart';
export 'package:padmavatiupdated/features/student/profile/view/profile_screen.dart';
export 'package:padmavatiupdated/features/student/profile/widget/edit_profile.dart';
export 'package:padmavatiupdated/features/student/profile/widget/facility_screen.dart';
export 'package:padmavatiupdated/features/admin/admin_auth/view/admin_login.dart';
export 'package:padmavatiupdated/features/admin/admin_navigation/view/admin_navigation.dart';
export 'package:padmavatiupdated/features/admin/dashboard/view/admin_dashboard.dart';
export 'package:padmavatiupdated/features/admin/admin_request/view/admin_request_screen.dart';
export 'package:padmavatiupdated/features/admin/people/view/people_list.dart';
export 'package:padmavatiupdated/features/admin/admin_profile/view/admin_profile.dart';

//Controller//
export 'package:padmavatiupdated/features/splash/controller/splash_controller.dart';
export 'package:padmavatiupdated/features/student/auth/controller/login_controller.dart';
export 'package:padmavatiupdated/features/student/auth/controller/verify_otp_controller.dart';
export 'package:padmavatiupdated/features/student/auth/controller/register_controller.dart';
export 'package:padmavatiupdated/features/student/navigation/controller/navigation_controller.dart';
export 'package:padmavatiupdated/features/student/home/controller/home_controller.dart';
export 'package:padmavatiupdated/features/student/coupons/controller/coupon_controller.dart';
export 'package:padmavatiupdated/features/student/history/controller/history_controller.dart';
export 'package:padmavatiupdated/features/student/request/controller/request_controller.dart';
export 'package:padmavatiupdated/features/student/profile/controller/profile_controller.dart';
export 'package:padmavatiupdated/features/admin/admin_auth/controller/admin_login_controller.dart';
export 'package:padmavatiupdated/features/admin/dashboard/controller/dashboard_controller.dart';
export 'package:padmavatiupdated/features/admin/admin_request/controller/admin_req_controller.dart';
export 'package:padmavatiupdated/features/admin/people/controller/people_controller.dart';
export 'package:padmavatiupdated/features/admin/admin_profile/controller/admin_profile_controller.dart';

//Component//
export '../../../core/component/app_dropdown.dart';
export 'package:padmavatiupdated/core/component/app_icon_buttons.dart';
export 'package:padmavatiupdated/core/component/app_bottomsheet_layout.dart';
export 'package:padmavatiupdated/core/component/bottom_header.dart';
export 'package:padmavatiupdated/core/component/custom_appbar.dart';
export 'package:padmavatiupdated/core/component/custom_dropdown_normal.dart';
export 'package:padmavatiupdated/core/component/check_internet.dart';
export 'package:padmavatiupdated/core/component/app_multi_dropdown.dart';
export 'package:padmavatiupdated/core/component/gradient_appbar.dart';

//Repository//
export 'package:padmavatiupdated/domain/repository/auth_repository.dart';
export 'package:padmavatiupdated/domain/repository/home_repository.dart';

//Entity//
export 'package:padmavatiupdated/domain/entity/login_request.dart';
export 'package:padmavatiupdated/domain/entity/register_request.dart';
export 'package:padmavatiupdated/domain/entity/user_request.dart';
export 'package:padmavatiupdated/domain/entity/start_mess_request.dart';

//Repository Implementation//

//Use case//
export 'package:padmavatiupdated/domain/usecase/send_otp_usecase.dart';
export 'package:padmavatiupdated/domain/usecase/verify_otp_usecase.dart';
export 'package:padmavatiupdated/domain/usecase/get_branch_list_usecase.dart';
export 'package:padmavatiupdated/domain/usecase/get_degree_list_usecase.dart';
export 'package:padmavatiupdated/domain/usecase/register_student_usecase.dart';
export 'package:padmavatiupdated/domain/usecase/get_home_usecase.dart';
export 'package:padmavatiupdated/domain/usecase/get_packages_usecase.dart';
export 'package:padmavatiupdated/domain/usecase/start_mess_usecase.dart';

//Bindings//
export 'package:padmavatiupdated/features/student/auth/bindings/login_bindings.dart';
export 'package:padmavatiupdated/features/student/auth/bindings/otp_binding.dart';
export 'package:padmavatiupdated/features/student/auth/bindings/register_bindings.dart';
export 'package:padmavatiupdated/features/student/navigation/bindings/navigation_bindings.dart';
export 'package:padmavatiupdated/features/student/home/bindings/home_bindings.dart';
export 'package:padmavatiupdated/features/student/coupons/bindings/coupon_bindings.dart';
export 'package:padmavatiupdated/features/student/history/bindings/history_bindings.dart';
export 'package:padmavatiupdated/features/student/request/bindings/request_bindings.dart';
export 'package:padmavatiupdated/features/student/profile/bindings/profile_bindings.dart';
export 'package:padmavatiupdated/features/admin/admin_auth/bindings/admin_login_bindings.dart';
export 'package:padmavatiupdated/features/admin/admin_navigation/controller/admin_nav_controller.dart';
export 'package:padmavatiupdated/features/admin/admin_navigation/bindings/admin_nav_bindings.dart';
export 'package:padmavatiupdated/features/admin/dashboard/bindings/dashboard_bindings.dart';
export 'package:padmavatiupdated/features/admin/admin_request/bindings/admin_req_bindings.dart';
export 'package:padmavatiupdated/features/admin/people/bindings/people_bindings.dart';
export 'package:padmavatiupdated/features/admin/admin_profile/bindings/admin_profile_bindings.dart';

//Model//

export 'package:padmavatiupdated/data/models/base/app_config_model.dart';
export 'package:padmavatiupdated/data/models/base/common_model.dart';
export 'package:padmavatiupdated/data/models/auth/user_model.dart';
export '../../data/models/auth/login_response_model.dart';
export 'package:padmavatiupdated/data/models/auth/login_data_model.dart';
export 'package:padmavatiupdated/data/models/base/base_response_model.dart';
export 'package:padmavatiupdated/data/models/base/master_data_model.dart';
export 'package:padmavatiupdated/data/models/auth/register_response_model.dart';
export 'package:padmavatiupdated/data/models/home/home_response_model.dart';
export 'package:padmavatiupdated/data/models/home/package_model.dart';
export 'package:padmavatiupdated/data/models/home/payment_trans_model.dart';
