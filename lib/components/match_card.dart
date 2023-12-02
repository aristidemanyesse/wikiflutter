import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:wikibet/components/logo_markers.dart';
import 'package:wikibet/components/prediction_tip.dart';
import 'package:wikibet/controllers/MatchController.dart';
import 'package:wikibet/core/apiservice.dart';
import 'package:wikibet/models/competitionApp/typeCompetition.dart';
import 'package:wikibet/models/statsApp/resultMatch.dart';
import 'package:wikibet/models/teamApp/editionTeam.dart';
import 'package:wikibet/pages/match_page.dart';
import 'package:wikibet/tools/tools.dart';
import 'package:wikibet/models/fixtureApp/match.dart';
import "package:intl/intl.dart";
import 'package:intl/date_symbol_data_local.dart';

class MatchCard extends StatelessWidget {
  final Match match;

  MatchController controller = Get.find();

  MatchCard({
    super.key,
    required this.match,
  });

  ResultMatch result = const ResultMatch();

  @override
  Widget build(BuildContext context) {
    initializeDateFormatting();
    DateFormat dateFormat = DateFormat.yMMMMd('fr');
    DateFormat timeFormat = DateFormat.Hm('fr');

    if (match.resultMatch!.isNotEmpty) {
      result = match.resultMatch!.first;
    }

    return Container(
      margin: EdgeInsets.symmetric(vertical: AppConstante.PADDING / 5),
      child: InkWell(
        onTap: () {
          controller.matchSelected.value = match;
          Get.to(MatchPage(match: match));
        },
        child: Card(
          elevation: 5,
          child: Container(
            width: double.infinity,
            padding: EdgeInsets.all(AppConstante.PADDING / 2),
            child: Column(
              children: [
                Row(
                  children: [
                    MyLogo(
                      path: match.edition!.competition!.logo,
                      height: 30,
                      width: 30,
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    Text(
                      "${match.edition?.competition?.name}",
                      style: AppTextStyle.bodygras,
                    ),
                    const Spacer(),
                    match.edition!.competition!.type!.etiquette ==
                            TypeCompetition.FULL
                        ? Icon(
                            Icons.bar_chart,
                            size: AppConstante.PADDING,
                          )
                        : Container()
                  ],
                ),
                SizedBox(
                  height: AppConstante.PADDING / 2,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    BlocTeam(team: match.home!),
                    SizedBox(
                      width: AppConstante.PADDING / 4,
                    ),
                    Expanded(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          match.isFinished
                              ? Text(
                                  "${result.homeScore} : ${result.awayScore}",
                                  style: AppTextStyle.titleLarge)
                              : Text("Vs", style: AppTextStyle.titleLarge),
                          SizedBox(
                            height: AppConstante.PADDING / 4,
                          ),
                          if (!match.isFinished)
                            Text(
                                dateFormat
                                    .format(DateTime.parse(match.date ?? "")),
                                style: AppTextStyle.bodygras),
                          Text(
                            timeFormat.format(DateTime.parse(
                                match.date + " " + match.hour ?? "")),
                            style: const TextStyle(
                                fontSize: 10, fontWeight: FontWeight.w400),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      width: AppConstante.PADDING / 4,
                    ),
                    BlocTeam(team: match.away!),
                  ],
                ),
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
        ),
      ),
    );
  }
}

class BlocTeam extends StatelessWidget {
  const BlocTeam({
    super.key,
    required this.team,
  });

  final EditionTeam team;

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: Column(
      children: [
        MyLogo(
          path: team.team!.logo,
          height: 40,
          width: 40,
        ),
        Text(
          team.team!.name,
          overflow: TextOverflow.ellipsis,
          style: AppTextStyle.bodysmall,
          textAlign: TextAlign.center,
        ),
      ],
    ));
  }
}
