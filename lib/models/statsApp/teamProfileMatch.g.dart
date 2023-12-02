// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'teamProfileMatch.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TeamProfileMatchImpl _$$TeamProfileMatchImplFromJson(
        Map<String, dynamic> json) =>
    _$TeamProfileMatchImpl(
      id: json['id'] as String? ?? "",
      createdAt: json['createdAt'] as String? ?? "",
      updateAt: json['updateAt'] as String? ?? "",
      deleted: json['deleted'] as bool? ?? false,
      team: json['team'] == null
          ? null
          : EditionTeam.fromJson(json['team'] as Map<String, dynamic>),
      match: json['match'] == null
          ? null
          : Match.fromJson(json['match'] as Map<String, dynamic>),
      dynamique: (json['dynamique'] as num?)?.toDouble() ?? 0.0,
      maitrise: (json['maitrise'] as num?)?.toDouble() ?? 0.0,
      attack: (json['attack'] as num?)?.toDouble() ?? 0.0,
      defense: (json['defense'] as num?)?.toDouble() ?? 0.0,
      domination: (json['domination'] as num?)?.toDouble() ?? 0.0,
      ranking: (json['ranking'] as num?)?.toDouble() ?? 0.0,
    );

Map<String, dynamic> _$$TeamProfileMatchImplToJson(
        _$TeamProfileMatchImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'createdAt': instance.createdAt,
      'updateAt': instance.updateAt,
      'deleted': instance.deleted,
      'team': instance.team,
      'match': instance.match,
      'dynamique': instance.dynamique,
      'maitrise': instance.maitrise,
      'attack': instance.attack,
      'defense': instance.defense,
      'domination': instance.domination,
      'ranking': instance.ranking,
    };
