// This file is "main.dart"
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
import 'package:wikibet/models/fixtureApp/match.dart';
part 'extraInfosMatch.freezed.dart';
part 'extraInfosMatch.g.dart';

@freezed
class ExtraInfosMatch with _$ExtraInfosMatch {
  const factory ExtraInfosMatch({
    @Default("") String id,
    @Default("") String createdAt,
    @Default("") String updateAt,
    @Default(false) bool deleted,
    Match? match,
    @Default(0) int homeShots,
    @Default(0) int awayShots,
    @Default(0) int homeShotsOnTarget,
    @Default(0) int awayShotsOnTarget,
    @Default(0) int homeCorners,
    @Default(0) int awayCorners,
    @Default(0) int homeFouls,
    @Default(0) int awayFouls,
    @Default(0) int homeOffsides,
    @Default(0) int awayOffsides,
    @Default(0) int homeYellowCards,
    @Default(0) int awayYellowCards,
    @Default(0) int homeRedCards,
    @Default(0) int awayRedCards,
  }) = _ExtraInfosMatch;

  factory ExtraInfosMatch.fromJson(Map<String, Object?> json) =>
      _$ExtraInfosMatchFromJson(json);

  static const String extraInfosMatchFragment = """
  fragment ExtraInfosMatchFragment on ExtraInfosMatchGenericType {
    id
    createdAt
    updateAt
    deleted
    homeShots
    awayShots
    homeShotsOnTarget
    awayShotsOnTarget
    homeCorners
    awayCorners
    homeFouls
    awayFouls
    homeOffsides
    awayOffsides
    homeYellowCards
    awayYellowCards
    homeRedCards
    awayRedCards
  }
  """;
}
