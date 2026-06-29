import 'package:padmavatiupdated/core/exporters/app_export.dart';

@lazySingleton
class FoodItemsUsecase {
  final RequestRepository _repository;

  FoodItemsUsecase(this._repository);

  Future<Result<BaseResponseModel<List<MasterDataModel>>>>
  call() async {
    return await _repository.specialFoodItems();
  }
}
