import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:wikibet/components/others_goals_stats_table_card.dart';
import 'package:wikibet/components/team_facts_card.dart';
import 'package:wikibet/controllers/MatchController.dart';
import 'package:wikibet/tools/tools.dart';

class FactsSection extends StatelessWidget {
  FactsSection({
    super.key,
  });

  MatchController controller = Get.find();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: AppConstante.PADDING / 2),
      child: SingleChildScrollView(
        child: Column(
          children: [
            TeamFactsCard(
              team: controller.matchSelected.value.home!,
              facts: controller.homeFacts.value,
            ),
            SizedBox(
              height: AppConstante.PADDING,
            ),
            TeamFactsCard(
              team: controller.matchSelected.value.away!,
              facts: controller.awayFacts.value,
            ),
            SizedBox(
              height: AppConstante.PADDING,
            ),
            const OthersGoalsStatsTableCard(),
            SizedBox(
              height: AppConstante.PADDING,
            ),
          ],
        ),
      ),
    );
  }
}
