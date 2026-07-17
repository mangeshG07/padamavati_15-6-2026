import 'package:padmavatiupdated/core/exporters/app_export.dart';

class AdminRequestScreen extends StatefulWidget {
  const AdminRequestScreen({super.key});

  @override
  State<AdminRequestScreen> createState() => _AdminRequestScreenState();
}

class _AdminRequestScreenState extends State<AdminRequestScreen> {
  final controller = Get.find<AdminReqCtrl>();

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      checkInternetAndShowPopup();
      controller.getFoodRequestList(isRefresh: true);
      controller.getLeaveRequestList(isRefresh: true);
      controller.setDate(DateTime.now());
    });
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(100.h),
          child: Column(
            children: [
              Obx(
                () => GradientAppbar(
                  title: 'Request (${controller.selectedDate})',
                  showBack: false,
                  actions: AppIconButton(
                    onPressed: () async {
                      final pickedDate = await showDatePicker(
                        context: context,
                        initialDate: DateTime.now(),
                        firstDate: DateTime(1900),
                        lastDate: DateTime.now().add(const Duration(days: 30)),
                        builder: (context, child) {
                          return Theme(
                            data: theme.copyWith(
                              colorScheme: ColorScheme.light(
                                primary: AppColors.lightPrimary,
                                onPrimary: Colors.white,
                                onSurface: Colors.black,
                              ),
                            ),
                            child: child!,
                          );
                        },
                      );
                      if (pickedDate != null) {
                        controller.setDate(pickedDate);
                      }
                    },
                    icon: HugeIcons.strokeRoundedCalendar03,
                    backgroundColor: Colors.grey.shade50,
                    iconColor: Colors.black,
                  ),
                ),
              ),

              /// Tabs
              TabBar(
                labelColor: AppColors.lightPrimary,
                unselectedLabelColor: Colors.grey,
                indicatorColor: AppColors.lightPrimary,
                tabs: const [
                  Tab(text: "Food Request"),
                  Tab(text: "Leave Request"),
                ],
              ),
            ],
          ),
        ),
        body: SafeArea(
          child: TabBarView(
            children: [
              /// 🍽️ FOOD REQUEST TAB
              AdminFoodRequests(
                foodData: controller.foodPagination,
                controller: controller,
              ),
              AdminLeaveRequests(
                leaveData: controller.leavePagination,
                controller: controller,
              ),
              // _buildLeaveList(),
            ],
          ),
        ),
      ),
    );
  }
}
