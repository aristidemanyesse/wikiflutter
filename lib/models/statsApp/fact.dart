// This file is "main.dart"
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
import 'package:wikibet/core/apiservice.dart';
import 'package:wikibet/models/statsApp/fact_schema.dart';
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
    @Default("") String updateAt,
    @Default(false) bool deleted,
    TypeFact? type,
    Match? match,
    EditionTeam? team,
    @Default(false) bool fullTime,
    @Default(false) bool allMatches,
    @Default(0) int total,
    @Default(0) int success,
    @Default(0.0) double pct,
  }) = _Fact;

  factory Fact.fromJson(Map<String, Object?> json) => _$FactFromJson(json);

  static String sentence(Fact fact) {
    String prefixe = "";
    String suffixe = "";
    String sentence = "";
    if (!fact.allMatches) {
      suffixe =
          fact.match?.home == fact.team ? "à domicile !" : "à l'extérieur !";
    }

    if ((fact.pct == 0 || fact.pct == 1) &&
        (!["TGS", "TGC"].contains(fact.type?.name))) {
      if (fact.type?.name == "Win") {
        prefixe = fact.pct == 1 ? "Que des " : "Aucun(e)";
        sentence = "victoires lors des ${fact.total} derniers matchs";
      }
      if (fact.type?.name == "Draw") {
        prefixe = fact.pct == 1 ? "Que des " : "Aucun(e)";
        sentence = "nuls lors des ${fact.total} derniers matchs";
      }
      if (fact.type?.name == "Lose") {
        prefixe = fact.pct == 1 ? "Que des " : "Aucun(e)";
        sentence = "defaites lors des ${fact.total} derniers matchs";
      }

      if (fact.type?.name == "btts") {
        sentence =
            "Les deux équipes ont marqué lors des ${fact.total} derniers matchs ";
        if (fact.pct == 0) {
          sentence =
              "les deux équipes n'ont pas marqué lors des ${fact.total} derniers matchs ";
        }
      }

      if (fact.type?.name == "CS") {
        sentence =
            "Que des clean sheets lors des ${fact.total} derniers matchs";
        if (fact.pct == 0) {
          sentence = "Aucun clean sheet lors des ${fact.total} derniers matchs";
        }
      }

      if (fact.type?.name == "GS") {
        sentence =
            "Au moins 1 but marqué lors des ${fact.total} derniers matchs";
        if (fact.pct == 0) {
          sentence = "Aucun but marqué lors des ${fact.total} derniers matchs";
        }
      }

      if (fact.type?.name == "GC") {
        sentence =
            "Au moins 1 but concédé lors des ${fact.total} derniers matchs";
        if (fact.pct == 0) {
          sentence = "Aucun but concédé lors des ${fact.total} derniers matchs";
        }
      }

      if (fact.type?.name == "p1_5") {
        sentence = "Au moins 2 buts lors des ${fact.total} derniers matchs";
        if (fact.pct == 0) {
          sentence =
              "Aucun match avec au moins 2 buts lors des ${fact.total} derniers matchs";
        }
      }

      if (fact.type?.name == "m3_5") {
        sentence = "Pas plus de 3 buts lors des ${fact.total} derniers matchs";
        if (fact.pct == 0) {
          sentence = "Plus de 3 buts lors des ${fact.total} derniers matchs";
        }
      }
    } else {
      prefixe = "";
      if (fact.pct <= 0.2) {
        prefixe = "Seulement ";
      }

      if (fact.type?.name == "Win") {
        sentence =
            "${fact.success} victoires lors des ${fact.total} derniers matchs";
      }
      if (fact.type?.name == "Draw") {
        sentence =
            "${fact.success} nuls lors des ${fact.total} derniers matchs";
      }
      if (fact.type?.name == "Lose") {
        sentence =
            "${fact.success} defaites lors des ${fact.total} derniers matchs";
      }
      if (fact.type?.name == "btts") {
        sentence =
            "${fact.success} matchs sur les ${fact.total} derniers où les deux équipes ont marqué";
      }
      if (fact.type?.name == "CS") {
        sentence =
            "${fact.success} clean sheets sur les ${fact.total} derniers matchs";
      }
      if (fact.type?.name == "GS") {
        sentence =
            "Au moins 1 but marqué lors de ${fact.success} des ${fact.total} derniers matchs";
      }
      if (fact.type?.name == "GC") {
        sentence =
            "Au moins 1 but encaissé lors de ${fact.success} des ${fact.total} derniers matchs";
      }
      if (fact.type?.name == "p1_5") {
        sentence =
            "Au moins 2 buts lors de ${fact.success} des ${fact.total} derniers matchs";
      }
      if (fact.type?.name == "m3_5") {
        sentence =
            "Pas plus de 3 buts lors de ${fact.success} des ${fact.total} derniers matchs";
      }
      if (fact.type?.name == "TGS") {
        sentence =
            "${fact.success} buts marqués lors des ${fact.total} derniers matchs";
      }
      if (fact.type?.name == "TGC") {
        sentence =
            "${fact.success} buts encaissés lors des ${fact.total} derniers matchs";
      }
    }
    return "$prefixe $sentence $suffixe";
  }

  static const String factFragment = r"""
  fragment FactFragment on FactGenericType {
    id
    createdAt
    updateAt
    deleted
    fullTime
    allMatches
    total
    success
    pct
    type{
      ...TypeFactFragment
    }
    team{
      ...EditionTeamFragment
    }
  }
  """;

  static Future<List<Fact>> all(Map<String, dynamic> variables) async {
    dynamic datas = await ApiService.request(FactSchema.ALL, variables);
    List<Fact> items = [];
    for (var jsonTask in datas["searchFact"]["results"]) {
      items.add(Fact.fromJson(jsonTask));
    }
    return items;
  }
}
