import 'package:padmavatiupdated/core/exporters/app_export.dart';

class EditProfile extends StatefulWidget {
  const EditProfile({super.key});

  @override
  State<EditProfile> createState() => _EditProfileState();
}

class _EditProfileState extends State<EditProfile> {
  final controller = Get.find<ProfileController>();

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          spacing: 8.h,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GradientAppbar(title: 'Edit Profile', showBack: true),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                spacing: 16.h,
                children: [
                  _buildProfileHeader(theme),
                  _buildField(
                    theme,
                    'Current Address',
                    'Address',
                    controller.currentAddressController,
                  ),
                  _buildField(
                    theme,
                    'Permanent Address',
                    'Address',
                    isReadOnly: true,
                    isEnabled: false,
                    controller.permAddressController,
                  ),
                  Obx(
                    () => AppDropdownField(
                      isRequired: true,
                      title: "Select Your Degree",
                      value: controller.selectedDegree.value,
                      items: controller.degreeList,
                      hintText: 'Degree',
                      validator: AppValidators.required,
                      onChanged: (val) => controller.selectedDegree.value = val,
                    ),
                  ),

                  AppButton(
                    text: 'Update Profile',
                    onTap: () {},
                    backgroundColor: AppColors.lightSecondary,
                  ),
                ],
              ),
            ),
            SizedBox(height: 0.02.h),
          ],
        ),
      ),
    );
  }

  Widget _buildProfileHeader(ThemeData theme) {
    final imageUrl =
        'https://s3.ap-south-1.amazonaws.com/awsimages.imagesbazaar.com/1200x1800-old/17339/SM765734.jpg?date=Thu%20May%2028%202026%2010:47:56%20GMT+0530%20(India%20Standard%20Time)';

    return Container(
      padding: EdgeInsets.symmetric(vertical: 20.h, horizontal: 16.w),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20.r),
        gradient: LinearGradient(
          colors: [
            theme.scaffoldBackgroundColor,
            theme.brightness == Brightness.light
                ? Colors.grey.shade50
                : AppColors.grey800,
          ],
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
            text: capitalizeFirst('Rahul Khomane'),
            fontSize: 20.sp,
            fontWeight: FontWeight.bold,
            style: theme.textTheme.titleLarge?.copyWith(letterSpacing: 0.3),
          ),
          SizedBox(height: 4.h),
          AppText(
            text: '7210053005',
            fontSize: 12.sp,
            color: AppColors.lightTextLowColor,
          ),
        ],
      ),
    );
  }

  Widget _buildField(
    ThemeData theme,
    String label,
    String hint,
    TextEditingController tController, {
    bool isReadOnly = false,
    bool isEnabled = true,
  }) {
    return AppTextField(
      label: label,
      hint: hint,
      enabled: isEnabled,
      readOnly: isReadOnly,
      isRequired: true,
      labelStyle: AppTextStyles.labelMedium,
      filled: true,
      textStyle: TextStyle(color: theme.colorScheme.onSurface, fontSize: 14.sp),
      focusedBorder: theme.inputDecorationTheme.focusedBorder,
      enabledBorder: theme.inputDecorationTheme.enabledBorder,
      fillColor: theme.cardColor,
      hintStyle: theme.textTheme.labelMedium!.copyWith(color: Colors.grey),
      controller: tController,
      validator: AppValidators.required,
    );
  }
}
