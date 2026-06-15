import 'package:padmavatiupdated/core/exporters/app_export.dart';

class AdminNavController extends GetxController {
  final currentIndex = 0.obs;

  final List<Widget> _pages = [
    const AdminDashboard(),
    const AdminRequestScreen(),
    const PeopleList(),
    const AdminProfileScreen(),
  ];

  Widget get currentPage => _pages[currentIndex.value];

  void changePage(int index) {
    currentIndex.value = index;
  }
}
