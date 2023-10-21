import 'package:get/get.dart';
import 'package:graphql/client.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:wikibet/controllers/ConnexionController.dart';
import 'package:wikibet/models/competitionApp/competition.dart';
import 'package:wikibet/models/competitionApp/edition.dart';
import 'package:wikibet/models/competitionApp/editionCompetition.dart';
import 'package:wikibet/models/competitionApp/ligneRanking.dart';
import 'package:wikibet/models/competitionApp/pays.dart';
import 'package:wikibet/models/competitionApp/ranking.dart';
import 'package:wikibet/models/competitionApp/typeCompetition.dart';
import 'package:wikibet/models/fixtureApp/match.dart';
import 'package:wikibet/models/statsApp/resultMatch.dart';
import 'package:wikibet/models/teamApp/editionTeam.dart';
import 'package:wikibet/models/teamApp/team.dart';

class ApiService {
  static const BASE_URL = "http://192.168.149.55:8011/";
  // static const BASE_URL = "http://192.168.100.55:8011/";
  // static const BASE_URL = "http://192.168.1.45:8011/";
  // static const BASE_URL = "https://officines.ipi-app.com/";
  static const GRAPH_URL = BASE_URL + "graphql/";
  static const MEDIA_URL = BASE_URL + "media/";

  static Future<Map<String, dynamic>?> request(
      String query, Map<String, dynamic> variables) async {
    ConnexionController IController = Get.find();
    final HttpLink httpLink = HttpLink(GRAPH_URL);

    final GraphQLClient client = GraphQLClient(
      cache: GraphQLCache(),
      link: httpLink,
    );

    final QueryOptions options = QueryOptions(
      document: gql(query),
      variables: variables,
    );

    if (IController.isConnected.value) {
      final QueryResult result = await client.query(options);
      if (result.hasException) {
        print("Erreur Apiservice::::: ${result.exception.toString()}");
        return null;
      }
      return result.data;
    }
    return null;
  }
}
