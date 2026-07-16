import 'package:padmavatiupdated/core/exporters/app_export.dart';

part 'expire_res_model.freezed.dart';
part 'expire_res_model.g.dart';

@freezed
abstract class ExpireResponseModel with _$ExpireResponseModel {
  const factory ExpireResponseModel({
    @JsonKey(name: 'total_count') int? totalCount,
    @JsonKey(name: 'total_pages') int? totalPages,
    @JsonKey(name: 'current_page') int? currentPage,
    @JsonKey(name: 'per_page') int? perPage,
    @JsonKey(name: 'expired_qrs') List<ExpireQrModel>? qrList,
  }) = _ExpireResponseModel;

  factory ExpireResponseModel.fromJson(Map<String, dynamic> json) =>
      _$ExpireResponseModelFromJson(json);
}
