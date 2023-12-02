import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:wikibet/components/logo_markers.dart';
import 'package:wikibet/controllers/MatchController.dart';
import 'package:wikibet/core/apiservice.dart';
import 'package:wikibet/models/statsApp/fact.dart';
import 'package:wikibet/models/teamApp/editionTeam.dart';
import 'package:wikibet/tools/tools.dart';

class TeamFactsCard extends StatelessWidget {
  final List<Fact> facts;
  final EditionTeam team;
  TeamFactsCard({
    super.key,
    required this.facts,
    required this.team,
  });

  MatchController controller = Get.find();

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        padding: EdgeInsets.all(AppConstante.PADDING / 2),
        margin: EdgeInsets.symmetric(vertical: AppConstante.PADDING / 2),
        child: Column(
          children: [
            Row(
              children: [
                MyLogo(
                  path: team.team!.logo,
                  height: 40,
                  width: 40,
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
              margin: const EdgeInsets.only(left: 15),
              child: Column(
                  children: facts
                      .map((fact) => FactLigne(
                            fact: fact,
                          ))
                      .toList()),
            )
          ],
        ),
      ),
    );
  }
}

class FactLigne extends StatelessWidget {
  final Fact fact;
  const FactLigne({
    super.key,
    required this.fact,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 10),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            height: 7,
            width: 7,
            decoration: BoxDecoration(
                color: Colors.red, borderRadius: BorderRadius.circular(100)),
          ),
          const SizedBox(
            width: 10,
          ),
          Expanded(
            child: Text(
              Fact.sentence(fact),
              style: AppTextStyle.body,
              maxLines: 2,
            ),
          )
        ],
      ),
    );
  }
}
