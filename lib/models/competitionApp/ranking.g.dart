// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ranking.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RankingImpl _$$RankingImplFromJson(Map<String, dynamic> json) =>
    _$RankingImpl(
      id: json['id'] as String? ?? "",
      createdAt: json['createdAt'] as String? ?? "",
      updateAt: json['updateAt'] as String? ?? "",
      deleted: json['deleted'] as bool? ?? false,
      date: json['date'] as String? ?? "",
      edition: json['edition'] == null
          ? null
          : EditionCompetition.fromJson(
              json['edition'] as Map<String, dynamic>),
      rankingLignes: (json['rankingLignes'] as List<dynamic>?)
          ?.map((e) => LigneRanking.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$RankingImplToJson(_$RankingImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'createdAt': instance.createdAt,
      'updateAt': instance.updateAt,
      'deleted': instance.deleted,
      'date': instance.date,
      'edition': instance.edition,
      'rankingLignes': instance.rankingLignes,
    };
