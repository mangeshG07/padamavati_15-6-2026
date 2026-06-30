import 'package:padmavatiupdated/core/exporters/app_export.dart';

part 'people_response_model.freezed.dart';
part 'people_response_model.g.dart';

@freezed
abstract class PeopleResponseModel with _$PeopleResponseModel {
  const factory PeopleResponseModel({
    @JsonKey(name: 'total_count') int? totalCount,
    @JsonKey(name: 'total_pages') int? totalPages,
    @JsonKey(name: 'current_page') int? currentPage,
    @JsonKey(name: 'per_page') int? perPage,
    List<PeopleModel>? users,
  }) = _PeopleResponseModel;

  factory PeopleResponseModel.fromJson(Map<String, dynamic> json) =>
      _$PeopleResponseModelFromJson(json);
}
