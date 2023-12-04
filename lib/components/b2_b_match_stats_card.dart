import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:wikibet/components/ligne_b2_b.dart';
import 'package:wikibet/components/logo_markers.dart';
import 'package:wikibet/controllers/MatchController.dart';
import 'package:wikibet/models/statsApp/beforeMatchStat.dart';
import 'package:wikibet/models/statsApp/teamProfileMatch.dart';
import 'package:wikibet/tools/tools.dart';
import 'package:wikibet/models/fixtureApp/match.dart';

class B2BMatchStatsCard extends StatelessWidget {
  final Match match;
  B2BMatchStatsCard({
    super.key,
    required this.match,
  });

  MatchController controller = Get.find();

  @override
  Widget build(BuildContext context) {
    BeforeMatchStat? homeStat = match.beforeStatMatch
        ?.firstWhere((stat) => stat.team!.id == match.home!.id);
    BeforeMatchStat? awayStat = match.beforeStatMatch
        ?.firstWhere((stat) => stat.team!.id == match.away!.id);

    TeamProfileMatch? homeProfile = match.matchProfile
        ?.firstWhere((element) => element.team?.id == match.home?.id);
    TeamProfileMatch? awayProfile = match.matchProfile
        ?.firstWhere((element) => element.team?.id == match.away?.id);

    return Column(
      children: [
        Row(
          children: [
            const Expanded(
                child: Divider(
              height: 1,
            )),
            SizedBox(
              width: AppConstante.PADDING * 2,
            ),
            Container(
              margin: EdgeInsets.symmetric(vertical: AppConstante.PADDING / 2),
              child: Text("Performance Wikibet",
                  style: AppTextStyle.titleLarge
                      .copyWith(fontStyle: FontStyle.italic)),
            ),
            SizedBox(
              width: AppConstante.PADDING * 2,
            ),
            const Expanded(
                child: Divider(
              height: 1,
            )),
          ],
        ),
        Card(
          elevation: 0,
          color: Colors.white.withOpacity(0.5),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: SizedBox(
                width: double.infinity,
                child: DataTable(
                  columnSpacing: 3,
                  horizontalMargin: 15,
                  dividerThickness: 0.0,
                  columns: [
                    DataColumn(
                      label: Center(
                        child: MyLogo(
                          path: homeStat!.team!.team!.logo,
                          height: 25,
                          width: 25,
                        ),
                      ),
                    ),
                    const DataColumn(label: Flexible(child: Text(""))),
                    const DataColumn(
                        label: Flexible(
                      child: Center(
                        child: Text(
                          "VS",
                          style: AppTextStyle.titleMedium,
                        ),
                      ),
                    )),
                    const DataColumn(label: Flexible(child: Text(""))),
                    DataColumn(
                      label: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          MyLogo(
                            path: awayStat!.team!.team!.logo,
                            height: 25,
                            width: 25,
                          ),
                        ],
                      ),
                    ),
                  ],
                  rows: [
                    LigneB2B("Dynamique", 20, homeProfile!.dynamique,
                            awayProfile!.dynamique)
                        .build(context),
                    LigneB2B("Attaque", 20, homeProfile.attack,
                            awayProfile.attack)
                        .build(context),
                    LigneB2B("Defense", 20, homeProfile.defense,
                            awayProfile.defense)
                        .build(context),
                    LigneB2B("Maitrise", 20, homeProfile.maitrise,
                            awayProfile.maitrise)
                        .build(context),
                    LigneB2B("Ranking", 20, homeProfile.ranking,
                            awayProfile.ranking)
                        .build(context),
                    LigneB2B(
                            "moyB+",
                            5,
                            double.parse(
                                homeStat.avgGoalsScored.toStringAsFixed(2)),
                            double.parse(
                                awayStat.avgGoalsScored.toStringAsFixed(2)))
                        .build(context),
                    LigneB2B(
                            "moyB-",
                            5,
                            double.parse(
                                homeStat.avgGoalsConceded.toStringAsFixed(2)),
                            double.parse(
                                awayStat.avgGoalsConceded.toStringAsFixed(2)))
                        .build(context)
                  ],
                )),
          ),
        ),
      ],
    );
  }
}
