import 'package:padmavatiupdated/core/exporters/app_export.dart';

abstract class PeopleRepository {
  Future<Result<BaseResponseModel<PeopleResponseModel>>> branchUserList(
    UserRequest request,
  );

  Future<Result<BaseResponseModel<ExpireResponseModel>>> expireQrData(
    UserRequest request,
  );
}
