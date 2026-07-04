import 'package:padmavatiupdated/core/exporters/app_export.dart';

class NavigationController extends GetxController {
  final currentIndex = 0.obs;

  late final List<Widget> _pages = [
    const HomeScreen(),
    const CouponsScreen(),
    const PaymentHistory(),
    const RequestScreen(),
    const ProfileScreen(),
  ];

  Widget get currentPage => _pages[currentIndex.value];

  void changePage(int index) {
    currentIndex.value = index;
  }
}
