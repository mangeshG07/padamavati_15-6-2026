import 'package:padmavatiupdated/core/exporters/app_export.dart';

@lazySingleton
class GetBranchUsersUsecase {
  final PeopleRepository _repository;
  GetBranchUsersUsecase(this._repository);

  Future<Result<BaseResponseModel<PeopleResponseModel>>> call(
    UserRequest request,
  ) async {
    return await _repository.branchUserList(request);
  }
}
