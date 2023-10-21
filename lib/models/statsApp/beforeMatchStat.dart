// This file is "main.dart"

import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:wikibet/core/apiservice.dart';
import 'package:wikibet/models/statsApp/beforeMatchStat_schema.dart';
import 'package:wikibet/models/teamApp/editionTeam.dart';
import 'package:wikibet/models/fixtureApp/match.dart';
part 'beforeMatchStat.freezed.dart';
part 'beforeMatchStat.g.dart';

@freezed
class BeforeMatchStat with _$BeforeMatchStat {
  const factory BeforeMatchStat(
      {@Default("") String id,
      @Default("") String createdAt,
      @Default("") String updateAt,
      @Default(false) bool deleted,
      Match? match,
      EditionTeam? team,
      @Default(0.0) double ppg,
      @Default(0.0) double scoreElo,
      @Default(0.0) double probabiliteElo,
      @Default(0.0) double gsExpected,
      @Default(0.0) double gaExpected,
      @Default("") String expectedGoals,
      @Default(0) int goalsScored,
      @Default(0) int goalsConceded,
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

  static const String beforeMatchStatFragment = r"""
  fragment BeforeMatchStatFragment on BeforeMatchStatGenericType {
    id
    createdAt
    updateAt
    deleted
    ppg
    scoreElo
    probabiliteElo
    gsExpected
    gaExpected
    expectedGoals
    goalsScored
    goalsConceded
    avgGoalsScored
    avgGoalsConceded
    avgFoulsFor
    avgFoulsAgainst
    nbMatchsGtAvgFouls
    avgCornersFor
    avgCornersAgainst
    nbCornersGtAvgFouls
    avgShotsFor
    avgShotsAgainst
    nbShotsGtAvgFouls
    avgShotsTargetFor
    avgShotsTargetAgainst
    nbShotsTargetGtAvgFouls
    avgOffsideFor
    avgOffsideAgainst
    nbOffsideGtAvgFouls
    avgCardsFor
    avgCardsAgainst
    nbCardsGtAvgFouls
    team{
      ...EditionTeamFragment
    }
  }
  """;

  static Future<List<BeforeMatchStat>> all(
      Map<String, dynamic> variables) async {
    dynamic datas =
        await ApiService.request(BeforeMatchStatSchema.ALL, variables);
    List<BeforeMatchStat> items = [];
    for (var jsonTask in datas["searchBeforeMatchStat"]["results"]) {
      items.add(BeforeMatchStat.fromJson(jsonTask));
    }
    return items;
  }
}
