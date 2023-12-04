// This file is "main.dart"
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
import 'package:wikibet/core/apiservice.dart';
import 'package:wikibet/models/competitionApp/editionCompetition.dart';
import 'package:wikibet/models/competitionApp/ligneRanking.dart';
import 'package:wikibet/models/competitionApp/ranking_schema.dart';
part 'ranking.freezed.dart';
part 'ranking.g.dart';

@freezed
class Ranking with _$Ranking {
  const factory Ranking({
    @Default("") String id,
    @Default("") String createdAt,
    @Default("") String updateAt,
    @Default(false) bool deleted,
    @Default("") String date,
    EditionCompetition? edition,
    List<LigneRanking>? rankingLignes,
  }) = _Ranking;

  factory Ranking.fromJson(Map<String, Object?> json) =>
      _$RankingFromJson(json);

  static const String rankingFragment = """
  fragment RankingFragment on RankingGenericType {
    id
    createdAt
    updateAt
    deleted
    date
    edition{
      ...EditionCompetitionFragment
    }
    rankingLignes{
      ...LigneRankingFragment
    }
  }
  """;

  static Future<List<Ranking>> all(Map<String, dynamic> variables) async {
    dynamic datas = await ApiService.request(RankingSchema.ALL, variables);
    List<Ranking> items = [];
    for (var jsonTask in datas["searchRanking"]["results"]) {
      items.add(Ranking.fromJson(jsonTask));
    }
    return items;
  }
}
