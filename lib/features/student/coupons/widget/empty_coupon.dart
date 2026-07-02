import '../../../../core/exporters/app_export.dart';

class EmptyView extends StatelessWidget {
  const EmptyView({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        SizedBox(height: 50),
        Icon(Icons.inbox, size: 60, color: Colors.grey),
        SizedBox(height: 10),
        Text("No Coupons Found", style: TextStyle(color: Colors.black)),
      ],
    );
  }
}
