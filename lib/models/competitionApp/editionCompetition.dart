// This file is "main.dart"
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
import 'package:wikibet/models/competitionApp/competition.dart';
import 'package:wikibet/models/competitionApp/edition.dart';
import 'package:wikibet/models/competitionApp/pays.dart';
import 'package:wikibet/models/competitionApp/typeCompetition.dart';
part 'editionCompetition.freezed.dart';
part 'editionCompetition.g.dart';

@freezed
class EditionCompetition with _$EditionCompetition {
  const factory EditionCompetition({
    @Default("") String id,
    @Default("") String createdAt,
    @Default("") String updatedAt,
    @Default(false) bool deleted,
    @Default("") String startDate,
    @Default("") String finishDate,
    @Default(false) bool isFinished,
    Edition? editon,
    Competition? competition,
  }) = _EditionCompetition;

  factory EditionCompetition.fromJson(Map<String, Object?> json) =>
      _$EditionCompetitionFromJson(json);
}
