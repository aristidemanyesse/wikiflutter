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
    @Default("") String updateAt,
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

  static const String competitionFragment = """
  fragment CompetitionFragment on CompetitionGenericType {
    id
    createdAt
    updateAt
    deleted
    identifiant
    name
    code
    logo
    pays{
      ...PaysFragment
    }
    type{
      ...TypeCompetitionFragment
    }
  }
  """;
}
