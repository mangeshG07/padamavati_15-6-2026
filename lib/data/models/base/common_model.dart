import 'package:freezed_annotation/freezed_annotation.dart';

part 'common_model.freezed.dart';
part 'common_model.g.dart';

@freezed
abstract class CommonModel with _$CommonModel {
  const factory CommonModel({required bool status, required String message}) =
      _CommonModel;

  factory CommonModel.fromJson(Map<String, dynamic> json) =>
      _$CommonModelFromJson(json);
}
