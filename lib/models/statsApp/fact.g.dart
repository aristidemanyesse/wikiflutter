// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'fact.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$FactImpl _$$FactImplFromJson(Map<String, dynamic> json) => _$FactImpl(
      id: json['id'] as String? ?? "",
      createdAt: json['createdAt'] as String? ?? "",
      updateAt: json['updateAt'] as String? ?? "",
      deleted: json['deleted'] as bool? ?? false,
      type: json['type'] == null
          ? null
          : TypeFact.fromJson(json['type'] as Map<String, dynamic>),
      team: json['team'] == null
          ? null
          : EditionTeam.fromJson(json['team'] as Map<String, dynamic>),
      fullTime: json['fullTime'] as bool? ?? false,
      allMatches: json['allMatches'] as bool? ?? false,
      total: json['total'] as int? ?? 0,
      success: json['success'] as int? ?? 0,
      pct: (json['pct'] as num?)?.toDouble() ?? 0.0,
    );

Map<String, dynamic> _$$FactImplToJson(_$FactImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'createdAt': instance.createdAt,
      'updateAt': instance.updateAt,
      'deleted': instance.deleted,
      'type': instance.type,
      'team': instance.team,
      'fullTime': instance.fullTime,
      'allMatches': instance.allMatches,
      'total': instance.total,
      'success': instance.success,
      'pct': instance.pct,
    };
