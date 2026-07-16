import 'package:padmavatiupdated/core/exporters/app_export.dart';

@LazySingleton(as: PeopleRepository)
class PeopleRepositoryImpl implements PeopleRepository {
  final ApiService _apiService;

  PeopleRepositoryImpl(this._apiService);

  @override
  Future<Result<BaseResponseModel<PeopleResponseModel>>> branchUserList(
    UserRequest request,
  ) async {
    try {
      final res = await _apiService.branchUserList(
        request.userId,
        request.pageNo,
        request.type,
      );

      if (res.common.status == true) {
        return Success(res);
      } else {
        return Failure(res.common.message);
      }
    } catch (error) {
      return Failure('Something went wrong.');
    }
  }

  @override
  Future<Result<BaseResponseModel<ExpireResponseModel>>> expireQrData(
    UserRequest request,
  ) async {
    try {
      final res = await _apiService.expireQrData(
        request.userId,
        request.pageNo,
        request.type,
      );

      if (res.common.status == true) {
        return Success(res);
      } else {
        return Failure(res.common.message);
      }
    } catch (error) {
      return Failure('Something went wrong.');
    }
  }
}
