import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:wikibet/components/latest_team_form.dart';
import 'package:wikibet/components/logo_markers.dart';
import 'package:wikibet/controllers/MatchController.dart';
import 'package:wikibet/core/apiservice.dart';
import 'package:wikibet/tools/tools.dart';

class MatchTeamsrankingCard extends StatelessWidget {
  MatchTeamsrankingCard({
    super.key,
  });

  MatchController controller = Get.find();

  @override
  Widget build(BuildContext context) {
    return Card(
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
                  DataColumn(label: Text("#", style: AppTextStyle.titleSmall)),
                  DataColumn(
                      label: Text(
                    "Team",
                    style: AppTextStyle.titleSmall,
                  )),
                  DataColumn(
                      label: Text("Forme", style: AppTextStyle.titleSmall)),
                  DataColumn(
                      label: Center(
                          child: Text("PPG", style: AppTextStyle.titleSmall))),
                  DataColumn(
                      label: Center(
                          child: Text("B+:-", style: AppTextStyle.titleSmall))),
                  DataColumn(
                      label: Center(
                          child: Text("Pts", style: AppTextStyle.titleSmall))),
                ],
                rows: ranks
                    .map((rank) => DataRow(cells: [
                          DataCell(Text(
                            "${rank.level}",
                            style: AppTextStyle.body,
                          )),
                          DataCell(
                            MyLogo(
                              path:
                                  "${ApiService.BASE_URL + rank.team!.team!.logo}",
                              height: 30,
                              width: 30,
                            ),
                          ),
                          DataCell(LatestTeamForm(
                            forme: rank.form,
                          )),
                          DataCell(PPGLabel(ppg: rank.ppg)),
                          DataCell(Text(
                            "${rank.gs}:${rank.ga}",
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

class EloLabel extends StatelessWidget {
  const EloLabel({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 10),
      padding: const EdgeInsets.symmetric(horizontal: 7, vertical: 5),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          color: Theme.of(context).scaffoldBackgroundColor),
      child: const Text(
        "1234",
        style: AppTextStyle.body,
      ),
    );
  }
}

class PPGLabel extends StatelessWidget {
  final double ppg;

  PPGLabel({
    super.key,
    required this.ppg,
  });

  @override
  Widget build(BuildContext context) {
    Color color = Colors.red;
    if (ppg <= 0.5) {
      color = Colors.grey;
    } else if (ppg > 0.5 && ppg <= 1) {
      color = Colors.red;
    } else if (ppg > 1 && ppg <= 1.5) {
      color = Color.fromARGB(255, 243, 118, 1);
    } else if (ppg > 1.5 && ppg <= 2) {
      color = Colors.blueAccent;
    } else if (ppg > 2 && ppg <= 2.5) {
      color = Color.fromARGB(255, 64, 132, 82);
    } else if (ppg > 2.5 && ppg <= 3) {
      color = Colors.green;
    }
    return Container(
      margin: const EdgeInsets.only(right: 10),
      padding: EdgeInsets.symmetric(horizontal: 7, vertical: 5),
      decoration:
          BoxDecoration(color: color, borderRadius: BorderRadius.circular(5)),
      child: Text(
        "$ppg",
        style: AppTextStyle.bodygras,
      ),
    );
  }
}
