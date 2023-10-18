// This file is "main.dart"
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
import 'package:wikibet/models/competitionApp/editionCompetition.dart';
import 'package:wikibet/models/teamApp/editionTeam.dart';
part 'match.freezed.dart';
part 'match.g.dart';

@freezed
class Match with _$Match {
  const factory Match({
    @Default("") String id,
    @Default("") String createdAt,
    @Default("") String updatedAt,
    @Default(false) bool deleted,
    @Default("") String name,
    @Default("") date,
    @Default("") hour,
    EditionTeam? home,
    EditionTeam? away,
    EditionCompetition? edition,
    @Default(false) bool isFinished,
    @Default(false) bool isPosted,
    @Default(false) bool isFirstMatch,
    @Default(false) bool isPredict,
    @Default(false) bool isCompared,
    @Default(false) bool isComparedElo,
    @Default(false) bool isFacted,
    @Default(false) bool isStated,
  }) = _Match;

  factory Match.fromJson(Map<String, Object?> json) => _$MatchFromJson(json);
}
