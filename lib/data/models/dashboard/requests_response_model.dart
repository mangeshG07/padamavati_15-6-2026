import 'package:padmavatiupdated/core/exporters/app_export.dart';
part 'requests_response_model.freezed.dart';
part 'requests_response_model.g.dart';

@freezed
abstract class RequestsResponseModel with _$RequestsResponseModel {
  const factory RequestsResponseModel({
    @JsonKey(name: 'type') String? type,
    @JsonKey(name: 'total_count') int? totalCount,
    @JsonKey(name: 'total_pages') int? totalPages,
    @JsonKey(name: 'current_page') int? currentPage,
    @JsonKey(name: 'per_page') int? perPage,
    @JsonKey(name: 'requests') List<RequestUserModel>? request,
  }) = _RequestsResponseModel;

  factory RequestsResponseModel.fromJson(Map<String, dynamic> json) =>
      _$RequestsResponseModelFromJson(json);
}
