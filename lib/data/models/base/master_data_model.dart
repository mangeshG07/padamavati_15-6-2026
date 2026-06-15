import 'package:padmavatiupdated/core/exporters/app_export.dart';

part 'master_data_model.freezed.dart';
part 'master_data_model.g.dart';

@freezed
abstract class MasterDataModel with _$MasterDataModel {
  const factory MasterDataModel({
    required int id,
    required String name,
    String? address,
    String? image,
  }) = _MasterDataModel;

  factory MasterDataModel.fromJson(Map<String, dynamic> json) =>
      _$MasterDataModelFromJson(json);
}
