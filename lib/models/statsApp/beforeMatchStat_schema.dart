import 'package:wikibet/models/competitionApp/competition.dart';
import 'package:wikibet/models/competitionApp/edition.dart';
import 'package:wikibet/models/competitionApp/editionCompetition.dart';
import 'package:wikibet/models/competitionApp/pays.dart';
import 'package:wikibet/models/competitionApp/typeCompetition.dart';
import 'package:wikibet/models/statsApp/beforeMatchStat.dart';
import 'package:wikibet/models/teamApp/editionTeam.dart';
import 'package:wikibet/models/teamApp/team.dart';

class BeforeMatchStatSchema {
  static const String ALL = """    query (\$id: UUID, \$match:UUID) {
      searchBeforeMatchStat(
        deleted: false
        match_Id: \$match
        id: \$id
      ) {
        results {
          ...BeforeMatchStatFragment
        }
      }
    }
  ${BeforeMatchStat.beforeMatchStatFragment}${EditionCompetition.editionCompetitionFragment}${EditionTeam.editionTeamFragment}${Edition.editionFragment}${Competition.competitionFragment}${Pays.paysFragment}${TypeCompetition.typeCompetitionFragment}${Team.teamFragment}""";
}
