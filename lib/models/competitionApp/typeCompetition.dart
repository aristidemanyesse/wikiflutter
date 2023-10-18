// This file is "main.dart"
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
part 'typeCompetition.freezed.dart';
part 'typeCompetition.g.dart';

@freezed
class TypeCompetition with _$TypeCompetition {
  const factory TypeCompetition({
    @Default("") String id,
    @Default("") String createdAt,
    @Default("") String updatedAt,
    @Default(false) bool deleted,
    @Default("") String name,
    @Default("") String etiquette,
  }) = _TypeCompetition;

  factory TypeCompetition.fromJson(Map<String, Object?> json) =>
      _$TypeCompetitionFromJson(json);
}
