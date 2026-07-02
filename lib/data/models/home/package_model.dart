import 'package:padmavatiupdated/core/exporters/app_export.dart';
part 'package_model.g.dart';
part 'package_model.freezed.dart';

@freezed
abstract class PackageModel with _$PackageModel {
  const factory PackageModel({
    int? id,
    String? name,
    int? amount,
    String? type,
    int? days,
    String? gender,
    @JsonKey(name: 'mess_time') String? messTime,
    @JsonKey(name: 'total_coupons') int? totalCoupons,
  }) = _PackageModel;

  factory PackageModel.fromJson(Map<String, dynamic> json) =>
      _$PackageModelFromJson(json);
}
