import 'package:padmavatiupdated/core/exporters/app_export.dart';

part 'food_req_model.g.dart';
part 'food_req_model.freezed.dart';

@freezed
abstract class FoodRequestModel with _$FoodRequestModel {
  const factory FoodRequestModel({
    @JsonKey(name: 'id') int? id,
    @JsonKey(name: 'food_type_name') String? foodType,
    @JsonKey(name: 'date') String? forDate,
    @JsonKey(name: 'created_at') String? requestDate,
  }) = _FoodRequestModel;

  factory FoodRequestModel.fromJson(Map<String, dynamic> json) =>
      _$FoodRequestModelFromJson(json);
}
