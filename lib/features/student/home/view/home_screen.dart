import 'package:padmavatiupdated/core/exporters/app_export.dart';

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
    WidgetsBinding.instance.addPostFrameCallback((_) {
      checkInternetAndShowPopup();
      controller.fetchHomeData();
    });
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final state = controller.states;

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(80.h),
        child: _buildAppbar(),
      ),
      body: Obx(() {
        if (state.isHomeLoading.isTrue) {
          return AppLoader(strokeWidth: 2.5, color: AppColors.lightPrimary);
        }
        return RefreshIndicator(
          onRefresh: controller.fetchHomeData,
          child: SingleChildScrollView(
            physics: const AlwaysScrollableScrollPhysics(),
            child: _buildMainData(theme, state),
          ),
        ).animate().fade(duration: 400.ms).slideY(begin: 0.1);
      }),
    );
  }

  Widget _buildAppbar() {
    return Container(
      width: Get.width,
      padding: EdgeInsets.symmetric(horizontal: 8.w).copyWith(top: 16.h),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [AppColors.lightPrimary.withValues(alpha: 0.1), Colors.white],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        ),
      ),
      child: SafeArea(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            CustomImage(image: AppAssets.splashLogo, height: 50.h),
            Row(
              children: [
                AppIconButton(
                  onPressed: () {
                    final qr = controller.states.todaysQR.first;
                    Get.toNamed(Routes.qrDetails, arguments: {'qrData': qr});
                  },
                  icon: HugeIcons.strokeRoundedQrCode,
                  backgroundColor: Colors.grey.shade50,
                  iconColor: Colors.black,
                ),
                AppIconButton(
                  icon: HugeIcons.strokeRoundedNotification01,
                  backgroundColor: Colors.grey.shade50,
                  iconColor: Colors.black,
                ),
              ],
            ),
          ],
        ),
      ),
    ).animate().fade(duration: 500.ms).slideY(begin: 0.3);
  }

  Widget _buildMainData(ThemeData theme, HomeState state) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        spacing: 16.h,
        children: [
          Center(
            child: AppText(
              text: 'Welcome To Padmavati Mess ${state.branchName.value}',
              fontSize: 14.sp,
              style: theme.textTheme.bodySmall!.copyWith(color: Colors.black),
            ),
          ),

          _buildSlider(),
          controller.isPending
              ? _buildRequestPending(theme)
              : controller.isApproved
              ? _buildPaymentDetails(theme, state)
              : _buildStartMess(theme, state),
        ],
      ),
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
          imageUrls: controller.states.sliders
              .map((e) => e.image ?? '')
              .toList(),
          height: Get.height * 0.45.h,
          margin: EdgeInsets.zero,
          activeIndicatorColor: Colors.transparent,
          inactiveIndicatorColor: Colors.transparent,
        ),
      ),
    );
  }

  Widget _buildStartMess(ThemeData theme, HomeState state) {
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
          style: theme.textTheme.titleLarge!.copyWith(color: Colors.black),
        ),
        AppButton(
          text: 'Start Mess',
          onTap: () {
            state.selectedPackageId.value = null;
            controller.selectedDate.clear();
            state.selectedPackage.value = null;
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

  Widget _buildPaymentDetails(ThemeData theme, HomeState state) {
    if (state.payments.isEmpty) {
      return const Center(
        child: AppText(text: "No payments yet", fontSize: 14),
      );
    }

    return Column(
      spacing: 12.h,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        AppText(
          text: 'Payment Details',
          fontSize: 14.sp,
          style: theme.textTheme.titleLarge!.copyWith(color: Colors.black),
        ),

        ListView.separated(
          shrinkWrap: true,
          padding: EdgeInsets.zero,
          separatorBuilder: (_, __) => SizedBox(height: 12.h),
          physics: const NeverScrollableScrollPhysics(),
          itemCount: state.payments.length,
          itemBuilder: (BuildContext context, int index) {
            final payment = state.payments[index];
            return PaymentTile(
              payment: payment,
            ).animate().fade(duration: 100.ms);
          },
        ),
      ],
    );
  }
}
