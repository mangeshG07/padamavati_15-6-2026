import 'package:padmavatiupdated/core/exporters/app_export.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  final controller = Get.find<RegisterController>();

  @override
  void initState() {
    super.initState();
    controller.numberController.text = Get.arguments ?? '';
    controller.fetchInitialData();
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: CustomAppbar(
        title: 'User Registration',
        backgroundColor: Colors.white,
      ),
      body: Obx(
        () => controller.isPageLoading.isTrue
            ? AppLoader(color: AppColors.lightPrimary, strokeWidth: 2.5)
            : SafeArea(
                child: SingleChildScrollView(
                  keyboardDismissBehavior:
                      ScrollViewKeyboardDismissBehavior.onDrag,
                  padding: EdgeInsets.symmetric(horizontal: 20.w),
                  child: Form(
                    key: controller.registerKey,
                    autovalidateMode: AutovalidateMode.onUserInteraction,
                    child: Column(
                      spacing: 16.h,
                      children: [
                        _buildProfileImage(),

                        _buildField(
                          theme,
                          'Mobile Number',
                          'Number',
                          controller.numberController,
                          isNumber: true,
                        ),
                        _buildField(
                          theme,
                          'Name',
                          'Name',
                          controller.nameController,
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
                          controller.permAddressController,
                        ),
                        _buildDOB(theme, context),
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
                          () => AppDropdownField(
                            isRequired: true,
                            title: "Select Your Gender",
                            value: controller.selectedGender.value,
                            items: controller.genderList,
                            hintText: 'Gender',
                            validator: AppValidators.required,
                            onChanged: (val) =>
                                controller.selectedGender.value = val,
                          ),
                        ),

                        Obx(
                          () => AppDropdownField(
                            isRequired: true,
                            isDynamic: true,
                            title: "Select Mess Branch",
                            value: controller.selectedBranch.value,
                            items: controller.branchList,
                            hintText: 'Branch',
                            validator: AppValidators.required,
                            onChanged: (val) =>
                                controller.selectedBranch.value = val,
                          ),
                        ),
                        // Obx(
                        //   () => AppDropdownField(
                        //     isRequired: true,
                        //     title: "Select Mess Time",
                        //     value: controller.selectedMessTime.value,
                        //     items: controller.messTimeList,
                        //     hintText: 'Mess Time',
                        //     validator: AppValidators.required,
                        //     onChanged: (val) =>
                        //         controller.selectedMessTime.value = val,
                        //   ),
                        // ),
                        _buildFoodPreference(theme),

                        SizedBox(height: Get.height * 0.02),
                      ],
                    ),
                  ),
                ),
              ),
      ),
      bottomNavigationBar: _buildSubmitButton(),
    );
  }

  /// ---------------- PROFILE IMAGE ---------------- ///
  Widget _buildProfileImage() {
    return GestureDetector(
      onTap: controller.pickImage,
      child: Stack(
        children: [
          CircleAvatar(
            backgroundColor: Colors.grey.shade300,
            radius: 51.r,
            child: CircleAvatar(
              radius: 50.r,
              backgroundColor: Colors.white,
              child: ClipOval(
                child: Obx(() {
                  final imageFile = controller.profileImage.value;
                  final ImageProvider<Object> imageProvider = imageFile != null
                      ? FileImage(imageFile)
                      : const AssetImage(AppAssets.defaultImage);

                  return FadeInImage(
                    placeholder: const AssetImage(AppAssets.defaultImage),
                    image: imageProvider,
                    imageErrorBuilder: (context, error, stackTrace) {
                      return Image.asset(
                        AppAssets.defaultImage,
                        width: 100.w,
                        height: 100.h,
                        fit: BoxFit.contain,
                      );
                    },
                    fit: BoxFit.cover,
                    width: 100.w,
                    height: 100.h,
                    placeholderFit: BoxFit.contain,
                    fadeInDuration: const Duration(milliseconds: 300),
                  );
                }),
              ),
            ),
          ),
          Positioned(
            bottom: 0,
            right: 0,
            child: CircleAvatar(
              radius: 16.r,
              backgroundColor: AppColors.lightPrimary,
              child: Icon(Icons.edit, size: 16.sp, color: Colors.white),
            ),
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
    bool isNumber = false,
  }) {
    return AppTextField(
      label: label,
      hint: hint,
      isRequired: true,
      labelStyle: AppTextStyles.labelMedium.copyWith(color: Colors.black),
      filled: true,
      keyboardType: isNumber ? TextInputType.number : TextInputType.text,
      textStyle: TextStyle(color: Colors.black, fontSize: 14.sp),
      focusedBorder: buildOutlineInputBorder(),
      enabledBorder: buildOutlineInputBorder(),
      fillColor: Colors.white,
      hintStyle: theme.textTheme.labelMedium!.copyWith(color: Colors.grey),
      controller: tController,
      validator: (v) => isNumber
          ? AppValidators.phone(v, length: 10)
          : AppValidators.required(v),
    );
  }

  Widget _buildDOB(ThemeData theme, BuildContext context) {
    return AppTextField(
      labelStyle: AppTextStyles.labelMedium.copyWith(color: Colors.black),
      isRequired: true,
      textStyle: TextStyle(color: theme.colorScheme.onSurface, fontSize: 14.sp),
      focusedBorder: buildOutlineInputBorder(),
      enabledBorder: buildOutlineInputBorder(),
      fillColor: Colors.white,
      hintStyle: theme.textTheme.labelMedium!.copyWith(color: Colors.grey),
      onTap: () async {
        final DateTime? pickedDate = await showDatePicker(
          context: context,
          initialDate: DateTime(2000),
          firstDate: DateTime(1900),
          lastDate: DateTime.now(),
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
          controller.dobController.text =
              "${pickedDate.day.toString().padLeft(2, '0')}-${pickedDate.month.toString().padLeft(2, '0')}-${pickedDate.year}";
        }
      },
      validator: AppValidators.required,
      suffixIcon: Icon(
        Icons.calendar_today,
        size: 20.r,
        color: AppColors.grey400,
      ),
      readOnly: true,
      label: 'Select DOB',
      hint: 'Select DOB',
      filled: true,
      controller: controller.dobController,
    );
  }

  Widget _buildFoodPreference(ThemeData theme) {
    return Obx(
      () => Column(
        spacing: 6.h,
        children: [
          AppLabel.required(text: 'Food Preference'),
          Row(
            children: [
              Text('Food Preference', style: AppTextStyles.labelMedium),
              Text(
                " *",
                style: TextStyle(color: Colors.red, fontSize: 13.sp),
              ),
            ],
          ),
          AnimatedToggleSwitch<int>.size(
            current: controller.selectedFoodPref.value,
            values: const [0, 1],
            height: 45.h,
            indicatorSize: Size.fromWidth(Get.width * 0.5),
            iconOpacity: 1,
            selectedIconScale: 1,
            style: ToggleStyle(
              borderColor: Colors.transparent,
              borderRadius: BorderRadius.circular(12.r),
              backgroundColor: Colors.grey.shade200,
              indicatorColor: controller.foodColor,
            ),
            onChanged: (value) {
              controller.selectedFoodPref.value = value;
            },
            customIconBuilder: (context, value, foreground) {
              return Center(
                child: Text(
                  value.value == 0 ? '🟢 Veg' : '🔴 Non Veg',
                  style: const TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              );
            },
          ),
          AppText(
            text:
                'Select your preferred meal type for lunch and dinner planning.',
            fontSize: 12.sp,
            maxLines: 2,
            style: theme.textTheme.labelSmall!.copyWith(
              color: AppColors.grey500,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildSubmitButton() {
    return SafeArea(
      child: Obx(
        () => Padding(
          padding: const EdgeInsets.fromLTRB(16, 0, 16, 16),
          child: AppButton(
            text: 'Register & Continue',
            onTap: () async => await controller.registerUser(
              controller.numberController.text.trim(),
            ),
            backgroundColor: AppColors.lightPrimary,
            loading: controller.isLoading.value,
          ),
        ),
      ),
    );
  }
}
