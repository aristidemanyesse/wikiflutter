// This file is "main.dart"
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
part 'typeCompetition.freezed.dart';
part 'typeCompetition.g.dart';

@freezed
class TypeCompetition with _$TypeCompetition {
  static const String FULL = "FULL";
  static const String PARTIAL = "PARTIAL";

  const factory TypeCompetition({
    @Default("") String id,
    @Default("") String createdAt,
    @Default("") String updateAt,
    @Default(false) bool deleted,
    @Default("") String name,
    @Default("") String etiquette,
  }) = _TypeCompetition;

  factory TypeCompetition.fromJson(Map<String, Object?> json) =>
      _$TypeCompetitionFromJson(json);

  static const String typeCompetitionFragment = """
  fragment TypeCompetitionFragment on TypeCompetitionGenericType {
    id
    createdAt
    updateAt
    deleted
    name
    etiquette
  }
  """;
}
