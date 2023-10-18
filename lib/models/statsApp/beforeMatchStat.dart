// This file is "main.dart"

import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:wikibet/models/teamApp/editionTeam.dart';
import 'package:wikibet/models/fixtureApp/match.dart';
part 'beforeMatchStat.freezed.dart';
part 'beforeMatchStat.g.dart';

@freezed
class BeforeMatchStat with _$BeforeMatchStat {
  const factory BeforeMatchStat(
      {@Default("") String id,
      @Default("") String createdAt,
      @Default("") String updatedAt,
      @Default(false) bool deleted,
      Match? match,
      EditionTeam? team,
      @Default(0.0) double ppg,
      @Default(0.0) double scoreElo,
      @Default(0.0) double probabiliteElo,
      @Default(0.0) double gsExpected,
      @Default(0.0) double gaExpected,
      @Default(0.0) double expectedGoals,
      @Default(0.0) double goalsScored,
      @Default(0.0) double goalsConceded,
      @Default(0.0) double avgGoalsScored,
      @Default(0.0) double avgGoalsConceded,
      @Default(0.0) double avgFoulsFor,
      @Default(0.0) double avgFoulsAgainst,
      @Default(0.0) double nbMatchsGtAvgFouls,
      @Default(0.0) double avgCornersFor,
      @Default(0.0) double avgCornersAgainst,
      @Default(0.0) double nbCornersGtAvgFouls,
      @Default(0.0) double avgShotsFor,
      @Default(0.0) double avgShotsAgainst,
      @Default(0.0) double nbShotsGtAvgFouls,
      @Default(0.0) double avgShotsTargetFor,
      @Default(0.0) double avgShotsTargetAgainst,
      @Default(0.0) double nbShotsTargetGtAvgFouls,
      @Default(0.0) double avgOffsideFor,
      @Default(0.0) double avgOffsideAgainst,
      @Default(0.0) double nbOffsideGtAvgFouls,
      @Default(0.0) double avgCardsFor,
      @Default(0.0) double avgCardsAgainst,
      @Default(0.0) double nbCardsGtAvgFouls,
      @Default("") String listConfrontations,
      @Default("") String listSimilairesPpg,
      @Default("") String listSimilairesPpg2,
      @Default("") String listSimilairesBetting,
      @Default("") String listIntercepts}) = _BeforeMatchStat;

  factory BeforeMatchStat.fromJson(Map<String, Object?> json) =>
      _$BeforeMatchStatFromJson(json);
}
