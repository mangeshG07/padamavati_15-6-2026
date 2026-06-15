import 'package:padmavatiupdated/core/exporters/app_export.dart';

class DashboardController extends GetxController {
  List<Map<String, dynamic>> get menuList => [
    {
      'title': 'Special Food Request',
      'icon': HugeIcons.strokeRoundedSpoonAndKnife,
      'isToday': true,
      'onTap': () async {},
      'count': 18,
    },
    {
      'title': 'Leave Request',
      'icon': HugeIcons.strokeRoundedClock03,
      'isToday': true,
      'onTap': () async {},
      'count': 9,
    },
    {
      'title': 'Tomorrow Leave Request',
      'isToday': false,
      'icon': HugeIcons.strokeRoundedClock03,
      'onTap': () async {},
      'count': 12,
    },
    {
      'title': 'Tomorrow Special Request',
      'icon': HugeIcons.strokeRoundedClock03,
      'isToday': false,
      'onTap': () async {},
      'count': 14,
    },
  ];
}
