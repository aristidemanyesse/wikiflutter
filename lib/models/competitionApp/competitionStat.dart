// This file is "main.dart"
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
import 'package:wikibet/models/competitionApp/edition.dart';
import 'package:wikibet/models/competitionApp/ranking.dart';
part 'competitionStat.freezed.dart';
part 'competitionStat.g.dart';

@freezed
class CompetitionStat with _$CompetitionStat {
  const factory CompetitionStat({
    @Default("") String id,
    @Default("") String createdAt,
    @Default("") String updateAt,
    @Default(false) bool deleted,
    Ranking? ranking,
    Edition? edition,
    @Default(0.0) double avgGoals,
    @Default(0.0) double avgFouls,
    @Default(0.0) double avgCorners,
    @Default(0.0) double avgShots,
    @Default(0.0) double avgShotsTarget,
    @Default(0.0) double avgOffside,
    @Default(0.0) double avgYellowCards,
    @Default(0.0) double avgRedCards,
  }) = _CompetitionStat;

  factory CompetitionStat.fromJson(Map<String, Object?> json) =>
      _$CompetitionStatFromJson(json);
}
