import 'package:wikibet/models/competitionApp/competition.dart';
import 'package:wikibet/models/competitionApp/edition.dart';
import 'package:wikibet/models/competitionApp/editionCompetition.dart';
import 'package:wikibet/models/competitionApp/ligneRanking.dart';
import 'package:wikibet/models/competitionApp/pays.dart';
import 'package:wikibet/models/competitionApp/ranking.dart';
import 'package:wikibet/models/competitionApp/typeCompetition.dart';
import 'package:wikibet/models/fixtureApp/match.dart';
import 'package:wikibet/models/teamApp/editionTeam.dart';
import 'package:wikibet/models/teamApp/team.dart';

class LigneRankingSchema {
  static const String ALL = """
    query (\$id: UUID, \$team:UUID) {
      searchLigneRanking(
        deleted: false
        team_Id: \$team
        id: \$id
      ) {
        results {
          ...LigneRankingFragment
        }
      }
    }
  """ +
      Ranking.rankingFragment +
      LigneRanking.ligneRankingFragment +
      EditionCompetition.editionCompetitionFragment +
      EditionTeam.editionTeamFragment +
      Edition.editionFragment +
      Competition.competitionFragment +
      Pays.paysFragment +
      TypeCompetition.typeCompetitionFragment +
      Team.teamFragment;
}
