import 'package:padmavatiupdated/core/exporters/app_export.dart';

class EditProfile extends StatefulWidget {
  const EditProfile({super.key});

  @override
  State<EditProfile> createState() => _EditProfileState();
}

class _EditProfileState extends State<EditProfile> {
  final controller = Get.find<ProfileController>();

  @override
  void initState() {
    super.initState();
    controller.currentAddressController.text =
        controller.profileData.value.curAddress ?? '';
    controller.permAddressController.text =
        controller.profileData.value.perAddress ?? '';
    controller.selectedDegree.value =
        controller.profileData.value.degreeId?.toString() ?? '';

    controller.fetchDegree();
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
      backgroundColor: Colors.white,
      body: Obx(
        () => controller.isDegreeLoading.isTrue
            ? AppLoader(strokeWidth: 2.5)
            : SingleChildScrollView(
                child: Column(
                  spacing: 8.h,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    GradientAppbar(title: 'Edit Profile', showBack: true),
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Form(
                        key: controller.updateForm,
                        child: Column(
                          spacing: 16.h,
                          children: [
                            _buildProfileHeader(
                              theme,
                              controller.profileData.value,
                            ),
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
                                isDynamic: true,
                                title: "Select Your Degree",
                                value: controller.selectedDegree.value,
                                items: controller.degreeList,
                                hintText: 'Degree',
                                validator: AppValidators.required,
                                onChanged: (val) =>
                                    controller.selectedDegree.value = val,
                              ),
                            ),

                            Obx(
                              () => AppButton(
                                text: 'Update Profile',
                                loading: controller.isUpdating.value,
                                onTap: () async {
                                  if (controller.updateForm.currentState!
                                      .validate()) {
                                    await controller.updateProfile();
                                  }
                                },
                                backgroundColor: AppColors.lightSecondary,
                              ),
                            ),

                            Obx(
                              () => AppButton(
                                text: 'Delete Account',
                                loading: controller.isDeleting.value,
                                onTap: () async {
                                  AllDialogs().showConfirmationDialog(
                                    'Delete',
                                    'Are you sure you want to delete this account?',
                                    onConfirm: () async {
                                      await controller.deleteAccount();
                                    },
                                  );
                                },
                                backgroundColor: AppColors.lightPrimary,
                              ),
                            ),
                          ],
                        ),
                      ),
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
      labelStyle: AppTextStyles.labelMedium.copyWith(color: Colors.black),
      filled: true,
      textStyle: TextStyle(color: Colors.black, fontSize: 14.sp),
      focusedBorder: buildOutlineInputBorder(),
      enabledBorder: buildOutlineInputBorder(),
      fillColor: Colors.white,
      hintStyle: theme.textTheme.labelMedium!.copyWith(color: Colors.grey),
      controller: tController,
      validator: AppValidators.required,
    );
  }
}
