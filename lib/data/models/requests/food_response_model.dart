import 'package:padmavatiupdated/core/exporters/app_export.dart';
part 'food_response_model.g.dart';
part 'food_response_model.freezed.dart';

@freezed
abstract class FoodResponseModel with _$FoodResponseModel {
  const factory FoodResponseModel({
    @JsonKey(name: 'total_count') int? totalCount,
    @JsonKey(name: 'total_pages') int? totalPages,
    @JsonKey(name: 'current_page') int? currentPage,
    @JsonKey(name: 'per_page') int? perPage,
    @JsonKey(name: 'special_food_requests')
    List<FoodRequestModel>? foodRequests,
  }) = _FoodResponseModel;

  factory FoodResponseModel.fromJson(Map<String, dynamic> json) =>
      _$FoodResponseModelFromJson(json);
}
