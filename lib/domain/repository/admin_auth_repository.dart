import 'package:padmavatiupdated/core/exporters/app_export.dart';

abstract class AdminAuthRepository {
  Future<Result<BaseResponseModel<UserModel>>> adminLogin(AdminEntity request);
}
