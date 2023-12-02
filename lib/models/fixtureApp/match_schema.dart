import 'package:wikibet/models/competitionApp/competition.dart';
import 'package:wikibet/models/competitionApp/edition.dart';
import 'package:wikibet/models/competitionApp/editionCompetition.dart';
import 'package:wikibet/models/competitionApp/pays.dart';
import 'package:wikibet/models/competitionApp/typeCompetition.dart';
import 'package:wikibet/models/fixtureApp/match.dart';
import 'package:wikibet/models/predictionApp/modePrediction.dart';
import 'package:wikibet/models/predictionApp/prediction.dart';
import 'package:wikibet/models/predictionApp/typePrediction.dart';
import 'package:wikibet/models/statsApp/beforeMatchStat.dart';
import 'package:wikibet/models/statsApp/extraInfosMatch.dart';
import 'package:wikibet/models/statsApp/resultMatch.dart';
import 'package:wikibet/models/statsApp/teamProfileMatch.dart';
import 'package:wikibet/models/teamApp/editionTeam.dart';
import 'package:wikibet/models/teamApp/team.dart';

class MatchSchema {
  static const String ALL = r"""
    query ($id: UUID, $date:CustomDate, $dateLte:CustomDate, $finished:Boolean, $edition:UUID, $home:UUID, $away:UUID) {
      searchMatch(
        deleted: false
        date: $date
        date_Lt: $dateLte
        isFinished: $finished
        edition_Id: $edition
        home_Id: $home
        away_Id: $away
        id: $id
      ) {
        results {
          ...MatchFragment
        }
      }
    }
  """ +
      Match.matchFragment +
      EditionCompetition.editionCompetitionFragment +
      EditionTeam.editionTeamFragment +
      Edition.editionFragment +
      Competition.competitionFragment +
      Pays.paysFragment +
      TypeCompetition.typeCompetitionFragment +
      Team.teamFragment +
      BeforeMatchStat.beforeMatchStatFragment +
      ExtraInfosMatch.extraInfosMatchFragment +
      Prediction.predictionFragment +
      ModePrediction.modePredictionFragment +
      TypePrediction.typePredictionFragment +
      TeamProfileMatch.teamProfileMatchFragment +
      ResultMatch.resultMatchFragment;
}
