import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:wikibet/components/other_stat_bloc.dart';
import 'package:wikibet/controllers/MatchController.dart';
import 'package:wikibet/models/competitionApp/typeCompetition.dart';
import 'package:wikibet/models/statsApp/beforeMatchStat.dart';
import 'package:wikibet/tools/tools.dart';

class OtherStatsSection extends StatelessWidget {
  OtherStatsSection({
    super.key,
  });

  MatchController controller = Get.find();
  late BeforeMatchStat homeStat;
  late BeforeMatchStat awayStat;

  @override
  Widget build(BuildContext context) {
    homeStat = controller.befores.value.firstWhere(
        (stat) => stat.team!.id == controller.matchSelected.value.home!.id);
    awayStat = controller.befores.value.firstWhere(
        (stat) => stat.team!.id == controller.matchSelected.value.away!.id);

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
                  home_f: homeStat.avgShotsFor,
                  home_a: homeStat.avgShotsAgainst,
                  away_f: awayStat.avgShotsFor,
                  away_a: awayStat.avgShotsAgainst,
                  max: 30,
                ),
                OtherStatBloc(
                  title: "Tirs cadrés",
                  home_f: homeStat.avgShotsTargetFor,
                  home_a: homeStat.avgShotsTargetAgainst,
                  away_f: awayStat.avgShotsTargetFor,
                  away_a: awayStat.avgShotsTargetAgainst,
                  max: 10,
                ),
                OtherStatBloc(
                  title: "Corners",
                  home_f: homeStat.avgCornersFor,
                  home_a: homeStat.avgCornersAgainst,
                  away_f: awayStat.avgCornersFor,
                  away_a: awayStat.avgCornersAgainst,
                  max: 10,
                ),
                OtherStatBloc(
                  title: "Fautes",
                  home_f: homeStat.avgFoulsFor,
                  home_a: homeStat.avgFoulsAgainst,
                  away_f: awayStat.avgFoulsFor,
                  away_a: awayStat.avgFoulsAgainst,
                  max: 20,
                ),
                // OtherStatBloc(
                //   title: "Hors-jeu",
                //   home_f: homeStat.avgOffsideFor,
                //   home_a: homeStat.avgOffsideAgainst,
                //   away_f: awayStat.avgOffsideFor,
                //   away_a: awayStat.avgOffsideAgainst,
                //   max: 7,
                // ),
                OtherStatBloc(
                  title: "Cartons",
                  home_f: homeStat.avgCardsFor,
                  home_a: homeStat.avgCardsAgainst,
                  away_f: awayStat.avgCardsFor,
                  away_a: awayStat.avgCardsAgainst,
                  max: 5,
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
