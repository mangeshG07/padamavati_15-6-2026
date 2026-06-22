import 'package:open_filex/open_filex.dart';
import 'package:flutter_file_downloader/flutter_file_downloader.dart';
import '../exporters/app_export.dart' hide DateFormat;
import 'package:intl/intl.dart';

launchURL(String url) async {
  launchUrl(Uri.parse(url), mode: LaunchMode.externalApplication);
}

Future<void> launchInBrowser(Uri url) async {
  if (!await launchUrl(url, mode: LaunchMode.externalApplication)) {
    throw Exception('Could not launch $url');
  }
}

String formatTime(String date) {
  DateTime dateTime = DateTime.parse(date).toLocal();
  return DateFormat('hh:mm a').format(dateTime);
}

String convertToLocalTime(String time) {
  final parsedTime = DateFormat("HH:mm:ss").parse(time);
  return DateFormat("hh:mm a").format(parsedTime);
}

Widget buildHeadingWithButton({
  required String title,
  required String rightText,
  required var onTap,
  bool showRight = true,
  required ThemeData theme,
}) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      AppText(
        text: title,
        fontSize: 16.sp,
        fontWeight: FontWeight.bold,
        style: theme.textTheme.titleMedium!.copyWith(
          color: theme.colorScheme.onSurface,
        ),
      ),
      if (showRight)
        Container(
          padding: EdgeInsets.symmetric(vertical: 5.0, horizontal: 8),
          decoration: BoxDecoration(
            color: theme.inputDecorationTheme.fillColor,
            borderRadius: BorderRadius.circular(8.r),
          ),
          child: GestureDetector(
            onTap: onTap,
            child: AppText(
              text: rightText,
              fontSize: 12.sp,
              color: AppColors.lightTextLowColor,
            ),
          ),
        ),
    ],
  );
}

Widget badge(
  String text,
  Color color, {
  bool isBgWhite = false,
  Color bgColor = Colors.transparent,
}) {
  return Container(
    padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 4.h),
    decoration: BoxDecoration(
      color: isBgWhite == true ? bgColor : color.withValues(alpha: 0.1),
      borderRadius: BorderRadius.circular(12.r),
    ),
    child: AppText(
      text: text,
      fontSize: 10.sp,
      fontWeight: FontWeight.w500,
      color: color,
    ),
  );
}

Widget buildSectionHeader(
  String title,
  dynamic icon, {
  bool isPrimary = false,
}) {
  final theme = Theme.of(Get.context!);
  final isLight = theme.brightness == Brightness.light;
  return Row(
    children: [
      Container(
        padding: EdgeInsets.all(4.w),
        decoration: BoxDecoration(
          color: isLight
              ? AppColors.lightPrimary.withValues(alpha: 0.1)
              : AppColors.lightPink.withValues(alpha: 0.2),
          borderRadius: BorderRadius.circular(10.r),
        ),
        child: HugeIcon(
          icon: icon,
          size: 14.r,
          color: isLight ? AppColors.lightPrimary : Colors.white,
        ),
      ),
      SizedBox(width: 4.w),
      AppText(
        text: title,
        fontSize: 14.sp,
        maxLines: 2,
        style: theme.textTheme.labelMedium!.copyWith(
          color: isPrimary ? AppColors.lightPrimary : null,
        ),
      ),
    ],
  );
}

Widget buildDetailItem({
  required String label,
  required String value,
  bool isFill = true,
}) {
  final theme = Theme.of(Get.context!);
  return Expanded(
    child: Column(
      children: [
        Container(
          width: double.infinity,
          padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 8.h),
          margin: EdgeInsets.symmetric(vertical: 8.h).copyWith(top: 20),
          decoration: BoxDecoration(
            color: isFill
                ? Get.isDarkMode
                      ? theme.cardColor
                      : AppColors.grey100
                : Colors.transparent,
            borderRadius: BorderRadius.circular(12.r),
            border: Border.all(
              color: !isFill
                  ? Get.isDarkMode
                        ? AppColors.grey700
                        : AppColors.grey300
                  : Colors.transparent,
              width: 0.5.w,
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              AppText(
                text: label,
                textAlign: TextAlign.start,
                fontSize: 12.sp,
                maxLines: 2,
                style: theme.textTheme.labelMedium!.copyWith(
                  color: theme.brightness == Brightness.light
                      ? AppColors.grey600
                      : AppColors.grey500,
                ),
              ),
              SizedBox(height: 2.h),
              AppText(
                text: value.isEmpty ? "-" : value,
                fontSize: 14.sp,
                maxLines: 4,
                style: theme.textTheme.labelLarge,
                fontWeight: FontWeight.w500,
              ),
            ],
          ),
        ),
      ],
    ),
  );
}

