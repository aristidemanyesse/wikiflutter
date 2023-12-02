import 'package:wikibet/models/competitionApp/competition.dart';
import 'package:wikibet/models/competitionApp/edition.dart';
import 'package:wikibet/models/competitionApp/editionCompetition.dart';
import 'package:wikibet/models/competitionApp/ligneRanking.dart';
import 'package:wikibet/models/competitionApp/pays.dart';
import 'package:wikibet/models/competitionApp/ranking.dart';
import 'package:wikibet/models/competitionApp/typeCompetition.dart';
import 'package:wikibet/models/teamApp/editionTeam.dart';
import 'package:wikibet/models/teamApp/team.dart';

class RankingSchema {
  static const String ALL = r"""
    query ($edition: UUID,) {
      searchRanking(
        deleted: false
        edition_Id: $edition
      ) {
        results {
          ...RankingFragment
        }
      }
    }
  """ +
      Ranking.rankingFragment +
      EditionCompetition.editionCompetitionFragment +
      LigneRanking.ligneRankingFragment +
      Competition.competitionFragment +
      Edition.editionFragment +
      EditionTeam.editionTeamFragment +
      Team.teamFragment +
      Pays.paysFragment +
      TypeCompetition.typeCompetitionFragment;
}
