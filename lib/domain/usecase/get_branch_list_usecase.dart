import 'package:padmavatiupdated/core/exporters/app_export.dart';

@lazySingleton
class GetBranchListUsecase {
  final AuthRepository _repository;

  GetBranchListUsecase(this._repository);

  Future<BaseResponseModel<List<MasterDataModel>>> call() async {
    return await _repository.getBranchList();
  }
}
