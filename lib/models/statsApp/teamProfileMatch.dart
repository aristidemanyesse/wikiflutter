// This file is "main.dart"
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:wikibet/models/teamApp/editionTeam.dart';
import 'package:wikibet/models/fixtureApp/match.dart';
part 'teamProfileMatch.freezed.dart';
part 'teamProfileMatch.g.dart';

@freezed
class TeamProfileMatch with _$TeamProfileMatch {
  const factory TeamProfileMatch({
    @Default("") String id,
    @Default("") String createdAt,
    @Default("") String updateAt,
    @Default(false) bool deleted,
    EditionTeam? team,
    Match? match,
    @Default(0.0) double dynamique,
    @Default(0.0) double maitrise,
    @Default(0.0) double attack,
    @Default(0.0) double defense,
    @Default(0.0) double domination,
    @Default(0.0) double ranking,
  }) = _TeamProfileMatch;

  factory TeamProfileMatch.fromJson(Map<String, Object?> json) =>
      _$TeamProfileMatchFromJson(json);

  static const String teamProfileMatchFragment = r"""
  fragment TeamProfileMatchFragment on TeamProfileMatchGenericType {
    id
    team{
      ...EditionTeamFragment
    }
    maitrise
    dynamique
    attack
    defense
    domination
    ranking
    updateAt
    deleted
  }
  """;
}
