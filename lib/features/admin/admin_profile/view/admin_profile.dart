import 'package:padmavatiupdated/core/exporters/app_export.dart';

class AdminProfileScreen extends StatefulWidget {
  const AdminProfileScreen({super.key});

  @override
  State<AdminProfileScreen> createState() => _AdminProfileScreenState();
}

class _AdminProfileScreenState extends State<AdminProfileScreen> {
  final controller = Get.find<AdminProfileController>();

  @override
  void initState() {
    super.initState();
    controller.getAdminProfile();
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Scaffold(
      backgroundColor: Colors.white,
      body: Obx(
        () => controller.isLoading.isTrue
            ? AppLoader(strokeWidth: 2.5)
            : SingleChildScrollView(
                child: Column(
                  spacing: 8.h,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    GradientAppbar(title: 'Profile', showBack: false),
                    Column(
                      // spacing: 16.h,
                      children: [
                        _buildProfileHeader(theme),
                        _buildSectionCard(controller.menuList, theme),
                      ],
                    ),
                    SizedBox(height: 0.02.h),
                  ],
                ),
              ),
      ),
    );
  }

  Widget _buildProfileHeader(ThemeData theme) {
    final imageUrl = controller.userData.value.profileImage ?? '';

    return Container(
      padding: EdgeInsets.symmetric(vertical: 20.h, horizontal: 16.w),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20.r),
        gradient: LinearGradient(
          colors: [Colors.white, Colors.grey.shade50],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(alpha: 0.05),
            blurRadius: 12,
            offset: const Offset(0, 6),
          ),
        ],
      ),
      child: Column(
        children: [
          Container(
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withValues(alpha: 0.1),
                  blurRadius: 10,
                  offset: const Offset(0, 4),
                ),
              ],
            ),
            child: CircleAvatar(
              radius: 55.r,
              backgroundColor: Colors.white,
              child: CircleAvatar(
                radius: 50.r,
                backgroundColor: AppColors.grey100,
                child: ClipOval(
                  child: FadeInImage(
                    placeholder: const AssetImage(AppAssets.defaultImage),
                    image: (imageUrl.toString().isNotEmpty)
                        ? NetworkImage(imageUrl)
                        : const AssetImage(AppAssets.defaultImage)
                              as ImageProvider,
                    fit: BoxFit.cover,
                    width: double.infinity,
                    height: double.infinity,
                    fadeInDuration: const Duration(milliseconds: 300),
                    imageErrorBuilder: (_, __, ___) {
                      return Image.asset(
                        AppAssets.defaultImage,
                        fit: BoxFit.cover,
                        width: double.infinity,
                        height: double.infinity,
                      );
                    },
                  ),
                ),
              ),
            ),
          ),
          SizedBox(height: 10.h),
          AppText(
            text: capitalizeFirst(controller.userData.value.name ?? ''),
            fontSize: 20.sp,
            fontWeight: FontWeight.bold,
            style: theme.textTheme.titleLarge?.copyWith(letterSpacing: 0.3),
          ),
          SizedBox(height: 4.h),
          AppText(
            text: controller.userData.value.mobileNo ?? '',
            fontSize: 12.sp,
            color: AppColors.lightTextLowColor,
          ),
        ],
      ),
    );
  }

  // 📦 SECTION CARD
  Widget _buildSectionCard(List<dynamic> list, ThemeData theme) {
    return SafeArea(
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 16.w).copyWith(bottom: 16),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20.r),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withValues(alpha: 0.04),
              blurRadius: 8,
            ),
          ],
        ),
        child: Column(
          children: List.generate(list.length, (index) {
            final menu = list[index];
            return Column(
              children: [
                _menuItem(menu, theme),
                if (index != list.length - 1)
                  Divider(
                    height: 0,
                    thickness: 0.6,
                    indent: 50.w,
                    endIndent: 12.w,
                    color: theme.dividerTheme.color,
                  ),
              ],
            );
          }),
        ),
      ),
    );
  }

  // 🎯 MENU ITEM0
  Widget _menuItem(dynamic menu, ThemeData theme) {
    return Material(
      color: Colors.transparent,
      child: InkWell(
        borderRadius: BorderRadius.circular(12.r),
        onTap: menu['onTap'],
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 14.w, vertical: 14.h),
          child: Row(
            children: [
              Container(
                padding: EdgeInsets.all(10.w),
                decoration: BoxDecoration(
                  color: theme.brightness == Brightness.light
                      ? AppColors.lightPrimary.withValues(alpha: 0.08)
                      : AppColors.lightPink.withValues(alpha: 0.2),
                  borderRadius: BorderRadius.circular(14.r),
                  border: Border.all(
                    color: theme.dividerColor.withValues(alpha: 0.1),
                  ),
                ),
                child: HugeIcon(
                  icon: menu['icon'],
                  color: theme.brightness == Brightness.light
                      ? AppColors.lightPrimary
                      : Colors.white,
                  size: 20.r,
                ),
              ),
              SizedBox(width: 12.w),
              Expanded(
                child: AppText(
                  text: menu['title'] ?? '',
                  fontSize: 14.sp,
                  style: theme.textTheme.bodyMedium!.copyWith(
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              AnimatedContainer(
                duration: const Duration(milliseconds: 200),
                padding: EdgeInsets.all(6.w),
                child: HugeIcon(
                  icon: HugeIcons.strokeRoundedArrowRight01,
                  size: 18.r,
                  color: theme.hintColor,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
