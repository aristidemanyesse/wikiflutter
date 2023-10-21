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
      match: json['match'] == null
          ? null
          : Match.fromJson(json['match'] as Map<String, dynamic>),
      team: json['team'] == null
          ? null
          : EditionTeam.fromJson(json['team'] as Map<String, dynamic>),
      fullTime: json['fullTime'] as String? ?? "",
      allMatches: json['allMatches'] as String? ?? "",
      total: json['total'] as String? ?? "",
      success: json['success'] as bool? ?? false,
      pct: (json['pct'] as num?)?.toDouble() ?? 0.0,
    );

Map<String, dynamic> _$$FactImplToJson(_$FactImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'createdAt': instance.createdAt,
      'updateAt': instance.updateAt,
      'deleted': instance.deleted,
      'type': instance.type,
      'match': instance.match,
      'team': instance.team,
      'fullTime': instance.fullTime,
      'allMatches': instance.allMatches,
      'total': instance.total,
      'success': instance.success,
      'pct': instance.pct,
    };
