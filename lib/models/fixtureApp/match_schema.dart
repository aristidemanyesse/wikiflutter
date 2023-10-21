import 'package:wikibet/models/competitionApp/competition.dart';
import 'package:wikibet/models/competitionApp/edition.dart';
import 'package:wikibet/models/competitionApp/editionCompetition.dart';
import 'package:wikibet/models/competitionApp/pays.dart';
import 'package:wikibet/models/competitionApp/typeCompetition.dart';
import 'package:wikibet/models/fixtureApp/match.dart';
import 'package:wikibet/models/statsApp/resultMatch.dart';
import 'package:wikibet/models/teamApp/editionTeam.dart';
import 'package:wikibet/models/teamApp/team.dart';

class MatchSchema {
  static const String ALL = """
    query (\$id: UUID, \$date:CustomDate, \$dateLte:CustomDate, \$finished:Boolean, \$edition:UUID, \$home:UUID, \$away:UUID) {
      searchMatch(
        deleted: false
        date: \$date
        date_Lte: \$dateLte
        isFinished: \$finished
        edition_Id: \$edition
        home_Id: \$home
        away_Id: \$away
        id: \$id
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
      ResultMatch.resultMatchFragment;
}
