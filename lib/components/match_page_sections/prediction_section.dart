import 'package:flutter/material.dart';
import 'package:wikibet/components/b2_b_match_stats_card.dart';
import 'package:wikibet/components/match_page_sections/bloc_prediction.dart';
import 'package:wikibet/components/match_teamsranking_card.dart';
import 'package:wikibet/components/others_goals_stats_table_card.dart';
import 'package:wikibet/components/radar_chart.dart';
import 'package:wikibet/tools/tools.dart';

class PredictionSection extends StatelessWidget {
  const PredictionSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
          horizontal: AppConstante.PADDING / 2, vertical: AppConstante.PADDING),
      child: Column(
        children: [
          SizedBox(
            height: AppConstante.PADDING / 2,
          ),
          // B2BMatchStatsCard(
          //   match: match,
          // ),
          // SizedBox(
          //   height: AppConstante.PADDING / 4,
          // ),
          // RadarStatsCard(
          //   match: match,
          // ),
          // SizedBox(
          //   height: AppConstante.PADDING / 4,
          // ),
          // SizedBox(height: AppConstante.PADDING),
          // const OthersGoalsStatsTableCard(),
          // SizedBox(
          //   height: AppConstante.PADDING,
          // ),
          // SizedBox(
          //   height: AppConstante.PADDING / 2,
          // ),
          // MatchTeamsrankingCard(
          //   match: match,
          // ),
          BlocPrediction(),
          BlocPrediction(),
          BlocPrediction(),
          BlocPrediction(),
        ],
      ),
    );
  }
}
