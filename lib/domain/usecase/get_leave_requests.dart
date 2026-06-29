import 'package:padmavatiupdated/core/exporters/app_export.dart';

@lazySingleton
class GetLeaveRequests {
  final RequestRepository _repository;
  GetLeaveRequests(this._repository);

  Future<Result<BaseResponseModel<LeaveResponseModel>>> call(
    UserRequest request,
  ) async {
    return await _repository.leaveRequests(request);
  }
}
