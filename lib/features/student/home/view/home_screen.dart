import 'package:padmavatiupdated/core/exporters/app_export.dart';
import 'package:padmavatiupdated/features/student/home/widget/start_mess_dialog.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final controller = Get.find<HomeController>();

  @override
  void initState() {
    super.initState();
    controller.getHome();
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
      backgroundColor: Colors.white,
      body: Obx(
        () => controller.isLoading.isTrue
            ? AppLoader(size: 2.5, color: AppColors.lightPrimary)
            : SingleChildScrollView(
                child: Column(
                  spacing: 8.h,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    _buildAppbar(),
                    _buildMainData(theme),
                    SizedBox(height: 0.02.h),
                  ],
                ),
              ),
      ),
    );
  }

  Widget _buildMainData(ThemeData theme) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        spacing: 16.h,
        children: [
          Center(
            child: AppText(
              text: 'Welcome To Padmavati Mess ${controller.branchName.value}',
              fontSize: 14.sp,
              style: theme.textTheme.bodySmall,
            ),
          ),

          _buildSlider(),
          controller.isRequested.isTrue && controller.isAccepted.isFalse
              ? _buildRequestPending(theme)
              : controller.isRequested.isTrue && controller.isAccepted.isTrue
              ? _buildPaymentDetails(theme)
              : _buildStartMess(theme),
        ],
      ),
    );
  }

  Widget _buildStartMess(ThemeData theme) {
    return Column(
      spacing: 12.h,
      children: [
        CustomImage(
          image: AppAssets.homeTiffin,
          height: Get.height * 0.15.h,
          placeholder: CustomImage(image: AppAssets.defaultImage),
          errorWidget: CustomImage(image: AppAssets.defaultImage),
        ),

        AppText(
          text: 'Welcome To\n Padmavati Mess',
          fontSize: 14.sp,
          maxLines: 2,
          textAlign: TextAlign.center,
          style: theme.textTheme.titleLarge,
        ),
        AppButton(
          text: 'Start Mess',
          onTap: () {
            Get.dialog(MessSelectionPopup(), barrierDismissible: true);
          },
          backgroundColor: AppColors.lightSecondary,
        ),
      ],
    );
  }

  Widget _buildRequestPending(ThemeData theme) {
    return Center(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        spacing: 12.h,
        children: [
          CustomImage(
            image: AppAssets.homeTiffin,
            height: Get.height * 0.15.h,
            placeholder: CustomImage(image: AppAssets.defaultImage),
            errorWidget: CustomImage(image: AppAssets.defaultImage),
          ),

          AppText(
            text: 'Wait For Accept Your Request',
            fontSize: 14.sp,
            maxLines: 2,
            textAlign: TextAlign.center,
            style: theme.textTheme.titleMedium,
          ),
        ],
      ),
    );
  }

  Widget _buildPaymentDetails(ThemeData theme) {
    return Column(
      children: [
        AppText(
          text: 'Payment Details',
          fontSize: 14.sp,
          style: theme.textTheme.titleLarge,
        ),

        ListView.separated(
          shrinkWrap: true,
          padding: EdgeInsets.zero,
          separatorBuilder: (_, __) => SizedBox(height: 12.h),
          physics: const NeverScrollableScrollPhysics(),
          itemCount: controller.payDetailsList.length,
          itemBuilder: (BuildContext context, int index) {
            final payment = controller.payDetailsList[index];
            return PaymentTile(payment: payment);
          },
        ),
      ],
    );
  }

  Widget _buildSlider() {
    return AspectRatio(
      aspectRatio: 1,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(12.r),
        child: AppCarouselSlider(
          placeholder: CustomImage(image: AppAssets.defaultImage),
          errorWidget: CustomImage(image: AppAssets.defaultImage),
          imageUrls: controller.sliderList.map((e) => e.image ?? '').toList(),
          height: Get.height * 0.45.h,
          margin: EdgeInsets.zero,
          activeIndicatorColor: Colors.transparent,
          inactiveIndicatorColor: Colors.transparent,
        ),
      ),
    );
  }

  Widget _buildAppbar() {
    return Container(
      width: Get.width,
      padding: EdgeInsets.symmetric(horizontal: 8.w).copyWith(top: 16.h),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [AppColors.appBgColor, Colors.white],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        ),
      ),
      child: SafeArea(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            CustomImage(image: AppAssets.splashLogo, height: 50.h),
            AppIconButton(
              icon: HugeIcons.strokeRoundedNotification01,
              backgroundColor: Colors.grey.shade50,
              iconColor: Colors.black,
            ),
          ],
        ),
      ),
    );
  }
}
