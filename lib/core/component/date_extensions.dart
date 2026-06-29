import 'package:intl/intl.dart';

extension DateFormatting on String? {
  String toFormattedDateTime() {
    if (this == null || this!.isEmpty) return 'N/A';

    try {
      final dt = DateTime.parse(this!).toLocal();
      final date = DateFormat('dd MMM yyyy').format(dt);
      final time = DateFormat('hh:mm a').format(dt);
      return "$date | $time";
    } catch (_) {
      return 'Invalid date';
    }
  }

  String toFormattedDate() {
    if (this == null || this!.isEmpty) return 'N/A';

    try {
      final dt = DateTime.parse(this!).toLocal();
      return DateFormat('dd MMM yyyy').format(dt);
    } catch (_) {
      return 'Invalid date';
    }
  }
}

class DateHelper {
  static final uiFormat = DateFormat('yyyy-MM-dd');   // UI
  static final apiFormat = DateFormat('yyyy-dd-MM');  // API

  static String toApiFormat(String uiDate) {
    final parsed = uiFormat.parse(uiDate); // parse UI
    return apiFormat.format(parsed);       // convert to API
  }
}