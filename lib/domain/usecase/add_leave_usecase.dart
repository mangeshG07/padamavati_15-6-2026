import 'package:padmavatiupdated/core/exporters/app_export.dart';

@lazySingleton
class AddLeaveRequestUsecase {
  final RequestRepository _repository;
  AddLeaveRequestUsecase(this._repository);

  Future<Result<BaseResponseModel>> call(AddLeaveRequest request) async {
    return await _repository.addLeaveReq(request);
  }
}
