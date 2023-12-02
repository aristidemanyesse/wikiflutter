import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/route_manager.dart';
import 'package:wikibet/components/logo_markers.dart';
import 'package:wikibet/controllers/LeagueController.dart';
import 'package:wikibet/models/competitionApp/competition.dart';
import 'package:wikibet/models/competitionApp/typeCompetition.dart';
import 'package:wikibet/pages/league_page.dart';
import 'package:wikibet/tools/tools.dart';

class LeagueLigne extends StatelessWidget {
  final Competition league;

  LeagueController controller = Get.find();

  LeagueLigne({
    super.key,
    required this.league,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: GestureDetector(
        onTap: () {
          controller.competitionSelected.value = league;
          Get.to(const LeaguePage());
        },
        child: Card(
          child: Container(
            padding: EdgeInsets.all(AppConstante.PADDING / 2),
            child: Row(children: [
              MyLogo(
                path: league.logo,
                height: 30,
                width: 30,
              ),
              SizedBox(
                width: 10,
              ),
              Expanded(
                  child: Text(
                league.name,
                style: AppTextStyle.titleMedium,
              )),
              league.type!.etiquette == TypeCompetition.FULL
                  ? Icon(
                      Icons.bar_chart,
                      size: AppConstante.PADDING,
                    )
                  : Container(),
              SizedBox(
                width: 10,
              ),
              Opacity(
                opacity: 0.65,
                child: MyLogo(
                  path: league.pays!.flag,
                  height: 20,
                  width: 20,
                ),
              )
            ]),
          ),
        ),
      ),
    );
  }
}
