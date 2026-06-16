import 'package:padmavatiupdated/core/exporters/app_export.dart';
part 'home_response_model.freezed.dart';
part 'home_response_model.g.dart';

@freezed
abstract class HomeResponseModel with _$HomeResponseModel {
  const factory HomeResponseModel({
    @JsonKey(name: 'branch_name') String? branchName,
    List<MasterDataModel>? sliders,
    @JsonKey(name: 'mess_request') bool? messRequest,
    @JsonKey(name: 'mess_request_accepted') bool? messRequestAccepted,
    @JsonKey(name: 'payment_transaction_details')
    List<PaymentDetailsModel>? payTransactionDetails,
  }) = _HomeResponseModel;

  factory HomeResponseModel.fromJson(Map<String, dynamic> json) =>
      _$HomeResponseModelFromJson(json);
}
