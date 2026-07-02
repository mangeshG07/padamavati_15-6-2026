import 'package:padmavatiupdated/core/exporters/app_export.dart';

class PopupMenuRequest extends StatelessWidget {
  const PopupMenuRequest({super.key});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Colors.white,
      surfaceTintColor: Colors.white,
      title: Text("Choose an Option", style: TextStyle(color: Colors.black)),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          ListTile(
            leading: HugeIcon(
              icon: HugeIcons.strokeRoundedHamburger01,
              color: Colors.black,
            ),
            title: Text(
              "Add Special Food Request",
              style: TextStyle(color: Colors.black),
            ),
            onTap: () {
              Get.back();
              AppBottomSheet.show(
                context: context,
                showCloseButton: false,
                height: Get.height * 0.75.h,
                child: AddRequest(),
              );
            },
          ),
          Divider(),
          ListTile(
            leading: HugeIcon(
              icon: HugeIcons.strokeRoundedLogout01,
              color: Colors.black,
            ),
            title: Text(
              "Add Leave Request",
              style: TextStyle(color: Colors.black),
            ),
            onTap: () {
              Get.back();
              AppBottomSheet.show(
                context: context,
                showCloseButton: false,
                height: Get.height * 0.75.h,
                child: AddLeave(),
              );
            },
          ),
        ],
      ),
    );

    // Column(
    //   children: [
    //     ListTile(
    //       title: AppText(text: 'Add Special Food Request', fontSize: 16.sp),
    //     ),
    //     ListTile(
    //       title: AppText(text: 'Add Leave Request', fontSize: 16.sp),
    //     ),
    //   ],
    // );
  }
}
