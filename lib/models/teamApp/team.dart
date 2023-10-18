// This file is "main.dart"
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
part 'team.freezed.dart';
part 'team.g.dart';

@freezed
class Team with _$Team {
  const factory Team({
    @Default("") String id,
    @Default("") String createdAt,
    @Default("") String updatedAt,
    @Default(false) bool deleted,
    @Default("") String name,
    @Default("") String code,
    @Default("") String name2,
    @Default("") String abr,
    @Default("") String pays,
    @Default("") String color1,
    @Default("") String color2,
    @Default("") String logo,
  }) = _Team;

  factory Team.fromJson(Map<String, Object?> json) => _$TeamFromJson(json);
}
