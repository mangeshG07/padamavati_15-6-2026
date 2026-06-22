import 'package:padmavatiupdated/core/exporters/app_export.dart' hide test;
import 'package:mocktail/mocktail.dart';
import 'package:flutter_test/flutter_test.dart';

class MockHomeRepository extends Mock implements HomeRepository {}

class FakeUserRequest extends Fake implements UserRequest {}

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();

  const MethodChannel channel = MethodChannel(
    'plugins.it_nomads.com/flutter_secure_storage',
  );

  late HomeController controller;
  late MockHomeRepository repo;

  setUpAll(() {
    registerFallbackValue(FakeUserRequest());
  });

  setUp(() {
    // ✅ NEW WAY (No deprecation)
    TestDefaultBinaryMessengerBinding.instance.defaultBinaryMessenger
        .setMockMethodCallHandler(channel, (MethodCall methodCall) async {
          if (methodCall.method == 'read') {
            return "1";
          }
          return null;
        });

    repo = MockHomeRepository();

    controller = HomeController(
      GetHomeUsecase(repo),
      GetPackagesUsecase(repo),
      StartMessUsecase(repo),
    );
  });

  tearDown(() {
    TestDefaultBinaryMessengerBinding.instance.defaultBinaryMessenger
        .setMockMethodCallHandler(channel, null);
  });

  test("fetch home success", () async {
    when(() => repo.getHome(any())).thenAnswer(
      (_) async => Success(
        BaseResponseModel(
          common: CommonModel(status: true, message: ''),
          android: AppConfigModel(version: '1.0.0', url: ''),
          ios: AppConfigModel(version: '1.0.0', url: ''),
          data: HomeResponseModel(branchName: "Test"),
        ),
      ),
    );

    await controller.fetchHomeData();

    expect(controller.branchName.value, "Test");
  });
}
