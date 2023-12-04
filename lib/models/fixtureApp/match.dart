// This file is "main.dart"
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
import 'package:wikibet/core/apiservice.dart';
import 'package:wikibet/models/bettingApp/oddMatch.dart';
import 'package:wikibet/models/competitionApp/editionCompetition.dart';
import 'package:wikibet/models/fixtureApp/match_schema.dart';
import 'package:wikibet/models/predictionApp/prediction.dart';
import 'package:wikibet/models/statsApp/beforeMatchStat.dart';
import 'package:wikibet/models/statsApp/extraInfosMatch.dart';
import 'package:wikibet/models/statsApp/resultMatch.dart';
import 'package:wikibet/models/statsApp/teamProfileMatch.dart';
import 'package:wikibet/models/teamApp/editionTeam.dart';
part 'match.freezed.dart';
part 'match.g.dart';

@freezed
class Match with _$Match {
  const factory Match({
    @Default("") String id,
    @Default("") String createdAt,
    @Default("") String updateAt,
    @Default(false) bool deleted,
    @Default("") String name,
    @Default("") date,
    @Default("") hour,
    EditionTeam? home,
    EditionTeam? away,
    EditionCompetition? edition,
    List<ResultMatch>? resultMatch,
    List<BeforeMatchStat>? beforeStatMatch,
    List<ExtraInfosMatch>? extraInfoMatch,
    List<Prediction>? predictionMatch,
    List<TeamProfileMatch>? matchProfile,
    List<OddsMatch>? matchOdds,
    @Default(false) bool isFinished,
    @Default(false) bool isPosted,
    @Default(false) bool isFirstMatch,
    @Default(false) bool isPredict,
    @Default(false) bool isCompared,
    @Default(false) bool isComparedElo,
    @Default(false) bool isFacted,
    @Default(false) bool isStated,
  }) = _Match;

  factory Match.fromJson(Map<String, Object?> json) => _$MatchFromJson(json);

  // ///////////////////////////////////////////////////////////////////////////////////////////

  static const String matchFragment = """
  fragment MatchFragment on MatchGenericType {
    id
    createdAt
    updateAt
    deleted
    date
    hour
    home{
      ...EditionTeamFragment
    }
    away{
      ...EditionTeamFragment
    }
    edition{
      ...EditionCompetitionFragment
    }
    resultMatch{
			...ResultMatchFragment
		}
    beforeStatMatch{
			...BeforeMatchStatFragment
		}
    extraInfoMatch{
			...ExtraInfosMatchFragment
		}
    predictionMatch{
			...PredictionFragment
		}
    matchProfile{
			...TeamProfileMatchFragment
		}
    matchOdds{
			...OddsMatchFragment
		}
    isFinished
    isPosted
    isFirstMatch
    isPredict
    isCompared
    isComparedElo
    isFacted
    isStated
  }
  """;

  static Future<List<Match>> all(Map<String, dynamic> variables) async {
    dynamic datas = await ApiService.request(MatchSchema.ALL, variables);
    List<Match> items = [];
    for (var jsonTask in datas["searchMatch"]["results"]) {
      Match match = Match.fromJson(jsonTask);
      match = match.copyWith(hour: match.hour == "" ? "00:00:00" : match.hour);
      items.add(match);
    }
    return items;
  }
}
