import 'package:padmavatiupdated/core/exporters/app_export.dart';

@lazySingleton
class TimerService {
  Timer? _timer;

  void start({required int seconds, required Function(int) onTick}) {
    int current = seconds;

    _timer?.cancel();

    _timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      if (current == 0) {
        timer.cancel();
      } else {
        current--;
        onTick(current);
      }
    });
  }

  void dispose() {
    _timer?.cancel();
  }
}
