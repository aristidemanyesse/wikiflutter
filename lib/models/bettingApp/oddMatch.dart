// This file is "main.dart"
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
import 'package:wikibet/core/apiservice.dart';
import 'package:wikibet/models/competitionApp/competition_schema.dart';
import 'package:wikibet/models/competitionApp/pays.dart';
import 'package:wikibet/models/competitionApp/typeCompetition.dart';
part 'oddMatch.freezed.dart';
part 'oddMatch.g.dart';

@freezed
class OddsMatch with _$OddsMatch {
  const factory OddsMatch({
    @Default("") String id,
    @Default("") String createdAt,
    @Default("") String updateAt,
    @Default(false) bool deleted,
    @Default(0.0) double home,
    @Default(0.0) double draw,
    @Default(0.0) double away,
  }) = _OddsMatch;

  factory OddsMatch.fromJson(Map<String, Object?> json) =>
      _$OddsMatchFromJson(json);

  static const String oddMatchFragment = """
  fragment OddsMatchFragment on OddsMatchGenericType {
    id
    createdAt
    updateAt
    deleted
    home
    draw
    away
  }
  """;
}
