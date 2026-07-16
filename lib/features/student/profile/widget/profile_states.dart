import 'package:padmavatiupdated/core/exporters/app_export.dart';

class ProfileStates {
  final profileData = Rxn<ProfileResponseModel>();

  final isUpdating = false.obs;
  final isDeleting = false.obs;

  final isDegreeLoading = false.obs;
  final degreeList = <MasterDataModel>[].obs;

  final isFacilityLoading = false.obs;
  final facilityList = <FacilityModel>[].obs;

  final isPagesLoading = false.obs;
  final pagesList = <FacilityModel>[].obs;

  final selectedDegree = Rxn<String>();

  final currentAddressController = TextEditingController();
  final permAddressController = TextEditingController();
}
