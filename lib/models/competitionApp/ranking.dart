// This file is "main.dart"
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
import 'package:wikibet/models/competitionApp/edition.dart';
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
    Edition? edition,
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
  }
  """;
}
