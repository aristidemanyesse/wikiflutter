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
                        path: homeStat.team!.team!.logo,
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
                          path: awayStat.team!.team!.logo,
                          height: 25,
                          width: 25,
                        ),
                      ],
                    ),
                  ),
                ],
                rows: [
                  LigneB2B("Dynamique", 20, homeStat.ppg, awayStat.ppg)
                      .build(context),
                  LigneB2B("Attaque", 20, homeStat.ppg, awayStat.ppg)
                      .build(context),
                  LigneB2B("Defense", 20, homeStat.ppg, awayStat.ppg)
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
        style: AppTextStyle.bodygras,
      )),
      DataCell(
        SizedBox(
          width: Get.size.width / 5,
          child: Transform.rotate(
            angle: 3.14159265359,
            child: LinearProgressIndicator(
              backgroundColor: Colors.transparent,
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
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(title, style: AppTextStyle.body),
          ],
        ),
      ))),
      DataCell(SizedBox(
        width: Get.size.width / 5,
        child: LinearProgressIndicator(
          backgroundColor: Colors.transparent,
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
            style: AppTextStyle.bodygras,
          ),
        ],
      )),
    ]);
  }
}

class LigneResult {
  final String title;
  final int valueA;
  final int valueB;

  const LigneResult(this.title, this.valueA, this.valueB);

  DataRow build(BuildContext context) {
    int max = valueA + valueB;

    return DataRow(cells: [
      DataCell(Text(
        "$valueA",
        style: AppTextStyle.bodygras,
      )),
      DataCell(
        SizedBox(
          width: Get.size.width / 5,
          child: Transform.rotate(
            angle: 3.14159265359,
            child: LinearProgressIndicator(
              backgroundColor: Colors.transparent,
              borderRadius: BorderRadius.circular(40),
              color: Colors.red,
              value: max > 0 ? valueA / max : 0,
              minHeight: 5,
            ),
          ),
        ),
      ),
      DataCell(Center(
          child: SizedBox(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(title, style: AppTextStyle.body),
          ],
        ),
      ))),
      DataCell(SizedBox(
        width: Get.size.width / 5,
        child: LinearProgressIndicator(
          backgroundColor: Colors.transparent,
          borderRadius: BorderRadius.circular(40),
          color: Colors.green,
          value: max > 0 ? valueB / max : 0,
          minHeight: 5,
        ),
      )),
      DataCell(Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Text(
            "$valueB",
            style: AppTextStyle.bodygras,
          ),
        ],
      )),
    ]);
  }
}
