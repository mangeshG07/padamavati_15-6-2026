// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dashboard_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_DashboardModel _$DashboardModelFromJson(Map<String, dynamic> json) =>
    _DashboardModel(
      name: json['name'] as String?,
      roleId: (json['role_id'] as num?)?.toInt(),
      branchId: (json['branch_id'] as num?)?.toInt(),
      branchName: json['branch_name'] as String?,
      todayOverview: json['today_overview'] == null
          ? null
          : OverViewModel.fromJson(
              json['today_overview'] as Map<String, dynamic>,
            ),
      paymentOverview: json['payment_overview'] == null
          ? null
          : PaymentOverview.fromJson(
              json['payment_overview'] as Map<String, dynamic>,
            ),
    );

Map<String, dynamic> _$DashboardModelToJson(_DashboardModel instance) =>
    <String, dynamic>{
      'name': instance.name,
      'role_id': instance.roleId,
      'branch_id': instance.branchId,
      'branch_name': instance.branchName,
      'today_overview': instance.todayOverview,
      'payment_overview': instance.paymentOverview,
    };
