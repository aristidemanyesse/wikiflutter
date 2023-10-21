// This file is "main.dart"
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
import 'package:wikibet/models/fixtureApp/match.dart';
part 'resultMatch.freezed.dart';
part 'resultMatch.g.dart';

@freezed
class ResultMatch with _$ResultMatch {
  const factory ResultMatch({
    @Default("") String id,
    @Default("") String createdAt,
    @Default("") String updateAt,
    @Default(false) bool deleted,
    Match? match,
    @Default(0.0) double homeScore,
    @Default(0.0) double awayScore,
    @Default("") String result,
    @Default(0.0) double homeHalfScore,
    @Default(0.0) double awayHalfScore,
    @Default("") String resultHalf,
  }) = _ResultMatch;

  factory ResultMatch.fromJson(Map<String, Object?> json) =>
      _$ResultMatchFromJson(json);

  static const String resultMatchFragment = r"""
  fragment ResultMatchFragment on ResultMatchGenericType {
    id
    createdAt
    updateAt
    deleted
    homeScore
    awayScore
    result
    homeHalfScore
    awayHalfScore
  }
  """;
}
