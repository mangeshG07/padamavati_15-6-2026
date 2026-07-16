import 'package:padmavatiupdated/core/exporters/app_export.dart';

part 'people_model.freezed.dart';
part 'people_model.g.dart';

@freezed
abstract class PeopleModel with _$PeopleModel {
  const factory PeopleModel({
    String? code,
    String? name,
    @JsonKey(name: 'app_id') int? id,
    @JsonKey(name: 'due_amount') String? dueAmount,
    @JsonKey(name: 'profile_image') String? profileImage,
    @JsonKey(name: 'account_status') String? status,
    @JsonKey(name: 'account_status_label') String? statusLabel,
  }) = _PeopleModel;

  factory PeopleModel.fromJson(Map<String, dynamic> json) =>
      _$PeopleModelFromJson(json);
}
