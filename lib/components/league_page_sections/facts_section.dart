import 'package:flutter/material.dart';
import 'package:wikibet/components/others_goals_stats_table_card.dart';
import 'package:wikibet/tools/tools.dart';

class FactsSection extends StatelessWidget {
  const FactsSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: AppConstante.PADDING / 2),
      child: SingleChildScrollView(
        child: Column(
          children: [
            //  TeamFactsCard(),
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
