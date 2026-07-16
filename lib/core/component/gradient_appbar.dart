import '../exporters/app_export.dart';

class GradientAppbar extends StatelessWidget {
  final String title;
  final bool showBack;
  final Widget? actions;
  const GradientAppbar({
    super.key,
    required this.title,
    required this.showBack,
    this.actions,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Container(
      width: Get.width,
      padding: EdgeInsets.symmetric(horizontal: 16.w).copyWith(top: 16.h),
      decoration: BoxDecoration(
        // gradient: LinearGradient(
        //   colors: [AppColors.lightPrimary.withValues(alpha: 0.1), Colors.white],
        //   begin: Alignment.topCenter,
        //   end: Alignment.bottomCenter,
        // ),
      ),
      child: SafeArea(
        child: Row(
          children: [
            if (showBack)
              AppIconButton(
                onPressed: () => Get.back(),
                icon: HugeIcons.strokeRoundedArrowLeft02,
                backgroundColor: Colors.white70,
                iconColor: Colors.black,
              ),
            Expanded(
              child: AppText(
                text: title,
                fontSize: 22.sp,
                style: theme.textTheme.titleLarge!.copyWith(
                  color: Colors.black,
                ),
              ),
            ),
            actions ?? SizedBox(),
          ],
        ),
      ),
    );
  }
}
