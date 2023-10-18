// This file is "main.dart"
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
import 'package:wikibet/models/competitionApp/ranking.dart';
import 'package:wikibet/models/teamApp/editionTeam.dart';
part 'ligneRanking.freezed.dart';
part 'ligneRanking.g.dart';

@freezed
class LigneRanking with _$LigneRanking {
  const factory LigneRanking({
    @Default("") String id,
    @Default("") String createdAt,
    @Default("") String updatedAt,
    @Default(false) bool deleted,
    Ranking? ranking,
    EditionTeam? team,
    @Default(0.0) double level,
    @Default(0.0) double mj,
    @Default(0.0) double win,
    @Default(0.0) double draw,
    @Default(0.0) double lose,
    @Default(0.0) double gs,
    @Default(0.0) double ga,
    @Default(0.0) double gd,
    @Default(0.0) double form,
    @Default(0.0) double ppg,
    @Default(0.0) double pts,
    @Default(0.0) double cs,
    @Default(0.0) double btts,
    @Default(0.0) double avgGs,
    @Default(0.0) double avgGa,
    @Default(0.0) double p1_5,
    @Default(0.0) double p2_5,
    @Default(0.0) double m3_5,
  }) = _LigneRanking;

  factory LigneRanking.fromJson(Map<String, Object?> json) =>
      _$LigneRankingFromJson(json);
}
