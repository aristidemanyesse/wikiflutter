import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:wikibet/components/logo_markers.dart';
import 'package:wikibet/controllers/MatchController.dart';
import 'package:wikibet/models/statsApp/beforeMatchStat.dart';
import 'package:wikibet/tools/tools.dart';

class RadarStatsCard extends StatelessWidget {
  RadarStatsCard({super.key});

  final gridColor = Colors.grey;
  final titleColor = Colors.black;
  final fashionColor = Colors.purple;
  final artColor = Colors.orange;
  final offRoadColor = Colors.black26;

  MatchController controller = Get.find();

  late BeforeMatchStat homeStat;
  late BeforeMatchStat awayStat;

  @override
  Widget build(BuildContext context) {
    homeStat = controller.befores.value.firstWhere(
        (stat) => stat.team!.id == controller.matchSelected.value.home!.id);
    awayStat = controller.befores.value.firstWhere(
        (stat) => stat.team!.id == controller.matchSelected.value.away!.id);

    return Card(
      child: Container(
        padding: EdgeInsets.all(AppConstante.PADDING / 2),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(height: 4),
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: Row(
                      children: [
                        const MyLogo(
                          path: "assets/images/logo.png",
                          height: 40,
                          width: 40,
                        ),
                        SizedBox(
                          width: AppConstante.PADDING / 2,
                        ),
                        Container(
                          decoration: BoxDecoration(
                              color: Colors.green,
                              borderRadius: BorderRadius.circular(15)),
                          height: 4,
                          width: 50,
                        ),
                      ],
                    ),
                  ),
                  Container(
                    child: Row(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                              color: Colors.green,
                              borderRadius: BorderRadius.circular(15)),
                          height: 4,
                          width: 50,
                        ),
                        SizedBox(
                          width: AppConstante.PADDING / 2,
                        ),
                        const MyLogo(
                          path: "assets/images/logo.png",
                          height: 40,
                          width: 40,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: AppConstante.PADDING),
            AspectRatio(
              aspectRatio: 2,
              child: RadarChart(
                RadarChartData(
                  dataSets: showingDataSets(),
                  radarBackgroundColor: Colors.transparent,
                  borderData: FlBorderData(show: false),
                  radarBorderData: const BorderSide(color: Colors.transparent),
                  titlePositionPercentageOffset: 0.2,
                  titleTextStyle: AppTextStyle.body,
                  getTitle: (index, angle) {
                    switch (index) {
                      case 0:
                        return const RadarChartTitle(
                          text: 'DYN',
                          angle: 0,
                        );
                      case 1:
                        return const RadarChartTitle(
                          text: 'ATK',
                          angle: 0,
                        );
                      case 2:
                        return const RadarChartTitle(
                          text: 'DEF',
                          angle: 0,
                        );
                      case 3:
                        return const RadarChartTitle(
                          text: 'PRE',
                          angle: 0,
                        );
                      case 4:
                        return const RadarChartTitle(
                          text: 'CLN',
                          angle: 0,
                        );
                      case 1:
                        return const RadarChartTitle(text: 'TV', angle: 0);
                      default:
                        return const RadarChartTitle(text: '');
                    }
                  },
                  tickCount: 1,
                  ticksTextStyle:
                      const TextStyle(color: Colors.transparent, fontSize: 10),
                  tickBorderData: const BorderSide(color: Colors.transparent),
                  gridBorderData: BorderSide(color: gridColor, width: 2),
                ),
                swapAnimationDuration: const Duration(milliseconds: 400),
              ),
            ),
          ],
        ),
      ),
    );
  }

  List<RadarDataSet> showingDataSets() {
    return rawDataSets().asMap().entries.map((entry) {
      final rawDataSet = entry.value;
      return RadarDataSet(
        fillColor: rawDataSet.color.withOpacity(0.15),
        borderColor: rawDataSet.color,
        entryRadius: 3,
        dataEntries:
            rawDataSet.values.map((e) => RadarEntry(value: e)).toList(),
        borderWidth: 2.5,
      );
    }).toList();
  }

  List<RawDataSet> rawDataSets() {
    return [
      RawDataSet(
        title: 'Real de Madrid',
        color: fashionColor,
        values: [
          300,
          50,
          250,
          250,
          250,
        ],
      ),
      RawDataSet(
        title: 'Chelsea',
        color: artColor,
        values: [
          250,
          100,
          200,
          200,
          200,
        ],
      ),
    ];
  }
}

class RawDataSet {
  RawDataSet({
    required this.title,
    required this.color,
    required this.values,
  });

  final String title;
  final Color color;
  final List<double> values;
}
