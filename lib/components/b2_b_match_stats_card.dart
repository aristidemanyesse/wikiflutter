import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:wikibet/components/logo_markers.dart';
import 'package:wikibet/controllers/MatchController.dart';
import 'package:wikibet/core/apiservice.dart';
import 'package:wikibet/models/statsApp/beforeMatchStat.dart';
import 'package:wikibet/tools/tools.dart';

class B2BMatchStatsCard extends StatelessWidget {
  B2BMatchStatsCard({
    super.key,
  });

  MatchController controller = Get.find();
  late BeforeMatchStat homeStat;
  late BeforeMatchStat awayStat;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: SizedBox(
            width: double.infinity,
            child: Obx(() {
              homeStat = controller.befores.value.firstWhere((stat) =>
                  stat.team!.id == controller.matchSelected.value.home!.id);
              awayStat = controller.befores.value.firstWhere((stat) =>
                  stat.team!.id == controller.matchSelected.value.away!.id);

              return DataTable(
                columnSpacing: 3,
                horizontalMargin: 15,
                dividerThickness: 0.0,
                columns: [
                  DataColumn(
                    label: Center(
                      child: MyLogo(
                        path:
                            "${ApiService.BASE_URL + homeStat.team!.team!.logo}",
                        height: 45,
                        width: 45,
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
                    label: Center(
                      child: MyLogo(
                        path:
                            "${ApiService.BASE_URL + awayStat.team!.team!.logo}",
                        height: 45,
                        width: 45,
                      ),
                    ),
                  ),
                ],
                rows: [
                  LigneB2B("PPG", 3, homeStat.ppg, awayStat.ppg).build(context),
                  LigneB2B(
                          "Elo",
                          1700,
                          (double.parse(homeStat.scoreElo.toStringAsFixed(1))),
                          (double.parse(awayStat.scoreElo.toStringAsFixed(1))))
                      .build(context),
                  LigneB2B(
                          "Elo %",
                          100,
                          (double.parse(
                                  homeStat.probabiliteElo.toStringAsFixed(1)) *
                              100),
                          (double.parse(
                                  awayStat.probabiliteElo.toStringAsFixed(1)) *
                              100))
                      .build(context),
                  LigneB2B(
                          "xG+",
                          5,
                          double.parse(homeStat.gsExpected.toStringAsFixed(2)),
                          double.parse(awayStat.gsExpected.toStringAsFixed(2)))
                      .build(context),
                  LigneB2B(
                          "xG-",
                          5,
                          double.parse(homeStat.gaExpected.toStringAsFixed(2)),
                          double.parse(awayStat.gaExpected.toStringAsFixed(2)))
                      .build(context)
                ],
              );
            })),
      ),
    );
  }
}

class LigneB2B {
  final String title;
  final double max;
  final double valueA;
  final double valueB;

  const LigneB2B(this.title, this.max, this.valueA, this.valueB);

  DataRow build(BuildContext context) {
    return DataRow(cells: [
      DataCell(Text(
        "$valueA",
        style: const TextStyle(fontSize: 11),
      )),
      DataCell(
        SizedBox(
          width: MediaQuery.sizeOf(context).width / 4,
          child: Transform.rotate(
            angle: 3.14159265359,
            child: LinearProgressIndicator(
              borderRadius: BorderRadius.circular(40),
              color: Colors.red,
              value: valueA / max,
              minHeight: 5,
            ),
          ),
        ),
      ),
      DataCell(Center(
          child: SizedBox(
        width: MediaQuery.sizeOf(context).width / 8,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(title, style: AppTextStyle.bodygras),
          ],
        ),
      ))),
      DataCell(SizedBox(
        width: MediaQuery.sizeOf(context).width / 4,
        child: LinearProgressIndicator(
          borderRadius: BorderRadius.circular(40),
          color: Colors.green,
          value: valueB / max,
          minHeight: 5,
        ),
      )),
      DataCell(Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Text(
            "$valueB",
            style: const TextStyle(fontSize: 11),
          ),
        ],
      )),
    ]);
  }
}
