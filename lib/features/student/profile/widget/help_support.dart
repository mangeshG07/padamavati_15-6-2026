import '../../../../core/exporters/app_export.dart';

class HelpAndSupport extends StatefulWidget {
  const HelpAndSupport({super.key});

  @override
  State<HelpAndSupport> createState() => _HelpAndSupportState();
}

class _HelpAndSupportState extends State<HelpAndSupport> {
  final _controller = Get.find<ProfileController>();

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      checkInternetAndShowPopup();
      _controller.fetchLegalPage();
    });
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(100.h),
        child: GradientAppbar(title: 'Help And Support', showBack: true),
      ),
      body: Obx(
        () {
          final state = _controller.state;

          if (state.isPagesLoading.value) {
            return _buildShimmerLoader(theme);
          }
          if (state.pagesList.isEmpty) {
            return _buildEmptyState();
          }
          return ListView.separated(
            padding: EdgeInsets.symmetric(vertical: 8.h),
            itemCount: state.pagesList.length,
            separatorBuilder: (_, __) => Divider(
              color: theme.dividerTheme.color,
              indent: Get.width * 0.04,
              endIndent: Get.width * 0.04,
              height: 1,
            ),
            itemBuilder: (context, index) {
              final page = state.pagesList[index];
              return ListTile(
                onTap: () => Get.toNamed(Routes.policyData, arguments: page),
                title: AppText(
                  text: page.name,
                  fontSize: 16.sp,
                  maxLines: 2,
                  style: theme.textTheme.titleMedium,
                ),
                trailing: Icon(
                  Icons.arrow_forward_ios_rounded,
                  size: 16.r,
                  color: AppColors.grey500,
                ),
                contentPadding: EdgeInsets.symmetric(
                  horizontal: Get.width * 0.04,
                  vertical: 4.h,
                ),
              );
            },
          );
        },

        // _controller.isPagesLoading.isTrue
        //     ?
        //
        //
        // _buildShimmerLoader(theme)
        //     : _controller.pagesList.isEmpty
        //     ? _buildEmptyState()
        //     : ,
      ),
    );
  }

  SingleChildScrollView _buildShimmerLoader(ThemeData theme) {
    return SingleChildScrollView(
      child: CustomShimmerWidget.list(
        baseColor: theme.brightness == Brightness.light
            ? Colors.grey.shade300
            : Colors.grey.shade800,
        highlightColor: theme.brightness == Brightness.light
            ? Colors.grey.shade100
            : Colors.grey.shade700,
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
        itemCount: 10,
        width: double.infinity,
        height: Get.height * 0.08.h,
      ),
    );
  }

  Widget _buildEmptyState() {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(Icons.help_outline, size: 64.r, color: AppColors.grey500),
          SizedBox(height: 16.h),
          AppText(
            text: 'No help articles available',
            fontSize: 16.sp,
            color: AppColors.grey600,
          ),
        ],
      ),
    );
  }
}
