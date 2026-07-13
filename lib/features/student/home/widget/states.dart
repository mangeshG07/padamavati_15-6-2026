import '../../../../core/exporters/app_export.dart';

class HomeState {
  final RxBool isHomeLoading = false.obs;
  final RxBool isPackageLoading = false.obs;
  final RxBool isStarting = false.obs;

  final RxString branchName = ''.obs;

  final RxList<MasterDataModel> sliders = <MasterDataModel>[].obs;
  final RxList<PackageModel> packages = <PackageModel>[].obs;
  final RxList<PaymentDetailsModel> payments = <PaymentDetailsModel>[].obs;
  final RxList<QRModel> todaysQR = <QRModel>[].obs;
  final RxBool isRequested = false.obs;
  final RxBool isAccepted = false.obs;

  final Rxn<String> selectedPackageId = Rxn<String>();
  final Rxn<PackageModel> selectedPackage = Rxn<PackageModel>();
}
