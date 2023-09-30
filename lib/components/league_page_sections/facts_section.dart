import 'package:flutter/material.dart';
import 'package:wikibet/components/others_goals_stats_table_card.dart';
import 'package:wikibet/components/team_facts_card.dart';
import 'package:wikibet/tools/tools.dart';

class FactsSection extends StatelessWidget {
  const FactsSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: AppConstante.DISTANCE / 2),
      child: SingleChildScrollView(
        child: Column(
          children: [
            const TeamFactsCard(),
            SizedBox(
              height: AppConstante.DISTANCE,
            ),
            const OthersGoalsStatsTableCard(),
            SizedBox(
              height: AppConstante.DISTANCE,
            ),
          ],
        ),
      ),
    );
  }
}
