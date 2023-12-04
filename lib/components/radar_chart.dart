import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:wikibet/components/logo_markers.dart';
import 'package:wikibet/controllers/MatchController.dart';
import 'package:wikibet/models/statsApp/teamProfileMatch.dart';
import 'package:wikibet/tools/tools.dart';
import 'package:wikibet/models/fixtureApp/match.dart';

class RadarStatsCard extends StatelessWidget {
  final Match match;

  RadarStatsCard({super.key, required this.match});

  final gridColor = Colors.grey;
  final titleColor = Colors.black;
  final fashionColor = Colors.purple;
  final artColor = Colors.orange;
  final offRoadColor = Colors.black26;

  MatchController controller = Get.find();

  @override
  Widget build(BuildContext context) {
    TeamProfileMatch? homeProfile = match.matchProfile
        ?.firstWhere((element) => element.team?.id == match.home?.id);
    TeamProfileMatch? awayProfile = match.matchProfile
        ?.firstWhere((element) => element.team?.id == match.away?.id);

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
                        MyLogo(
                          path: homeProfile!.team!.team!.logo,
                          height: 25,
                          width: 25,
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
                        MyLogo(
                          path: awayProfile!.team!.team!.logo,
                          height: 25,
                          width: 25,
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
                  dataSets: showingDataSets(homeProfile, awayProfile),
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
                          text: 'MAI',
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

  List<RadarDataSet> showingDataSets(
    TeamProfileMatch homeProfile,
    TeamProfileMatch awayProfile,
  ) {
    return rawDataSets(homeProfile, awayProfile).asMap().entries.map((entry) {
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

  List<RawDataSet> rawDataSets(
    TeamProfileMatch homeProfile,
    TeamProfileMatch awayProfile,
  ) {
    print([
      homeProfile.dynamique,
      homeProfile.attack,
      homeProfile.defense,
      homeProfile.maitrise,
      homeProfile.ranking
    ]);
    print([
      awayProfile.dynamique,
      awayProfile.attack,
      awayProfile.defense,
      awayProfile.maitrise,
      awayProfile.ranking
    ]);
    return [
      RawDataSet(
        title: homeProfile.team!.team!.name,
        color: fashionColor,
        values: [
          homeProfile.dynamique,
          homeProfile.attack,
          homeProfile.defense,
          homeProfile.maitrise,
          homeProfile.ranking,
        ],
      ),
      RawDataSet(
        title: awayProfile.team!.team!.name,
        color: artColor,
        values: [
          awayProfile.dynamique,
          awayProfile.attack,
          awayProfile.defense,
          awayProfile.maitrise,
          awayProfile.ranking
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
