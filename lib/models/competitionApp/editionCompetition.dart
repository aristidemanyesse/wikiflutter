// This file is "main.dart"
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
import 'package:wikibet/core/apiservice.dart';
import 'package:wikibet/models/competitionApp/competition.dart';
import 'package:wikibet/models/competitionApp/edition.dart';
import 'package:wikibet/models/competitionApp/editionCompetition_schema.dart';
part 'editionCompetition.freezed.dart';
part 'editionCompetition.g.dart';

@freezed
class EditionCompetition with _$EditionCompetition {
  const factory EditionCompetition({
    @Default("") String id,
    @Default("") String createdAt,
    @Default("") String updateAt,
    @Default(false) bool deleted,
    @Default("") String startDate,
    @Default("") String finishDate,
    @Default(false) bool isFinished,
    Edition? edition,
    Competition? competition,
  }) = _EditionCompetition;

  factory EditionCompetition.fromJson(Map<String, Object?> json) =>
      _$EditionCompetitionFromJson(json);

  static const String editionCompetitionFragment = """
  fragment EditionCompetitionFragment on EditionCompetitionGenericType {
    id
    createdAt
    updateAt
    deleted
    startDate
    finishDate
    isFinished
    edition{
      ...EditionFragment
    }
    competition{
      ...CompetitionFragment
    }
  }
  """;

  static Future<List<EditionCompetition>> all(
      Map<String, dynamic> variables) async {
    dynamic datas =
        await ApiService.request(EditionCompetitionSchema.ALL, variables);
    List<EditionCompetition> items = [];
    for (var jsonTask in datas["searchEditionCompetition"]["results"]) {
      items.add(EditionCompetition.fromJson(jsonTask));
    }
    return items;
  }
}
