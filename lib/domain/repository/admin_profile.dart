import 'package:padmavatiupdated/core/exporters/app_export.dart';

abstract class AdminProfileRepository {
  Future<Result<BaseResponseModel<ProfileResponseModel>>> adminProfile(
    UserRequest request,
  );
}
