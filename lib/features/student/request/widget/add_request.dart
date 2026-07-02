import '../../../../core/exporters/app_export.dart';

class AddRequest extends GetView<RequestController> {
  const AddRequest({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Form(
      key: controller.requestKey,
      child: Column(
        spacing: 12.h,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              AppText(
                text: 'Special Food Request',
                fontSize: 16.sp,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
              GestureDetector(
                onTap: () => Get.back(),
                child: HugeIcon(
                  icon: HugeIcons.strokeRoundedCancel01,
                  color: Colors.black,
                ),
              ),
            ],
          ),
          _buildDate(theme, context),
          Obx(
            () => AppDropdownField(
              isRequired: true,
              isDynamic: true,
              title: "Select Your Food",
              value: controller.selectedFood.value,
              items: controller.foodItemsList,
              hintText: 'Food',
              validator: AppValidators.required,
              onChanged: (val) => controller.selectedFood.value = val,
            ),
          ),
          SizedBox(height: 20.h),
          Obx(
            () => AppButton(
              text: 'Submit Request',
              loading: controller.isAddFoodLoading.value,
              onTap: () async {
                if (controller.requestKey.currentState!.validate()) {
                  await controller.addFoodRequest();
                }
              },
              backgroundColor: AppColors.lightSecondary,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildDate(ThemeData theme, BuildContext context) {
    DateTime fromDate = DateTime.now().add(const Duration(days: 1));
    return AppTextField(
      labelStyle: AppTextStyles.labelMedium.copyWith(color: Colors.black),
      isRequired: true,
      textStyle: TextStyle(color: Colors.black, fontSize: 14.sp),
      focusedBorder: buildOutlineInputBorder(),
      enabledBorder: buildOutlineInputBorder(),
      fillColor: Colors.white,
      hintStyle: theme.textTheme.labelMedium!.copyWith(color: Colors.grey),
      onTap: () async {
        final DateTime? pickedDate = await showDatePicker(
          context: context,
          initialDate: fromDate,
          firstDate: DateTime.now().add(const Duration(days: 1)),
          lastDate: DateTime(2100),
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
          controller.dateController.text =
              "${pickedDate.year}/${pickedDate.month.toString().padLeft(2, '0')}/${pickedDate.day.toString().padLeft(2, '0')}";
        }
      },
      validator: AppValidators.required,
      suffixIcon: Icon(
        Icons.calendar_today,
        size: 20.r,
        color: AppColors.grey400,
      ),
      readOnly: true,
      label: 'Select Date',
      hint: 'Select Date',
      filled: true,
      controller: controller.dateController,
    );
  }
}
