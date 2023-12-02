import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:wikibet/components/b2_b_match_stats_card.dart';
import 'package:wikibet/components/prediction_tip.dart';
import 'package:wikibet/models/statsApp/extraInfosMatch.dart';
import 'package:wikibet/models/statsApp/resultMatch.dart';
import 'package:wikibet/tools/tools.dart';
import 'package:wikibet/models/fixtureApp/match.dart';

class ResumeSection extends StatelessWidget {
  final Match match;

  ResumeSection({
    super.key,
    required this.match,
  });

  @override
  Widget build(BuildContext context) {
    ResultMatch result = const ResultMatch();
    result = match.resultMatch!.first;
    ExtraInfosMatch extra = const ExtraInfosMatch();
    extra = match.extraInfoMatch!.first;

    return Container(
      padding: EdgeInsets.symmetric(
          horizontal: AppConstante.PADDING, vertical: AppConstante.PADDING * 2),
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
                width: double.infinity,
                child: DataTable(
                  columnSpacing: 3,
                  horizontalMargin: 15,
                  dividerThickness: 0.0,
                  columns: [
                    const DataColumn(
                      label: Center(),
                    ),
                    const DataColumn(label: Flexible(child: Text(""))),
                    const DataColumn(
                        label: Flexible(
                      child: Center(
                        child: Text(
                          "Résumé du match",
                          style: AppTextStyle.titleMedium,
                        ),
                      ),
                    )),
                    const DataColumn(label: Flexible(child: Text(""))),
                    const DataColumn(
                      label: Center(),
                    ),
                  ],
                  rows: [
                    LigneResult(
                            "Score final", result.homeScore, result.awayScore)
                        .build(context),
                    LigneResult("Tirs", extra.homeShots, extra.awayShots)
                        .build(context),
                    LigneResult("Tirs cadrés", extra.homeShotsOnTarget,
                            extra.awayShotsOnTarget)
                        .build(context),
                    LigneResult("Corners", extra.homeCorners, extra.awayCorners)
                        .build(context),
                    LigneResult("Fautes", extra.homeFouls, extra.awayFouls)
                        .build(context),
                    LigneResult("Cartons jaunes", extra.homeYellowCards,
                            extra.awayYellowCards)
                        .build(context),
                    LigneResult("Cartons rouges", extra.homeRedCards,
                            extra.awayRedCards)
                        .build(context),
                  ],
                )),
            SizedBox(
              height: AppConstante.PADDING / 2,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                  children: match.predictionMatch!
                      .map((prediction) => PredictionTip(
                            prediction: prediction,
                          ))
                      .toList()),
            ),
          ],
        ),
      ),
    );
  }
}
