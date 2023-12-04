import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:wikibet/components/fact_ligne.dart';
import 'package:wikibet/components/logo_markers.dart';
import 'package:wikibet/controllers/MatchController.dart';
import 'package:wikibet/models/statsApp/fact.dart';
import 'package:wikibet/models/teamApp/editionTeam.dart';
import 'package:wikibet/tools/tools.dart';
import 'package:wikibet/models/fixtureApp/match.dart';

class TeamFactsCard extends StatelessWidget {
  final List<Fact> facts;
  final EditionTeam team;
  final Match match;

  TeamFactsCard({
    super.key,
    required this.facts,
    required this.match,
    required this.team,
  });

  MatchController controller = Get.find();

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      color: Colors.white.withOpacity(0.5),
      child: Container(
        padding: EdgeInsets.all(AppConstante.PADDING / 2),
        margin: EdgeInsets.symmetric(vertical: AppConstante.PADDING / 2),
        child: Column(
          children: [
            Row(
              children: [
                MyLogo(
                  path: team.team!.logo,
                  height: 25,
                  width: 25,
                ),
                SizedBox(
                  width: AppConstante.PADDING / 2,
                ),
                Expanded(
                  child: Text("${team.team?.name}",
                      style: AppTextStyle.titleMedium),
                ),
              ],
            ),
            const Divider(
              height: 1,
            ),
            const SizedBox(
              height: 15,
            ),
            Container(
              margin: const EdgeInsets.only(left: 10),
              child: SingleChildScrollView(
                child: Column(
                    children: facts
                        .map((fact) => FactLigne(
                              fact: fact,
                              domicile: fact.team!.id == match.home!.id,
                            ))
                        .toList()),
              ),
            )
          ],
        ),
      ),
    );
  }
}
