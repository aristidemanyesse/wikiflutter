import 'package:wikibet/models/competitionApp/competition.dart';
import 'package:wikibet/models/competitionApp/pays.dart';
import 'package:wikibet/models/competitionApp/typeCompetition.dart';

class CompetitionSchema {
  static const String ALL = r"""
    query ($id: UUID,) {
      searchCompetition(
        deleted: false
        id: $id
      ) {
        results {
          ...CompetitionFragment
        }
      }
    }
  """ +
      Competition.competitionFragment +
      Pays.paysFragment +
      TypeCompetition.typeCompetitionFragment;
}
