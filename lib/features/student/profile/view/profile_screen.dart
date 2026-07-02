import 'package:padmavatiupdated/core/exporters/app_export.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  final controller = Get.find<ProfileController>();

  @override
  void initState() {
    super.initState();
    controller.getProfile();
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
                        _buildProfileHeader(
                          theme,
                          controller.profileData.value,
                        ),
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

  Widget _buildProfileHeader(ThemeData theme, ProfileResponseModel user) {
    final imageUrl = user.profileImage ?? '';

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
            text: capitalizeFirst(user.name ?? ''),
            fontSize: 20.sp,
            fontWeight: FontWeight.bold,
            style: theme.textTheme.titleLarge?.copyWith(
              letterSpacing: 0.3,
              color: Colors.black,
            ),
          ),
          SizedBox(height: 4.h),
          AppText(
            text: user.mobileNo ?? '',
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
                  color: AppColors.lightPrimary.withValues(alpha: 0.08),
                  borderRadius: BorderRadius.circular(14.r),
                  border: Border.all(
                    color: theme.dividerColor.withValues(alpha: 0.1),
                  ),
                ),
                child: HugeIcon(
                  icon: menu['icon'],
                  color: AppColors.lightPrimary,
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
                    color: Colors.black,
                  ),
                ),
              ),
              AnimatedContainer(
                duration: const Duration(milliseconds: 200),
                padding: EdgeInsets.all(6.w),
                child: HugeIcon(
                  icon: HugeIcons.strokeRoundedArrowRight01,
                  size: 18.r,
                  color: Colors.grey,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
