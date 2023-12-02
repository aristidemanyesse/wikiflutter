// This file is "main.dart"
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
import 'package:wikibet/core/apiservice.dart';
import 'package:wikibet/models/fixtureApp/match.dart';
import 'package:wikibet/models/statsApp/resultMatch_schema.dart';
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
    @Default(0) int homeScore,
    @Default(0) int awayScore,
    @Default("") String result,
    @Default(0) int homeHalfScore,
    @Default(0) int awayHalfScore,
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

  static Future<List<ResultMatch>> all(Map<String, dynamic> variables) async {
    dynamic datas = await ApiService.request(ResultMatchSchema.ALL, variables);
    List<ResultMatch> items = [];
    for (var jsonTask in datas["searchResultMatch"]["results"]) {
      items.add(ResultMatch.fromJson(jsonTask));
    }
    return items;
  }
}
