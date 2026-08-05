import '../../core/exporters/app_export.dart';

class RegisterRequest {
  final String name;
  final String mobileNo;
  final String gender;
  final String birthdate;
  final String currentAddress;
  final String permanentAddress;
  final String degreeId;
  final String branchId;
  final String messType;
  final String registerFrom;
  final File? profileImage;

  RegisterRequest({
    required this.mobileNo,
    required this.name,
    required this.gender,
    required this.birthdate,
    required this.currentAddress,
    required this.permanentAddress,
    required this.degreeId,
    required this.branchId,
    required this.profileImage,
    required this.messType,
    required this.registerFrom,
  });
}
