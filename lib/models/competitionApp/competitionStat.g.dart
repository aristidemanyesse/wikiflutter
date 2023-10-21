// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'competitionStat.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CompetitionStatImpl _$$CompetitionStatImplFromJson(
        Map<String, dynamic> json) =>
    _$CompetitionStatImpl(
      id: json['id'] as String? ?? "",
      createdAt: json['createdAt'] as String? ?? "",
      updateAt: json['updateAt'] as String? ?? "",
      deleted: json['deleted'] as bool? ?? false,
      ranking: json['ranking'] == null
          ? null
          : Ranking.fromJson(json['ranking'] as Map<String, dynamic>),
      edition: json['edition'] == null
          ? null
          : Edition.fromJson(json['edition'] as Map<String, dynamic>),
      avgGoals: (json['avgGoals'] as num?)?.toDouble() ?? 0.0,
      avgFouls: (json['avgFouls'] as num?)?.toDouble() ?? 0.0,
      avgCorners: (json['avgCorners'] as num?)?.toDouble() ?? 0.0,
      avgShots: (json['avgShots'] as num?)?.toDouble() ?? 0.0,
      avgShotsTarget: (json['avgShotsTarget'] as num?)?.toDouble() ?? 0.0,
      avgOffside: (json['avgOffside'] as num?)?.toDouble() ?? 0.0,
      avgYellowCards: (json['avgYellowCards'] as num?)?.toDouble() ?? 0.0,
      avgRedCards: (json['avgRedCards'] as num?)?.toDouble() ?? 0.0,
    );

Map<String, dynamic> _$$CompetitionStatImplToJson(
        _$CompetitionStatImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'createdAt': instance.createdAt,
      'updateAt': instance.updateAt,
      'deleted': instance.deleted,
      'ranking': instance.ranking,
      'edition': instance.edition,
      'avgGoals': instance.avgGoals,
      'avgFouls': instance.avgFouls,
      'avgCorners': instance.avgCorners,
      'avgShots': instance.avgShots,
      'avgShotsTarget': instance.avgShotsTarget,
      'avgOffside': instance.avgOffside,
      'avgYellowCards': instance.avgYellowCards,
      'avgRedCards': instance.avgRedCards,
    };
