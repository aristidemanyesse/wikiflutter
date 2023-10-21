// This file is "main.dart"
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
import 'package:wikibet/models/competitionApp/pays.dart';
part 'team.freezed.dart';
part 'team.g.dart';

@freezed
class Team with _$Team {
  const factory Team({
    @Default("") String id,
    @Default("") String createdAt,
    @Default("") String updateAt,
    @Default(false) bool deleted,
    @Default("") String name,
    @Default("") String code,
    @Default("") String name2,
    @Default("") String abr,
    Pays? pays,
    @Default("") String color1,
    @Default("") String color2,
    @Default("") String logo,
  }) = _Team;

  factory Team.fromJson(Map<String, Object?> json) => _$TeamFromJson(json);

  static const String teamFragment = """
  fragment TeamFragment on TeamGenericType {
    id
    createdAt
    updateAt
    deleted
    name
    code
    name2
    abr
    pays{
      ...PaysFragment
    }
    color1
    color2
    logo
  }
  """;
}
