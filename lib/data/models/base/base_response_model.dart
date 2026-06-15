import 'package:padmavatiupdated/core/exporters/app_export.dart';
part 'base_response_model.freezed.dart';
part 'base_response_model.g.dart';

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
  ) => _$BaseResponseModelFromJson(json, fromJsonT);
}
