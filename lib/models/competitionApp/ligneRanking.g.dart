// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ligneRanking.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$LigneRankingImpl _$$LigneRankingImplFromJson(Map<String, dynamic> json) =>
    _$LigneRankingImpl(
      id: json['id'] as String? ?? "",
      createdAt: json['createdAt'] as String? ?? "",
      updatedAt: json['updatedAt'] as String? ?? "",
      deleted: json['deleted'] as bool? ?? false,
      ranking: json['ranking'] == null
          ? null
          : Ranking.fromJson(json['ranking'] as Map<String, dynamic>),
      team: json['team'] == null
          ? null
          : EditionTeam.fromJson(json['team'] as Map<String, dynamic>),
      level: (json['level'] as num?)?.toDouble() ?? 0.0,
      mj: (json['mj'] as num?)?.toDouble() ?? 0.0,
      win: (json['win'] as num?)?.toDouble() ?? 0.0,
      draw: (json['draw'] as num?)?.toDouble() ?? 0.0,
      lose: (json['lose'] as num?)?.toDouble() ?? 0.0,
      gs: (json['gs'] as num?)?.toDouble() ?? 0.0,
      ga: (json['ga'] as num?)?.toDouble() ?? 0.0,
      gd: (json['gd'] as num?)?.toDouble() ?? 0.0,
      form: (json['form'] as num?)?.toDouble() ?? 0.0,
      ppg: (json['ppg'] as num?)?.toDouble() ?? 0.0,
      pts: (json['pts'] as num?)?.toDouble() ?? 0.0,
      cs: (json['cs'] as num?)?.toDouble() ?? 0.0,
      btts: (json['btts'] as num?)?.toDouble() ?? 0.0,
      avgGs: (json['avgGs'] as num?)?.toDouble() ?? 0.0,
      avgGa: (json['avgGa'] as num?)?.toDouble() ?? 0.0,
      p1_5: (json['p1_5'] as num?)?.toDouble() ?? 0.0,
      p2_5: (json['p2_5'] as num?)?.toDouble() ?? 0.0,
      m3_5: (json['m3_5'] as num?)?.toDouble() ?? 0.0,
    );

Map<String, dynamic> _$$LigneRankingImplToJson(_$LigneRankingImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'createdAt': instance.createdAt,
      'updatedAt': instance.updatedAt,
      'deleted': instance.deleted,
      'ranking': instance.ranking,
      'team': instance.team,
      'level': instance.level,
      'mj': instance.mj,
      'win': instance.win,
      'draw': instance.draw,
      'lose': instance.lose,
      'gs': instance.gs,
      'ga': instance.ga,
      'gd': instance.gd,
      'form': instance.form,
      'ppg': instance.ppg,
      'pts': instance.pts,
      'cs': instance.cs,
      'btts': instance.btts,
      'avgGs': instance.avgGs,
      'avgGa': instance.avgGa,
      'p1_5': instance.p1_5,
      'p2_5': instance.p2_5,
      'm3_5': instance.m3_5,
    };
