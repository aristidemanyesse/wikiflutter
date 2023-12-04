import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:wikibet/components/b2_b_match_stats_card.dart';
import 'package:wikibet/components/match_teamsranking_card.dart';
import 'package:wikibet/components/other_stat_bloc.dart';
import 'package:wikibet/components/others_goals_stats_table_card.dart';
import 'package:wikibet/components/radar_chart.dart';
import 'package:wikibet/controllers/MatchController.dart';
import 'package:wikibet/models/competitionApp/typeCompetition.dart';
import 'package:wikibet/models/statsApp/beforeMatchStat.dart';
import 'package:wikibet/tools/tools.dart';
import 'package:wikibet/models/fixtureApp/match.dart';

class OtherStatsSection extends StatelessWidget {
  final Match match;
  OtherStatsSection({
    super.key,
    required this.match,
  });

  MatchController controller = Get.find();
  late BeforeMatchStat homeStat;
  late BeforeMatchStat awayStat;

  @override
  Widget build(BuildContext context) {
    BeforeMatchStat? homeStat = match.beforeStatMatch
        ?.firstWhere((stat) => stat.team!.id == match.home!.id);
    BeforeMatchStat? awayStat = match.beforeStatMatch
        ?.firstWhere((stat) => stat.team!.id == match.away!.id);

    return controller
                .matchSelected.value.edition?.competition?.type?.etiquette ==
            TypeCompetition.FULL
        ? Container(
            padding: EdgeInsets.symmetric(
              vertical: AppConstante.PADDING / 2,
              horizontal: AppConstante.PADDING / 3,
            ),
            child: Column(
              children: [
                OtherStatBloc(
                  title: "Tirs",
                  home_f: homeStat!.avgShotsFor,
                  home_a: homeStat.avgShotsAgainst,
                  away_f: awayStat!.avgShotsFor,
                  away_a: awayStat.avgShotsAgainst,
                ),
                OtherStatBloc(
                  title: "Tirs cadrés",
                  home_f: homeStat.avgShotsTargetFor,
                  home_a: homeStat.avgShotsTargetAgainst,
                  away_f: awayStat.avgShotsTargetFor,
                  away_a: awayStat.avgShotsTargetAgainst,
                ),
                OtherStatBloc(
                  title: "Corners",
                  home_f: homeStat.avgCornersFor,
                  home_a: homeStat.avgCornersAgainst,
                  away_f: awayStat.avgCornersFor,
                  away_a: awayStat.avgCornersAgainst,
                ),
                OtherStatBloc(
                  title: "Fautes",
                  home_f: homeStat.avgFoulsFor,
                  home_a: homeStat.avgFoulsAgainst,
                  away_f: awayStat.avgFoulsFor,
                  away_a: awayStat.avgFoulsAgainst,
                ),
                // OtherStatBloc(
                //   title: "Hors-jeu",
                //   home_f: homeStat.avgOffsideFor,
                //   home_a: homeStat.avgOffsideAgainst,
                //   away_f: awayStat.avgOffsideFor,
                //   away_a: awayStat.avgOffsideAgainst,
                // ),
                OtherStatBloc(
                  title: "Cartons",
                  home_f: homeStat.avgCardsFor,
                  home_a: homeStat.avgCardsAgainst,
                  away_f: awayStat.avgCardsFor,
                  away_a: awayStat.avgCardsAgainst,
                ),
              ],
            ),
          )
        : SizedBox(
            height: Get.height * 3 / 4,
            child: const Center(
              child: Text(
                "Non disponible",
                style: AppTextStyle.titleLarge,
              ),
            ),
          );
  }
}
