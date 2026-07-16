import 'package:padmavatiupdated/core/exporters/app_export.dart';

part 'expire_qr_model.g.dart';
part 'expire_qr_model.freezed.dart';

@freezed
abstract class ExpireQrModel with _$ExpireQrModel {
  const factory ExpireQrModel({
    @JsonKey(name: 'student_name') String? name,
    @JsonKey(name: 'meal_time') String? mealTime,
    @JsonKey(name: 'expired_at') String? expiredAt,
    String? status,
  }) = _ExpireQrModel;

  factory ExpireQrModel.fromJson(Map<String, dynamic> json) =>
      _$ExpireQrModelFromJson(json);
}
