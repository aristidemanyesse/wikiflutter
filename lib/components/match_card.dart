import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/route_manager.dart';
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

  @override
  Widget build(BuildContext context) {
    initializeDateFormatting();
    DateFormat dateFormat = DateFormat.yMMMMd('fr');
    DateFormat timeFormat = DateFormat.Hm('fr');

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
                      path:
                          "${ApiService.BASE_URL + match.edition!.competition!.logo}",
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
                              ? Text("0 : 0", style: AppTextStyle.titleMedium)
                              : Text("Vs", style: AppTextStyle.titleLarge),
                          SizedBox(
                            height: AppConstante.PADDING / 4,
                          ),
                          Text(
                              "${dateFormat.format(DateTime.parse(match.date ?? ""))}",
                              style: AppTextStyle.bodygras),
                          Text(
                            "${timeFormat.format(DateTime.parse(match.date + " " + match.hour ?? ""))}",
                            style: TextStyle(
                                fontSize: 12, fontWeight: FontWeight.w500),
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
                    children: List.generate(12, (index) {
                      return const PredictionTip();
                    }),
                  ),
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
          path: ApiService.BASE_URL + team.team!.logo,
          height: 40,
          width: 40,
        ),
        Text(
          "${team.team!.name}",
          overflow: TextOverflow.ellipsis,
          style: AppTextStyle.bodysmall,
          textAlign: TextAlign.center,
        ),
      ],
    ));
  }
}
