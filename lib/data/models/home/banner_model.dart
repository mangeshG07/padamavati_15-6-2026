import 'package:padmavatiupdated/core/exporters/app_export.dart';
part 'banner_model.g.dart';
part 'banner_model.freezed.dart';

@freezed
abstract class BannerModel with _$BannerModel {
  const factory BannerModel({
    @JsonKey(name: 'popup_status') String? popupStatus,
    String? image,
  }) = _BannerModel;

  factory BannerModel.fromJson(Map<String, dynamic> json) =>
      _$BannerModelFromJson(json);
}
