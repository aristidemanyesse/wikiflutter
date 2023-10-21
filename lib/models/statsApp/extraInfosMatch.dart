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
    @Default(0.0) double homeShots,
    @Default(0.0) double awayShots,
    @Default(0.0) double homeShotsOnTarget,
    @Default(0.0) double awayShotsOnTarget,
    @Default(0.0) double homeCorners,
    @Default(0.0) double awayCorners,
    @Default(0.0) double homeFouls,
    @Default(0.0) double awayFouls,
    @Default(0.0) double homeOffsides,
    @Default(0.0) double awayOffsides,
    @Default(0.0) double homeYellowCards,
    @Default(0.0) double awayYellowCards,
    @Default(0.0) double homeRedCards,
    @Default(0.0) double awayRedCards,
  }) = _ExtraInfosMatch;

  factory ExtraInfosMatch.fromJson(Map<String, Object?> json) =>
      _$ExtraInfosMatchFromJson(json);
}