// 📦 COMMON SECTION WRAPPER
Widget buildSection(
  dynamic child,
  String title,
  dynamic icon,
  VoidCallback onTap,
  ThemeData theme, {
  bool showEdit = true,
}) {
  return Container(
    padding: EdgeInsets.all(16.w),
    decoration: BoxDecoration(
      color: theme.cardColor,
      borderRadius: BorderRadius.circular(18.r),
      boxShadow: [
        theme.brightness == Brightness.light
            ? BoxShadow(
                color: Colors.black.withValues(alpha: 0.04),
                blurRadius: 8,
                offset: const Offset(0, 2),
              )
            : BoxShadow(
                color: Colors.white.withValues(alpha: 0.04),
                blurRadius: 8,
                offset: const Offset(0, 2),
              ),
      ],
    ),
    child: Column(
      children: [
        Row(
          children: [
            Container(
              padding: EdgeInsets.all(8.w),
              decoration: BoxDecoration(
                color: theme.brightness == Brightness.light
                    ? AppColors.lightPrimary.withValues(alpha: 0.05)
                    : AppColors.lightPink.withValues(alpha: 0.2),
                borderRadius: BorderRadius.circular(12.r),
              ),
              child: HugeIcon(
                icon: icon,
                color: theme.brightness == Brightness.light
                    ? AppColors.lightPrimary
                    : Colors.white,
                size: 20.r,
              ),
            ),
            SizedBox(width: 12.w),
            Expanded(
              child: AppText(
                text: title,
                fontSize: 14.sp,
                maxLines: 2,
                style: theme.textTheme.bodyLarge,
                fontWeight: FontWeight.w600,
              ),
            ),
            if (showEdit)
              GestureDetector(
                onTap: onTap,
                child: HugeIcon(
                  icon: HugeIcons.strokeRoundedEdit02,
                  size: 20.r,
                  color: theme.brightness == Brightness.light
                      ? AppColors.lightTextMidColor
                      : Colors.white,
                ),
              ),
          ],
        ),
        child,
      ],
    ),
  );
}

Widget toggleItem({
  required String title,
  required bool isSelected,
  required bool isLight,
  required VoidCallback onTap,
}) {
  return Expanded(
    child: GestureDetector(
      onTap: onTap,
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 250),
        padding: EdgeInsets.symmetric(vertical: 10.h),
        decoration: BoxDecoration(
          color: isSelected
              ? Theme.of(Get.context!).scaffoldBackgroundColor
              : isLight
              ? AppColors.grey100
              : AppColors.grey900,
          borderRadius: BorderRadius.circular(10.r),
          border: Border.all(
            color: isSelected
                ? Theme.of(Get.context!).dividerTheme.color!
                : Colors.transparent,
          ),
          boxShadow: isSelected
              ? [
                  BoxShadow(
                    color: Colors.black.withValues(alpha: 0.05),
                    blurRadius: 6,
                    offset: const Offset(0, 2),
                  ),
                ]
              : [],
        ),
        child: Center(
          child: AnimatedDefaultTextStyle(
            duration: const Duration(milliseconds: 250),
            style: TextStyle(
              fontSize: 14.sp,
              fontWeight: FontWeight.w600,
              color: isSelected ? AppColors.lightPrimary : Colors.grey,
            ),
            child: Text(title, textAlign: TextAlign.center),
          ),
        ),
      ),
    ),
  );
}

