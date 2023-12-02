// This file is "main.dart"
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
import 'package:wikibet/core/apiservice.dart';
import 'package:wikibet/models/fixtureApp/match.dart';
import 'package:wikibet/models/competitionApp/editionCompetition.dart';
import 'package:wikibet/models/predictionApp/modePrediction.dart';
import 'package:wikibet/models/predictionApp/typePrediction.dart';
import 'package:wikibet/models/teamApp/editionTeam.dart';
part 'prediction.freezed.dart';
part 'prediction.g.dart';

@freezed
class Prediction with _$Prediction {
  const factory Prediction({
    @Default("") String id,
    @Default("") String createdAt,
    @Default("") String updateAt,
    @Default(false) bool deleted,
    ModePrediction? mode,
    TypePrediction? type,
    Match? match,
    @Default(0.0) double pct,
    @Default(null) bool? isChecked,
  }) = _Prediction;

  factory Prediction.fromJson(Map<String, Object?> json) =>
      _$PredictionFromJson(json);

  // ///////////////////////////////////////////////////////////////////////////////////////////

  static const String predictionFragment = """
  fragment PredictionFragment on PredictionGenericType {
    id
    createdAt
    updateAt
    deleted
    pct
    type{
      ...TypePredictionFragment
    }
    mode{
      ...ModePredictionFragment
    }
    isChecked
  }
  """;

  // static Future<List<Prediction>> all(Map<String, dynamic> variables) async {
  //   dynamic datas = await ApiService.request(PredictionSchema.ALL, variables);
  //   List<Prediction> items = [];
  //   for (var jsonTask in datas["searchPrediction"]["results"]) {
  //     items.add(Prediction.fromJson(jsonTask));
  //   }
  //   return items;
  // }
}
