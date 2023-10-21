// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ligneRanking.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$LigneRankingImpl _$$LigneRankingImplFromJson(Map<String, dynamic> json) =>
    _$LigneRankingImpl(
      id: json['id'] as String? ?? "",
      createdAt: json['createdAt'] as String? ?? "",
      updateAt: json['updateAt'] as String? ?? "",
      deleted: json['deleted'] as bool? ?? false,
      ranking: json['ranking'] == null
          ? null
          : Ranking.fromJson(json['ranking'] as Map<String, dynamic>),
      team: json['team'] == null
          ? null
          : EditionTeam.fromJson(json['team'] as Map<String, dynamic>),
      level: json['level'] as int? ?? 0,
      mj: json['mj'] as int? ?? 0,
      win: json['win'] as int? ?? 0,
      draw: json['draw'] as int? ?? 0,
      lose: json['lose'] as int? ?? 0,
      gs: json['gs'] as int? ?? 0,
      ga: json['ga'] as int? ?? 0,
      gd: json['gd'] as int? ?? 0,
      form: json['form'] as String? ?? "",
      ppg: (json['ppg'] as num?)?.toDouble() ?? 0.0,
      pts: json['pts'] as int? ?? 0,
      cs: json['cs'] as int? ?? 0,
      btts: json['btts'] as int? ?? 0,
      avgGs: (json['avgGs'] as num?)?.toDouble() ?? 0.0,
      avgGa: (json['avgGa'] as num?)?.toDouble() ?? 0.0,
      p15: (json['p15'] as num?)?.toDouble() ?? 0.0,
      p25: (json['p25'] as num?)?.toDouble() ?? 0.0,
      m35: (json['m35'] as num?)?.toDouble() ?? 0.0,
    );

Map<String, dynamic> _$$LigneRankingImplToJson(_$LigneRankingImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'createdAt': instance.createdAt,
      'updateAt': instance.updateAt,
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
      'p15': instance.p15,
      'p25': instance.p25,
      'm35': instance.m35,
    };
