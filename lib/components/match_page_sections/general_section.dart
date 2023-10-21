import 'package:flutter/material.dart';
import 'package:wikibet/components/b2_b_match_stats_card.dart';
import 'package:wikibet/components/match_teamsranking_card.dart';
import 'package:wikibet/components/radar_chart.dart';
import 'package:wikibet/tools/tools.dart';

class GeneralSection extends StatelessWidget {
  const GeneralSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: AppConstante.PADDING / 2),
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: AppConstante.PADDING,
            ),
            MatchTeamsrankingCard(),
            SizedBox(
              height: AppConstante.PADDING,
            ),
            B2BMatchStatsCard(),
            SizedBox(
              height: AppConstante.PADDING,
            ),
            // RadarStatsCard(),
            // SizedBox(
            //   height: AppConstante.PADDING,
            // ),
          ],
        ),
      ),
    );
  }
}
