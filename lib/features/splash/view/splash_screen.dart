import 'package:padmavatiupdated/core/exporters/app_export.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage>
    with SingleTickerProviderStateMixin {
  late AnimationController _animationController;
  late Animation<double> _fadeAnimation;
  late Animation<double> _scaleAnimation;
  final controller = getIt<SplashController>();

  @override
  void initState() {
    super.initState();
    _setupAnimations();
  }

  void _setupAnimations() async {
    _animationController = AnimationController(
      duration: const Duration(milliseconds: 1500),
      vsync: this,
    );

    _fadeAnimation = Tween<double>(begin: 0.0, end: 1.0).animate(
      CurvedAnimation(parent: _animationController, curve: Curves.easeIn),
    );

    _scaleAnimation = Tween<double>(begin: 0.5, end: 1.0).animate(
      CurvedAnimation(parent: _animationController, curve: Curves.easeOutBack),
    );

    await _animationController.forward();
    controller.initApp();
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: SystemUiOverlayStyle(
        systemNavigationBarContrastEnforced: false,
        systemNavigationBarColor: Colors.transparent,
        systemNavigationBarIconBrightness: theme.brightness,
        systemNavigationBarDividerColor: Colors.transparent,
      ),
      child: Scaffold(
        backgroundColor: Colors.white,
        body: MediaQuery.removePadding(
          context: context,
          removeBottom: true,
          removeTop: true,
          child: AnimatedBuilder(
            animation: _animationController,
            builder: (context, child) {
              return FadeTransition(
                opacity: _fadeAnimation,
                child: ScaleTransition(
                  scale: _scaleAnimation,
                  child: _buildLogo(),
                ),
              );
            },
          ),
        ),
      ),
    );
  }

  Widget _buildLogo() {
    return Obx(() {
      final imageUrl = controller.remoteConfig.splashImage;

      return AnimatedSwitcher(
        duration: const Duration(milliseconds: 300),

        /// 🔑 Important for animation
        child: (!controller.isLoaded.value)
            ? Center(
                child: Image.asset(
                  AppAssets.splashLogo,
                  key: const ValueKey("local"),
                  width: Get.width * 0.6,
                ),
              )
            /// ✅ Show ONLY network image (no double)
            : (imageUrl != null && imageUrl.isNotEmpty)
            ? Image.network(
                imageUrl,
                key: const ValueKey("network"),
                width: double.infinity,
                height: double.infinity,
                fit: BoxFit.cover,
              )
            /// fallback
            : Center(
                child: Image.asset(
                  AppAssets.splashLogo,
                  key: const ValueKey("fallback"),
                  width: Get.width * 0.6,
                ),
              ),
      );
    });
  }
}

// Widget _buildLogo() {
//   final imageUrl = controller.remoteConfig.splashImage;
//   print("Splash Image URL: ${controller.remoteConfig.splashImage}");
//
//   /// ✅ Network splash (API driven)
//   if (imageUrl != null && imageUrl.isNotEmpty) {
//     return FadeInImage.assetNetwork(
//       placeholder: AppAssets.splashLogo,
//       image: imageUrl,
//       width: Get.width * 0.6.w,
//       fit: BoxFit.contain,
//     );
//   }
//
//   /// ✅ fallback (offline)
//   return Image.asset(
//     AppAssets.splashLogo,
//     width: Get.width * 0.6.w,
//     fit: BoxFit.contain,
//   );
// }

// Widget _buildLogo() {
//   return Image.asset(
//     // getIt<RemoteConfigService>().splashLogo,
//     // 'http://192.168.29.139:5000/uploads/splash/splash-image.jpg',
//     AppAssets.splashLogo,
//     width: Get.width * 0.6.w,
//     // height: double.infinity,
//     fit: BoxFit.contain,
//   );
// }
