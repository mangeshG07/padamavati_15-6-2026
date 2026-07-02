import '../exporters/app_export.dart';

class CustomAppbar extends StatelessWidget implements PreferredSizeWidget {
  final List<Widget>? actions;
  final double? titleSpacing;
  final bool? centerTitle;
  final Color? backgroundColor;
  final String title;
  const CustomAppbar({
    super.key,
    this.centerTitle = false,
    this.actions,
    this.titleSpacing = 0,
    this.title = '',
    this.backgroundColor,
  });

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor:
          backgroundColor ?? Theme.of(context).scaffoldBackgroundColor,
      surfaceTintColor: Colors.white,
      titleSpacing: titleSpacing,
      centerTitle: centerTitle,
      title: AppText(
        text: title,
        fontSize: 22.sp,
        color: Colors.black,
        fontWeight: FontWeight.bold,
      ),
      leading: BackButton(color: Colors.black),
      actions: actions,
      elevation: 0,
    );
  }
}
