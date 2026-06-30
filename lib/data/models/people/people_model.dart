import 'package:padmavatiupdated/core/exporters/app_export.dart';

part 'people_model.freezed.dart';
part 'people_model.g.dart';

@freezed
abstract class PeopleModel with _$PeopleModel {
  const factory PeopleModel({
    String? code,
    String? name,
    @JsonKey(name: 'profile_image') String? profileImage,
  }) = _PeopleModel;

  factory PeopleModel.fromJson(Map<String, dynamic> json) =>
      _$PeopleModelFromJson(json);
}
