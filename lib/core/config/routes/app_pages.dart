import '../../exporters/app_export.dart';

class AppPages {
  static final routes = [
    GetPage(name: Routes.splash, page: () => SplashPage()),
    GetPage(
      name: Routes.login,
      page: () => LoginScreen(),
      binding: LoginBinding(),
    ),
    GetPage(
      name: Routes.verifyOTP,
      page: () => VerifyOTP(),
      bindings: [OtpBinding(), NavigationBindings()],
    ),
    GetPage(
      name: Routes.registerScreen,
      page: () => RegisterScreen(),
      bindings: [RegisterBindings()],
    ),
    GetPage(
      name: Routes.mainScreen,
      page: () => NavigationScreen(),
      bindings: [
        NavigationBindings(),
        HomeBindings(),
        CouponBindings(),
        HistoryBindings(),
        RequestBindings(),
        ProfileBindings(),
      ],
    ),
    GetPage(name: Routes.couponDetails, page: () => CouponDetails()),
    GetPage(name: Routes.qrDetails, page: () => QRScreen()),
    GetPage(
      name: Routes.paymentDetails,
      page: () => PaymentDetailsScreen(),
      binding: HistoryBindings(),
    ),
    GetPage(
      name: Routes.paymentReceipt,
      page: () => PaymentReceipt(),
      binding: HistoryBindings(),
    ),
    GetPage(name: Routes.editProfile, page: () => EditProfile()),
    GetPage(name: Routes.facilityScreen, page: () => FacilityScreen()),

    ///admin screens///
    GetPage(
      name: Routes.adminLogin,
      page: () => AdminLogin(),
      binding: AdminLoginBinding(),
    ),
    GetPage(
      name: Routes.adminMainScreen,
      page: () => AdminNavigation(),
      bindings: [
        AdminNavigationBindings(),
        DashboardBindings(),
        AdminReqBindings(),
        PeopleBindings(),
        AdminProfileBindings(),
        ProfileBindings(),
      ],
    ),
    GetPage(name: Routes.qrScannerScreen, page: () => QRScannerPage()),
    GetPage(
      name: Routes.policyData,
      page: () => PolicyInfo(),
      binding: ProfileBindings(),
    ),
    GetPage(
      name: Routes.helpAndSupport,
      page: () => HelpAndSupport(),
      binding: ProfileBindings(),
    ),
    GetPage(
      name: Routes.scannedUsers,
      page: () => ScannedUsersList(),
      binding: PeopleBindings(),
    ),
    GetPage(name: Routes.requestedUsers, page: () => RequestUsers()),
    GetPage(
      name: Routes.scannedUsersDetails,
      page: () => UserDetailsPage(),
      binding: PeopleBindings(),
    ),
  ];
}
