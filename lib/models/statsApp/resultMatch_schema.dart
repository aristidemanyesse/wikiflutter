import 'package:wikibet/models/competitionApp/competition.dart';
import 'package:wikibet/models/competitionApp/edition.dart';
import 'package:wikibet/models/competitionApp/editionCompetition.dart';
import 'package:wikibet/models/competitionApp/pays.dart';
import 'package:wikibet/models/competitionApp/typeCompetition.dart';
import 'package:wikibet/models/statsApp/resultMatch.dart';
import 'package:wikibet/models/teamApp/editionTeam.dart';
import 'package:wikibet/models/teamApp/team.dart';

class ResultMatchSchema {
  static const String ALL = """    query ( \$match:UUID) {
      searchResultMatch(
        deleted: false
        match_Id: \$match
      ) {
        results {
          ...ResultMatchFragment
        }
      }
    }
  ${ResultMatch.resultMatchFragment}${EditionCompetition.editionCompetitionFragment}${EditionTeam.editionTeamFragment}${Edition.editionFragment}${Competition.competitionFragment}${Pays.paysFragment}${TypeCompetition.typeCompetitionFragment}${Team.teamFragment}""";
}
