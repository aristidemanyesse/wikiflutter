import 'package:wikibet/models/competitionApp/competition.dart';
import 'package:wikibet/models/competitionApp/edition.dart';
import 'package:wikibet/models/competitionApp/editionCompetition.dart';
import 'package:wikibet/models/competitionApp/pays.dart';
import 'package:wikibet/models/competitionApp/typeCompetition.dart';

class EditionCompetitionSchema {
  static const String ALL = r"""
    query ($competition: UUID,) {
      searchEditionCompetition(
        deleted: false
        competition_Id: $competition
      ) {
        results {
          ...EditionCompetitionFragment
        }
      }
    }
  """ +
      Competition.competitionFragment +
      Edition.editionFragment +
      EditionCompetition.editionCompetitionFragment +
      Pays.paysFragment +
      TypeCompetition.typeCompetitionFragment;
}
