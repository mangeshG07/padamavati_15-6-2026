import 'package:padmavatiupdated/core/exporters/app_export.dart';
part 'profile_response_model.g.dart';
part 'profile_response_model.freezed.dart';

@freezed
abstract class ProfileResponseModel with _$ProfileResponseModel {
  const factory ProfileResponseModel({
    int? id,
    String? name,
    @JsonKey(name: 'mobile_no') String? mobileNo,
    @JsonKey(name: 'per_address') String? perAddress,
    @JsonKey(name: 'curr_address') String? curAddress,
    @JsonKey(name: 'profile_image') String? profileImage,
    @JsonKey(name: 'degree_id') int? degreeId,
    String? degree,
    String? branch,
  }) = _ProfileResponseModel;

  factory ProfileResponseModel.fromJson(Map<String, dynamic> json) =>
      _$ProfileResponseModelFromJson(json);
}
