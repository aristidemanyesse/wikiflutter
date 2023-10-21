// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'beforeMatchStat.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BeforeMatchStatImpl _$$BeforeMatchStatImplFromJson(
        Map<String, dynamic> json) =>
    _$BeforeMatchStatImpl(
      id: json['id'] as String? ?? "",
      createdAt: json['createdAt'] as String? ?? "",
      updateAt: json['updateAt'] as String? ?? "",
      deleted: json['deleted'] as bool? ?? false,
      match: json['match'] == null
          ? null
          : Match.fromJson(json['match'] as Map<String, dynamic>),
      team: json['team'] == null
          ? null
          : EditionTeam.fromJson(json['team'] as Map<String, dynamic>),
      ppg: (json['ppg'] as num?)?.toDouble() ?? 0.0,
      scoreElo: (json['scoreElo'] as num?)?.toDouble() ?? 0.0,
      probabiliteElo: (json['probabiliteElo'] as num?)?.toDouble() ?? 0.0,
      gsExpected: (json['gsExpected'] as num?)?.toDouble() ?? 0.0,
      gaExpected: (json['gaExpected'] as num?)?.toDouble() ?? 0.0,
      expectedGoals: json['expectedGoals'] as String? ?? "",
      goalsScored: json['goalsScored'] as int? ?? 0,
      goalsConceded: json['goalsConceded'] as int? ?? 0,
      avgGoalsScored: (json['avgGoalsScored'] as num?)?.toDouble() ?? 0.0,
      avgGoalsConceded: (json['avgGoalsConceded'] as num?)?.toDouble() ?? 0.0,
      avgFoulsFor: (json['avgFoulsFor'] as num?)?.toDouble() ?? 0.0,
      avgFoulsAgainst: (json['avgFoulsAgainst'] as num?)?.toDouble() ?? 0.0,
      nbMatchsGtAvgFouls:
          (json['nbMatchsGtAvgFouls'] as num?)?.toDouble() ?? 0.0,
      avgCornersFor: (json['avgCornersFor'] as num?)?.toDouble() ?? 0.0,
      avgCornersAgainst: (json['avgCornersAgainst'] as num?)?.toDouble() ?? 0.0,
      nbCornersGtAvgFouls:
          (json['nbCornersGtAvgFouls'] as num?)?.toDouble() ?? 0.0,
      avgShotsFor: (json['avgShotsFor'] as num?)?.toDouble() ?? 0.0,
      avgShotsAgainst: (json['avgShotsAgainst'] as num?)?.toDouble() ?? 0.0,
      nbShotsGtAvgFouls: (json['nbShotsGtAvgFouls'] as num?)?.toDouble() ?? 0.0,
      avgShotsTargetFor: (json['avgShotsTargetFor'] as num?)?.toDouble() ?? 0.0,
      avgShotsTargetAgainst:
          (json['avgShotsTargetAgainst'] as num?)?.toDouble() ?? 0.0,
      nbShotsTargetGtAvgFouls:
          (json['nbShotsTargetGtAvgFouls'] as num?)?.toDouble() ?? 0.0,
      avgOffsideFor: (json['avgOffsideFor'] as num?)?.toDouble() ?? 0.0,
      avgOffsideAgainst: (json['avgOffsideAgainst'] as num?)?.toDouble() ?? 0.0,
      nbOffsideGtAvgFouls:
          (json['nbOffsideGtAvgFouls'] as num?)?.toDouble() ?? 0.0,
      avgCardsFor: (json['avgCardsFor'] as num?)?.toDouble() ?? 0.0,
      avgCardsAgainst: (json['avgCardsAgainst'] as num?)?.toDouble() ?? 0.0,
      nbCardsGtAvgFouls: (json['nbCardsGtAvgFouls'] as num?)?.toDouble() ?? 0.0,
      listConfrontations: json['listConfrontations'] as String? ?? "",
      listSimilairesPpg: json['listSimilairesPpg'] as String? ?? "",
      listSimilairesPpg2: json['listSimilairesPpg2'] as String? ?? "",
      listSimilairesBetting: json['listSimilairesBetting'] as String? ?? "",
      listIntercepts: json['listIntercepts'] as String? ?? "",
    );

Map<String, dynamic> _$$BeforeMatchStatImplToJson(
        _$BeforeMatchStatImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'createdAt': instance.createdAt,
      'updateAt': instance.updateAt,
      'deleted': instance.deleted,
      'match': instance.match,
      'team': instance.team,
      'ppg': instance.ppg,
      'scoreElo': instance.scoreElo,
      'probabiliteElo': instance.probabiliteElo,
      'gsExpected': instance.gsExpected,
      'gaExpected': instance.gaExpected,
      'expectedGoals': instance.expectedGoals,
      'goalsScored': instance.goalsScored,
      'goalsConceded': instance.goalsConceded,
      'avgGoalsScored': instance.avgGoalsScored,
      'avgGoalsConceded': instance.avgGoalsConceded,
      'avgFoulsFor': instance.avgFoulsFor,
      'avgFoulsAgainst': instance.avgFoulsAgainst,
      'nbMatchsGtAvgFouls': instance.nbMatchsGtAvgFouls,
      'avgCornersFor': instance.avgCornersFor,
      'avgCornersAgainst': instance.avgCornersAgainst,
      'nbCornersGtAvgFouls': instance.nbCornersGtAvgFouls,
      'avgShotsFor': instance.avgShotsFor,
      'avgShotsAgainst': instance.avgShotsAgainst,
      'nbShotsGtAvgFouls': instance.nbShotsGtAvgFouls,
      'avgShotsTargetFor': instance.avgShotsTargetFor,
      'avgShotsTargetAgainst': instance.avgShotsTargetAgainst,
      'nbShotsTargetGtAvgFouls': instance.nbShotsTargetGtAvgFouls,
      'avgOffsideFor': instance.avgOffsideFor,
      'avgOffsideAgainst': instance.avgOffsideAgainst,
      'nbOffsideGtAvgFouls': instance.nbOffsideGtAvgFouls,
      'avgCardsFor': instance.avgCardsFor,
      'avgCardsAgainst': instance.avgCardsAgainst,
      'nbCardsGtAvgFouls': instance.nbCardsGtAvgFouls,
      'listConfrontations': instance.listConfrontations,
      'listSimilairesPpg': instance.listSimilairesPpg,
      'listSimilairesPpg2': instance.listSimilairesPpg2,
      'listSimilairesBetting': instance.listSimilairesBetting,
      'listIntercepts': instance.listIntercepts,
    };
