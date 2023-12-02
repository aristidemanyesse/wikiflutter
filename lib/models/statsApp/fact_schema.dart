import 'package:wikibet/models/competitionApp/competition.dart';
import 'package:wikibet/models/competitionApp/edition.dart';
import 'package:wikibet/models/competitionApp/editionCompetition.dart';
import 'package:wikibet/models/competitionApp/pays.dart';
import 'package:wikibet/models/competitionApp/typeCompetition.dart';
import 'package:wikibet/models/statsApp/fact.dart';
import 'package:wikibet/models/statsApp/typeFact.dart';
import 'package:wikibet/models/teamApp/editionTeam.dart';
import 'package:wikibet/models/teamApp/team.dart';

class FactSchema {
  static const String ALL = """    query (\$id: UUID, \$team:UUID, \$match:UUID) {
      searchFact(
        deleted: false
        team_Id: \$team
        match_Id: \$match
        id: \$id
      ) {
        results {
          ...FactFragment
        }
      }
    }
  ${Fact.factFragment}${TypeFact.typefactFragment}${EditionCompetition.editionCompetitionFragment}${EditionTeam.editionTeamFragment}${Edition.editionFragment}${Competition.competitionFragment}${Pays.paysFragment}${TypeCompetition.typeCompetitionFragment}${Team.teamFragment}""";
}
