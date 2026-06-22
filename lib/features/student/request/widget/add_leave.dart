import '../../../../core/exporters/app_export.dart';

class AddLeave extends GetView<RequestController> {
  const AddLeave({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Form(
      key: controller.leaveKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        spacing: 12.h,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              AppText(
                text: 'Leave Request',
                fontSize: 16.sp,
                fontWeight: FontWeight.bold,
              ),
              GestureDetector(
                onTap: () => Get.back(),
                child: HugeIcon(icon: HugeIcons.strokeRoundedCancel01),
              ),
            ],
          ),
          _buildDate(theme, context, controller.fromDate, 'From Date:'),
          _buildDate(theme, context, controller.toDate, 'To Date:'),
          Obx(
            () => AppText(
              text: 'Leave Days: ${controller.calculatedDays.value}',
              fontSize: 14.sp,
              style: const TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(height: 20.h),
          AppButton(
            text: 'Submit Request',
            onTap: () {
              if (controller.leaveKey.currentState!.validate()) {}
            },
            backgroundColor: AppColors.lightSecondary,
          ),
        ],
      ),
    );
  }

  Widget _buildDate(
    ThemeData theme,
    BuildContext context,
    TextEditingController ctrl,
    String title,
  ) {
    final isFromDate = title == 'From Date:';

    return AppTextField(
      labelStyle: AppTextStyles.labelMedium,
      isRequired: true,
      textStyle: TextStyle(color: theme.colorScheme.onSurface, fontSize: 14.sp),
      focusedBorder: theme.inputDecorationTheme.focusedBorder,
      enabledBorder: theme.inputDecorationTheme.enabledBorder,
      fillColor: theme.cardColor,
      hintStyle: theme.textTheme.labelMedium!.copyWith(color: Colors.grey),

      onTap: () async {
        // 🔥 Dynamic firstDate logic
        DateTime firstDate;

        if (isFromDate) {
          firstDate = DateTime.now().add(const Duration(days: 1));
        } else {
          if (controller.fromDate.text.isEmpty) return;

          firstDate = DateTime.parse(
            controller.fromDate.text,
          ).add(const Duration(days: 1));
        }

        final DateTime? pickedDate = await showDatePicker(
          context: context,
          initialDate: firstDate,
          firstDate: firstDate,
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
          final formatted =
              "${pickedDate.year}-${pickedDate.month.toString().padLeft(2, '0')}-${pickedDate.day.toString().padLeft(2, '0')}";

          ctrl.text = formatted;

          // ✅ If From Date → auto set To Date (+1)
          if (isFromDate) {
            final nextDay = pickedDate.add(const Duration(days: 1));

            controller.toDate.text =
                "${nextDay.year}-${nextDay.month.toString().padLeft(2, '0')}-${nextDay.day.toString().padLeft(2, '0')}";
          }

          // ✅ Calculate days
          if (controller.fromDate.text.isNotEmpty &&
              controller.toDate.text.isNotEmpty) {
            final from = DateTime.parse(controller.fromDate.text);
            final to = DateTime.parse(controller.toDate.text);

            controller.calculateNumberOfDays(from, to);
          }
        }
      },

      validator: AppValidators.required,
      suffixIcon: Icon(
        Icons.calendar_today,
        size: 20.r,
        color: AppColors.grey400,
      ),
      readOnly: true,
      label: title,
      hint: title,
      filled: true,
      controller: ctrl,
    );
  }
}
