import 'package:padmavatiupdated/core/exporters/app_export.dart';

@lazySingleton
class GetDegreeListUsecase {
  final AuthRepository _repository;

  GetDegreeListUsecase(this._repository);

  Future<BaseResponseModel<List<MasterDataModel>>> call() async {
    return await _repository.getDegreeList();
  }
}
