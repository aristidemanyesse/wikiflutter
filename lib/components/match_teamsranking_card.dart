import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:wikibet/components/latest_team_form.dart';
import 'package:wikibet/components/logo_markers.dart';
import 'package:wikibet/components/p_p_g_label.dart';
import 'package:wikibet/controllers/MatchController.dart';
import 'package:wikibet/tools/tools.dart';
import 'package:wikibet/models/fixtureApp/match.dart';

class MatchTeamsrankingCard extends StatelessWidget {
  final Match match;
  MatchTeamsrankingCard({
    super.key,
    required this.match,
  });

  MatchController controller = Get.find();

  @override
  Widget build(BuildContext context) {
    return Card(
        elevation: 0,
        color: Colors.white.withOpacity(0.5),
        child: Center(
          child: ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: SizedBox(
                width: double.infinity,
                child: Obx(() {
                  List ranks = [
                    controller.homeRanking.value,
                    controller.awayRanking.value
                  ];
                  ranks.sort((a, b) => a.level.compareTo(b.level));
                  return DataTable(
                    columnSpacing: 17,
                    horizontalMargin: 10,
                    headingRowHeight: 40,
                    columns: const [
                      DataColumn(
                          label: Text("#", style: AppTextStyle.titleSmall)),
                      DataColumn(
                          label: Text(
                        "Team",
                        style: AppTextStyle.titleSmall,
                      )),
                      DataColumn(
                          label: Text("Forme", style: AppTextStyle.titleSmall)),
                      DataColumn(
                          label: Center(
                              child:
                                  Text("PPG", style: AppTextStyle.titleSmall))),
                      DataColumn(
                          label: Center(
                              child:
                                  Text("+/-", style: AppTextStyle.titleSmall))),
                      DataColumn(
                          label: Center(
                              child:
                                  Text("Pts", style: AppTextStyle.titleSmall))),
                    ],
                    rows: ranks
                        .map((rank) => DataRow(cells: [
                              DataCell(Text(
                                "${rank.level}",
                                style: AppTextStyle.body,
                              )),
                              DataCell(
                                MyLogo(
                                  path: rank.team!.team!.logo,
                                  height: 20,
                                  width: 20,
                                ),
                              ),
                              DataCell(LatestTeamForm(
                                forme: rank.form,
                              )),
                              DataCell(PPGLabel(ppg: rank.ppg)),
                              DataCell(Text(
                                "${rank.gs}/${rank.ga}",
                                textAlign: TextAlign.center,
                                style: AppTextStyle.body,
                              )),
                              DataCell(Text(
                                "${rank.pts}",
                                style: AppTextStyle.body,
                              )),
                            ]))
                        .toList(),
                  );
                })),
          ),
        ));
  }
}
