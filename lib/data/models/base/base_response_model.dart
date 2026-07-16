import 'package:padmavatiupdated/core/exporters/app_export.dart';
part 'base_response_model.freezed.dart';
// part 'base_response_model.g.dart';
//
// @Freezed(genericArgumentFactories: true)
// abstract class BaseResponseModel<T> with _$BaseResponseModel<T> {
//   const factory BaseResponseModel({
//     required CommonModel common,
//     required AppConfigModel android,
//     required AppConfigModel ios,
//
//     T? data,
//   }) = _BaseResponseModel<T>;
//
//   factory BaseResponseModel.fromJson(
//     Map<String, dynamic> json,
//     T Function(Object?) fromJsonT,
//   ) => _$BaseResponseModelFromJson(json, fromJsonT);
// }

@Freezed(genericArgumentFactories: true)
abstract class BaseResponseModel<T> with _$BaseResponseModel<T> {
  const factory BaseResponseModel({
    required CommonModel common,
    required AppConfigModel android,
    required AppConfigModel ios,
    T? data,
  }) = _BaseResponseModel<T>;

  factory BaseResponseModel.fromJson(
    Map<String, dynamic> json,
    T Function(Object?) fromJsonT,
  ) {
    final common = CommonModel.fromJson(json['common']);
    final rawData = json['data'];

    return BaseResponseModel<T>(
      common: common,
      android: AppConfigModel.fromJson(json['android']),
      ios: AppConfigModel.fromJson(json['ios']),

      // ✅ Only parse when success
      data: common.status == true ? _safeParse(rawData, fromJsonT) : null,
    );
  }

  static T? _safeParse<T>(dynamic rawData, T Function(Object?) fromJsonT) {
    if (rawData == null) return null;

    // ❌ API gives [] on failure (extra safety)
    // if (rawData is List) return null;

    try {
      return fromJsonT(rawData);
    } catch (_) {
      return null;
    }
  }
}
