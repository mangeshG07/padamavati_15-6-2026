import 'package:padmavatiupdated/core/exporters/app_export.dart';

@lazySingleton
class GetAdminLeaveRequests {
  final AdminRequestRepository _repository;
  GetAdminLeaveRequests(this._repository);

  Future<Result<BaseResponseModel<LeaveResponseModel>>> call(
    UserRequest request,
  ) async {
    return await _repository.adminLeaveRequest(request);
  }
}
