import 'package:firebase_remote_config/firebase_remote_config.dart';

import '../exporters/app_export.dart';

@lazySingleton
class RemoteConfigService {
  final FirebaseRemoteConfig _remoteConfig = FirebaseRemoteConfig.instance;

  Future<void> init() async {
    await _remoteConfig.setConfigSettings(
      RemoteConfigSettings(
        fetchTimeout: const Duration(seconds: 5),
        minimumFetchInterval: const Duration(seconds: 0),
      ),
    );

    await _remoteConfig.setDefaults({"splash": ""});

    await _remoteConfig.fetchAndActivate();
  }

  // getters
  String get splashLogo => _remoteConfig.getString("splash");
}
