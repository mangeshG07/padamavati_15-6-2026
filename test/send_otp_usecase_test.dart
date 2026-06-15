import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:padmavatiupdated/core/exporters/app_export.dart' hide test;

class MockSendOtpUsecase extends Mock implements SendOtpUsecase {}

class FakeLoginRequest extends Fake implements LoginRequest {}

void main() {
  late MockSendOtpUsecase mockUsecase;

  setUpAll(() {
    registerFallbackValue(FakeLoginRequest());
  });

  setUp(() {
    mockUsecase = MockSendOtpUsecase();
  });

  testWidgets("Send OTP Test", (tester) async {
    when(() => mockUsecase(any())).thenAnswer(
      (_) async => LoginResponseModel(
        common: CommonModel(status: true, message: "OTP Sent"),
      ),
    );

    GetXTestHelper.inject(LoginController(mockUsecase));

    await tester.pumpWidget(TestWrapper.wrap(LoginScreen()));

    await WidgetTesterHelper.enterText(
      tester,
      TestKeys.mobileField,
      "9876543210",
    );

    await WidgetTesterHelper.tap(tester, TestKeys.sendOtpButton);

    expect(find.text("OTP Sent"), findsOneWidget);
  });
}

// ///////////////////////////////WIDGET TESTING//////////////////////////////
//
// class MockSendOtpUsecase extends Mock implements SendOtpUsecase {}
//
// class FakeLoginRequest extends Fake implements LoginRequest {}
//
// void main() {
//   late MockSendOtpUsecase mockUsecase;
//
//   setUpAll(() {
//     registerFallbackValue(FakeLoginRequest());
//   });
//
//   setUp(() {
//     mockUsecase = MockSendOtpUsecase();
//   });
//
//   testWidgets("🟣 Send OTP flow (GetX)", (tester) async {
//     // 👉 Mock API response
//     when(() => mockUsecase(any())).thenAnswer(
//       (_) async => LoginResponseModel(
//         common: CommonModel(status: true, message: "OTP Sent"),
//         android: null,
//         ios: null,
//         userLogin: true,
//       ),
//     );
//
//     // 👉 Inject controller with mock
//     Get.put(LoginController(mockUsecase));
//
//     await tester.pumpWidget(
//       ScreenUtilInit(
//         designSize: const Size(375, 812),
//         builder: (context, child) {
//           return GetMaterialApp(home: LoginScreen());
//         },
//       ),
//     );
//
//     // 👉 Enter mobile number
//     await tester.enterText(find.byKey(const Key("mobileField")), "9876543210");
//
//     // 👉 Tap button
//     await tester.tap(find.byKey(const Key("sendOtpButton")));
//
//     // 👉 Wait for async + UI rebuild
//     await tester.pumpAndSettle();
//
//     // 👉 Verify result
//     expect(find.text("OTP Sent"), findsOneWidget);
//   });
// }

////////////////////////////////////MODEL TESTING/////////////////////////////////

// void main() {
//   test('🔵 Model parsing test', () {
//     final json = {
//       "common": {"status": true, "message": "Success"},
//       "android": {"version": "1.0.0", "force_update": false},
//       "ios": {"version": "1.0", "force_update": false},
//       "user_login": true,
//     };
//
//     final model = LoginResponseModel.fromJson(Map<String, dynamic>.from(json));
//
//     expect(model.common?.status, true);
//     expect(model.userLogin, true);
//   });
// }

////////////////////////////////////////UNIT TESTING////////////////////////////////

// void main() {
//   late ApiService apiService;
//   late AuthRepository repository;
//
//   setUp(() {
//     final dio = Dio(
//       BaseOptions(baseUrl: "http://192.168.29.139:5000/api/user/"),
//     );
//
//     apiService = ApiService(dio);
//     repository = AuthRepositoryImpl(apiService);
//   });
//
//   test('REAL API - Send OTP', () async {
//     final result = await repository.login(LoginRequest("8888888888"));
//
//     expect(result.common.status, true);
//   });
//
//   test('REAL API - Verify OTP', () async {
//     final result = await repository.verifyOTP(
//       LoginRequest("8888888888", otp: "123456"),
//     );
//     print("STATUS: ${result.common.status}");
//     print("MESSAGE: ${result.common.message}");
//     expect(result.common.status, true);
//   });
// }
