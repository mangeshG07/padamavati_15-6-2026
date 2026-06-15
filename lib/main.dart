import 'package:mocktail/mocktail.dart';
import 'package:padmavatiupdated/core/exporters/app_export.dart';

class MockAuthRepository extends Mock implements AuthRepository {}

void main() {
  runZonedGuarded(
    () async {
      WidgetsFlutterBinding.ensureInitialized();
      SystemChrome.setEnabledSystemUIMode(SystemUiMode.edgeToEdge);

      /// Init Dependencies (GetX)
      await initServices();
      await configureDependencies();

      /// Global Flutter Error
      FlutterError.onError = (details) {
        AppLogger.error('Flutter Error', details.exception, details.stack);
      };

      runApp(const MyApp());
    },
    (error, stack) {
      AppLogger.fatal('Platform Error', error, stack);
    },
  );
}

Future<void> initServices() async {
  await Get.putAsync(() => InitService().init());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilConfig.init(
      context: context,
      child: GetMaterialApp(
        debugShowCheckedModeBanner: false,
        title: AppConstants.appName,

        /// Routing & bindings
        initialBinding: InitialBindings(),
        getPages: AppPages.routes,
        initialRoute: Routes.splash,

        /// Theme configuration
        theme: AppTheme.lightTheme,
        darkTheme: AppTheme.darkTheme,
        themeMode: ThemeMode.system,

        /// Transitions
        defaultTransition: Transition.fadeIn,
        transitionDuration: const Duration(milliseconds: 300),

        /// Global MediaQuery control
        builder: (context, child) {
          final mediaQueryData = MediaQuery.of(context);

          final textScaler = TextScaler.linear(
            mediaQueryData.textScaler.scale(1.0).clamp(0.8, 1.0),
          );
          final newMediaQueryData = mediaQueryData.copyWith(
            boldText: false,
            textScaler: textScaler,
          );
          return MediaQuery(data: newMediaQueryData, child: child!);
        },
      ),
    );
  }
}