String capitalizeFirst(String text) {
  if (text.isEmpty) return '';
  return text[0].toUpperCase() + text.substring(1);
}

IconData getStatusIcon(String? status) {
  switch (status) {
    case '0':
      return Icons.check; // ✔
    case '1':
      return Icons.done_all; // ✔✔
    case '2':
      return Icons.done_all; // blue ✔✔
    default:
      return Icons.access_time;
  }
}

String formatDate(String inputDate) {
  DateTime parsedDate = DateTime.parse(inputDate);
  String formattedDate = DateFormat('dd/MM/yyyy').format(parsedDate);
  return formattedDate;
}

Future<void> openWhatsApp(String number, String msg) async {
  final formattedPhone = number.replaceAll('+', '');
  final uri = Uri.parse(
    'https://wa.me/$formattedPhone?text=${Uri.encodeComponent(msg)}',
  );

  if (await canLaunchUrl(uri)) {
    await launchUrl(uri, mode: LaunchMode.externalApplication);
  } else {
    Get.snackbar(
      'Error',
      'WhatsApp not installed',
      snackPosition: SnackPosition.BOTTOM,
    );
  }
}

Color getStatusColor(String status) {
  switch (status) {
    case 'Pending':
      return Colors.orange;
    case 'Approved':
      return Colors.green;
    case 'Rejected':
      return Colors.red;
    default:
      return Colors.grey;
  }
}

BoxDecoration buildCardDecoration({bool isUsed = false}) {
  return BoxDecoration(
    color: Colors.white,
    borderRadius: isUsed
        ? BorderRadius.vertical(top: Radius.circular(16.r))
        : BorderRadius.circular(16.r),
    boxShadow: [
      BoxShadow(
        color: Colors.black.withValues(alpha: 0.05),
        blurRadius: 12.r,
        offset: const Offset(0, 4),
        spreadRadius: 0,
      ),
      BoxShadow(
        color: Colors.black.withValues(alpha: 0.02),
        blurRadius: 4.r,
        offset: const Offset(0, 2),
      ),
    ],
  );
}

Widget buildBulletPoint(ThemeData theme, {required String text}) {
  return Row(
    children: [
      // Bullet point
      Container(
        margin: EdgeInsets.only(right: 8.w),
        width: 8.r,
        height: 8.r,
        decoration: BoxDecoration(
          color: AppColors.lightPrimary,
          shape: BoxShape.circle,
        ),
      ),
      // Text
      Expanded(
        child: AppText(
          text: text,
          maxLines: 4,
          fontSize: 12.sp,
          color: Colors.grey,
          style: theme.textTheme.bodyMedium,
          textAlign: TextAlign.start,
        ),
      ),
    ],
  );
}

Widget paddedIcon({dynamic icon, required Color color}) {
  return Padding(
    padding: const EdgeInsets.all(4.0),
    child: HugeIcon(icon: icon, color: color),
  );
}

void showError(String message) {
  CustomSnackbar.show(
    message: message,
    context: Get.context!,
    type: SnackbarType.error,
  );
}

void showSuccess(String message) {
  CustomSnackbar.show(
    message: message,
    context: Get.context!,
    type: SnackbarType.success,
  );
}

Future<void> downloadFile(String url) async {
  final fileName = Uri.parse(url).pathSegments.last;

  // showToastNormal('Starting download for "$fileName"...');

  // Start file download
  FileDownloader.downloadFile(
    url: url,
    name: fileName,
    onDownloadCompleted: (String filePath) async {
      final file = File(filePath);
      // print(fil/e);
      // Try to open the downloaded file
      await OpenFilex.open(file.path);
    },
    onDownloadError: (String errorMessage) {
      print('errorMessage');
      print(errorMessage);
      // Notify user about download failure
      Get.snackbar(
        'Download Failed',
        'Could not download "$fileName". Please try again.',
        snackPosition: SnackPosition.BOTTOM,
        backgroundColor: Colors.white,
        colorText: Colors.black,
      );
    },
  );
}
