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
    final res = await _apiService.getSplash();

    // /// Android config
    // isForceUpdate = res.android?.forceUpdate ?? false;
    // isMaintenance = res.android?.isMaintenance ?? false;

    /// Splash
    // splashImage = res.data?.splashImage;
    splashImage = res['data']['splash_image'] ?? '';


    /// Login
    // isLoggedIn = res.userLogin ?? false;
  }
}
