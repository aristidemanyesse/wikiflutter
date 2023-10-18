// This file is "main.dart"
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
import 'package:wikibet/models/statsApp/typeFact.dart';
import 'package:wikibet/models/teamApp/editionTeam.dart';
import 'package:wikibet/models/fixtureApp/match.dart';
part 'fact.freezed.dart';
part 'fact.g.dart';

@freezed
class Fact with _$Fact {
  const factory Fact({
    @Default("") String id,
    @Default("") String createdAt,
    @Default("") String updatedAt,
    @Default(false) bool deleted,
    TypeFact? type,
    Match? match,
    EditionTeam? team,
    @Default("") String fullTime,
    @Default("") String allMatches,
    @Default("") String total,
    @Default(false) bool success,
    @Default(0.0) double pct,
  }) = _Fact;

  factory Fact.fromJson(Map<String, Object?> json) => _$FactFromJson(json);
}
