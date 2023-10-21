// This file is "main.dart"
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
import 'package:wikibet/core/apiservice.dart';
import 'package:wikibet/models/competitionApp/ligneRanking_schema.dart';
import 'package:wikibet/models/competitionApp/ranking.dart';
import 'package:wikibet/models/teamApp/editionTeam.dart';
part 'ligneRanking.freezed.dart';
part 'ligneRanking.g.dart';

@freezed
class LigneRanking with _$LigneRanking {
  const factory LigneRanking({
    @Default("") String id,
    @Default("") String createdAt,
    @Default("") String updateAt,
    @Default(false) bool deleted,
    Ranking? ranking,
    EditionTeam? team,
    @Default(0) int level,
    @Default(0) int mj,
    @Default(0) int win,
    @Default(0) int draw,
    @Default(0) int lose,
    @Default(0) int gs,
    @Default(0) int ga,
    @Default(0) int gd,
    @Default("") String form,
    @Default(0.0) double ppg,
    @Default(0) int pts,
    @Default(0) int cs,
    @Default(0) int btts,
    @Default(0.0) double avgGs,
    @Default(0.0) double avgGa,
    @Default(0.0) double p15,
    @Default(0.0) double p25,
    @Default(0.0) double m35,
  }) = _LigneRanking;

  factory LigneRanking.fromJson(Map<String, Object?> json) =>
      _$LigneRankingFromJson(json);

  static const String ligneRankingFragment = """
  fragment LigneRankingFragment on LigneRankingGenericType {
    id
    createdAt
    updateAt
    deleted
    level
    mj
    win
    draw
    lose
    gs
    ga
    gd
    form
    ppg
    pts
    cs
    btts
    avgGs
    avgGa
    p15
    p25
    m35
    team{
      ...EditionTeamFragment
    }
    ranking{
      ...RankingFragment
    }
  }
  """;

  static Future<List<LigneRanking>> all(Map<String, dynamic> variables) async {
    dynamic datas = await ApiService.request(LigneRankingSchema.ALL, variables);
    List<LigneRanking> items = [];
    for (var jsonTask in datas["searchLigneRanking"]["results"]) {
      items.add(LigneRanking.fromJson(jsonTask));
    }
    return items;
  }
}
