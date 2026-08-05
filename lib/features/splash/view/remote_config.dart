import '../../../core/exporters/app_export.dart';

@lazySingleton
class RemoteConfigServiceNew {
  final ApiService _apiService;
  RemoteConfigServiceNew(this._apiService);

  String? splashImage;
  bool isForceUpdate = false;
  bool isMaintenance = false;
  bool isLoggedIn = false;

  Future<void> init() async {
    try {
      final res = await _apiService.getSplash().timeout(
        const Duration(seconds: 5),
      ); // ✅ timeout

      splashImage = res['data']['splash_image'] ?? '';
    } catch (e) {
      /// ✅ fallback (VERY IMPORTANT)
      splashImage = '';
      isForceUpdate = false;
      isMaintenance = false;
    }
  }
}
