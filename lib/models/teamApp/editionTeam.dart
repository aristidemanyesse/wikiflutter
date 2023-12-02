// This file is "main.dart"
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
import 'package:wikibet/models/competitionApp/editionCompetition.dart';
import 'package:wikibet/models/teamApp/team.dart';
part 'editionTeam.freezed.dart';
part 'editionTeam.g.dart';

@freezed
class EditionTeam with _$EditionTeam {
  const factory EditionTeam({
    @Default("") String id,
    @Default("") String createdAt,
    @Default("") String updateAt,
    @Default(false) bool deleted,
    EditionCompetition? edition,
    Team? team,
  }) = _EditionTeam;

  factory EditionTeam.fromJson(Map<String, Object?> json) =>
      _$EditionTeamFromJson(json);

  static const String editionTeamFragment = """
  fragment EditionTeamFragment on EditionTeamGenericType {
    id
    createdAt
    updateAt
    deleted
    edition{
      ...EditionCompetitionFragment
    }
    team{
      ...TeamFragment
    }
  }
  """;
}
