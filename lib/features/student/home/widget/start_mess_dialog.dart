import 'package:padmavatiupdated/core/exporters/app_export.dart';

class MessSelectionPopup extends GetView<HomeController> {
  MessSelectionPopup({super.key}) {
    controller.fetchPackages();
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Dialog(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      child: Container(
        padding: const EdgeInsets.all(20),
        width: Get.width * 0.8.w,
        child: Column(
          spacing: 16.h,
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Header
            const Center(
              child: AppText(
                text: 'Select Mess',
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            _buildStartDate(theme, context),

            Obx(() {
              if (controller.isPackageLoading.value) {
                return AppLoader(size: 2.5, color: AppColors.lightPrimary);
              }
              return AppDropdownField(
                isRequired: true,
                isDynamic: true,
                title: "Choose a package",
                value: controller.selectedPackage.value,
                items: controller.packageList,
                hintText: 'Package',
                validator: AppValidators.required,
                onChanged: (val) {
                  controller.selectedPackage.value = val;
                  controller.updatePackageDetails();
                },
              );
            }),

            /// 🔥 PACKAGE DETAILS CARD
            Obx(() {
              final pkg = controller.selectedPackageDetails.value;

              if (pkg == null) return const SizedBox();

              return Container(
                padding: const EdgeInsets.all(14),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                  color: AppColors.lightPrimary.withValues(alpha: 0.08),
                ),
                child: Column(
                  children: [
                    _infoRow(
                      Icons.confirmation_number,
                      "${pkg.totalCoupons} Coupons",
                    ),
                    _infoRow(Icons.calendar_month, "${pkg.days} Days"),
                    _infoRow(Icons.schedule, "${pkg.messTime} Times/Day"),
                    _infoRow(Icons.repeat, pkg.type ?? ''), // Monthly/Weekly
                    const Divider(),
                    _infoRow(
                      Icons.currency_rupee,
                      "₹${pkg.amount}",
                      isBold: true,
                    ),
                  ],
                ),
              );
            }),

            // Action Buttons
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Expanded(
                  child: AppButton(
                    text: 'Cancel',
                    type: AppButtonType.text,
                    onTap: () => Get.back(),
                    textColor: AppColors.grey600,
                  ),
                ),

                Expanded(
                  child: AppButton(
                    text: 'Submit',
                    backgroundColor: AppColors.lightSecondary,
                    onTap: () => controller.submitSelection(),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  /// 🔹 INFO ROW WIDGET
  Widget _infoRow(IconData icon, String text, {bool isBold = false}) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 6),
      child: Row(
        spacing: 10.w,
        children: [
          Icon(icon, size: 18, color: AppColors.lightPrimary),
          // 10.width,
          Expanded(
            child: AppText(
              text: text,
              fontSize: 13.sp,
              fontWeight: isBold ? FontWeight.bold : FontWeight.w500,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildStartDate(ThemeData theme, BuildContext context) {
    return AppTextField(
      labelStyle: AppTextStyles.labelMedium,
      isRequired: true,
      textStyle: TextStyle(color: theme.colorScheme.onSurface, fontSize: 14.sp),
      focusedBorder: theme.inputDecorationTheme.focusedBorder,
      enabledBorder: theme.inputDecorationTheme.enabledBorder,
      fillColor: theme.cardColor,
      hintStyle: theme.textTheme.labelMedium!.copyWith(color: Colors.grey),
      onTap: () async {
        final pickedDate = await showDatePicker(
          context: context,
          initialDate: DateTime.now().add(const Duration(days: 1)),
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
          controller.setDate(pickedDate);
          // controller.selectedDate.text =
          //     "${pickedDate.day.toString().padLeft(2, '0')}-${pickedDate.month.toString().padLeft(2, '0')}-${pickedDate.year}";
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
      controller: controller.selectedDate,
    );
  }
}
