import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:wikibet/components/logo_markers.dart';
import 'package:wikibet/controllers/MatchController.dart';
import 'package:wikibet/models/competitionApp/typeCompetition.dart';
import 'package:wikibet/models/statsApp/resultMatch.dart';
import 'package:wikibet/models/teamApp/editionTeam.dart';
import 'package:wikibet/pages/match_page.dart';
import 'package:wikibet/tools/tools.dart';
import 'package:wikibet/models/fixtureApp/match.dart';

class LigneMatch extends StatelessWidget {
  final Match match;
  final EditionTeam? team;

  LigneMatch({
    super.key,
    required this.match,
    this.team,
  });

  ResultMatch result = const ResultMatch();

  MatchController controller = Get.find();

  @override
  Widget build(BuildContext context) {
    result = match.resultMatch!.first;

    return Container(
      margin: EdgeInsets.only(bottom: AppConstante.PADDING / 10),
      child: InkWell(
        onTap: () {
          Get.to(() => MatchPage(match: match), preventDuplicates: false);
          controller.matchSelected.value = match;
        },
        child: ClipRRect(
          borderRadius: BorderRadius.circular(AppConstante.PADDING / 2),
          child: Card(
            color: Colors.white.withOpacity(0.6),
            elevation: 0,
            margin: const EdgeInsets.all(3),
            child: Container(
              padding: EdgeInsets.all(AppConstante.PADDING / 2),
              width: double.infinity,
              child: Row(
                children: [
                  Container(
                    child: Center(
                      child: Column(children: [
                        Text(
                            "${DateTime.parse(match.date + " " + match.hour).day}/${DateTime.parse(match.date + " " + match.hour).month}",
                            style: AppTextStyle.body),
                        Text(
                            "${DateTime.parse(match.date + " " + match.hour).hour}:${DateTime.parse(match.date + " " + match.hour).minute}",
                            style: AppTextStyle.bodysmall)
                      ]),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(
                        horizontal: AppConstante.PADDING / 2),
                    height: 20,
                    width: 1,
                    color: Colors.grey,
                  ),
                  Expanded(
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Expanded(
                            child: Text(
                          match.home!.team!.name,
                          style: result.result == "H"
                              ? AppTextStyle.bodygras
                              : AppTextStyle.body,
                          textAlign: TextAlign.right,
                          overflow: TextOverflow.ellipsis,
                        )),
                        SizedBox(
                          width: AppConstante.PADDING / 4,
                        ),
                        MyLogo(
                          path: match.home!.team!.logo,
                          height: 20,
                          width: 20,
                        ),
                        SizedBox(
                          width: AppConstante.PADDING / 2,
                        ),
                        Container(
                          child: Column(
                            children: [
                              match.edition?.competition?.type?.etiquette ==
                                      TypeCompetition.FULL
                                  ? Text(
                                      "${result.homeHalfScore} : ${result.awayHalfScore}",
                                      style: AppTextStyle.bodysmall,
                                    )
                                  : Container(),
                              Text(
                                "${result.homeScore} : ${result.awayScore}",
                                style: AppTextStyle.titleSmall,
                              )
                            ],
                          ),
                        ),
                        SizedBox(
                          width: AppConstante.PADDING / 2,
                        ),
                        MyLogo(
                          path: match.away!.team!.logo,
                          height: 20,
                          width: 20,
                        ),
                        SizedBox(
                          width: AppConstante.PADDING / 4,
                        ),
                        Expanded(
                            child: Text(
                          match.away!.team!.name,
                          style: result.result == "A"
                              ? AppTextStyle.bodygras
                              : AppTextStyle.body,
                          textAlign: TextAlign.left,
                          overflow: TextOverflow.ellipsis,
                        )),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: AppConstante.PADDING / 4,
                  ),
                  if (team != null)
                    ClipRRect(
                      borderRadius: BorderRadius.circular(100),
                      child: Container(
                        decoration: BoxDecoration(
                          color: result.result == "D"
                              ? Colors.grey
                              : (result.result == "H" &&
                                          match.home!.id == team!.id) ||
                                      (result.result == "A" &&
                                          match.away!.id == team!.id)
                                  ? Colors.green
                                  : Colors.red,
                        ),
                        height: AppConstante.PADDING,
                        width: AppConstante.PADDING,
                        child: Center(
                          child: Text(
                            result.result == "D"
                                ? "N"
                                : (result.result == "H" &&
                                            match.home!.id == team!.id) ||
                                        (result.result == "A" &&
                                            match.away!.id == team!.id)
                                    ? "V"
                                    : "D",
                            style: AppTextStyle.bodysmall
                                .copyWith(color: Colors.white),
                          ),
                        ),
                      ),
                    ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
