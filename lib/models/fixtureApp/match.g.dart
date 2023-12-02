// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'match.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MatchImpl _$$MatchImplFromJson(Map<String, dynamic> json) => _$MatchImpl(
      id: json['id'] as String? ?? "",
      createdAt: json['createdAt'] as String? ?? "",
      updateAt: json['updateAt'] as String? ?? "",
      deleted: json['deleted'] as bool? ?? false,
      name: json['name'] as String? ?? "",
      date: json['date'] ?? "",
      hour: json['hour'] ?? "",
      home: json['home'] == null
          ? null
          : EditionTeam.fromJson(json['home'] as Map<String, dynamic>),
      away: json['away'] == null
          ? null
          : EditionTeam.fromJson(json['away'] as Map<String, dynamic>),
      edition: json['edition'] == null
          ? null
          : EditionCompetition.fromJson(
              json['edition'] as Map<String, dynamic>),
      resultMatch: (json['resultMatch'] as List<dynamic>?)
          ?.map((e) => ResultMatch.fromJson(e as Map<String, dynamic>))
          .toList(),
      beforeStatMatch: (json['beforeStatMatch'] as List<dynamic>?)
          ?.map((e) => BeforeMatchStat.fromJson(e as Map<String, dynamic>))
          .toList(),
      extraInfoMatch: (json['extraInfoMatch'] as List<dynamic>?)
          ?.map((e) => ExtraInfosMatch.fromJson(e as Map<String, dynamic>))
          .toList(),
      predictionMatch: (json['predictionMatch'] as List<dynamic>?)
          ?.map((e) => Prediction.fromJson(e as Map<String, dynamic>))
          .toList(),
      matchProfile: (json['matchProfile'] as List<dynamic>?)
          ?.map((e) => TeamProfileMatch.fromJson(e as Map<String, dynamic>))
          .toList(),
      isFinished: json['isFinished'] as bool? ?? false,
      isPosted: json['isPosted'] as bool? ?? false,
      isFirstMatch: json['isFirstMatch'] as bool? ?? false,
      isPredict: json['isPredict'] as bool? ?? false,
      isCompared: json['isCompared'] as bool? ?? false,
      isComparedElo: json['isComparedElo'] as bool? ?? false,
      isFacted: json['isFacted'] as bool? ?? false,
      isStated: json['isStated'] as bool? ?? false,
    );

Map<String, dynamic> _$$MatchImplToJson(_$MatchImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'createdAt': instance.createdAt,
      'updateAt': instance.updateAt,
      'deleted': instance.deleted,
      'name': instance.name,
      'date': instance.date,
      'hour': instance.hour,
      'home': instance.home,
      'away': instance.away,
      'edition': instance.edition,
      'resultMatch': instance.resultMatch,
      'beforeStatMatch': instance.beforeStatMatch,
      'extraInfoMatch': instance.extraInfoMatch,
      'predictionMatch': instance.predictionMatch,
      'matchProfile': instance.matchProfile,
      'isFinished': instance.isFinished,
      'isPosted': instance.isPosted,
      'isFirstMatch': instance.isFirstMatch,
      'isPredict': instance.isPredict,
      'isCompared': instance.isCompared,
      'isComparedElo': instance.isComparedElo,
      'isFacted': instance.isFacted,
      'isStated': instance.isStated,
    };
