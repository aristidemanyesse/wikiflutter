// This file is "main.dart"
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
import 'package:wikibet/models/competitionApp/pays.dart';
import 'package:wikibet/models/competitionApp/typeCompetition.dart';
part 'competition.freezed.dart';
part 'competition.g.dart';

@freezed
class Competition with _$Competition {
  const factory Competition({
    @Default("") String id,
    @Default("") String createdAt,
    @Default("") String updatedAt,
    @Default(false) bool deleted,
    @Default("") String identifiant,
    @Default("") String name,
    @Default("") String code,
    @Default("") String logo,
    Pays? pays,
    TypeCompetition? type,
  }) = _Competition;

  factory Competition.fromJson(Map<String, Object?> json) =>
      _$CompetitionFromJson(json);
}
