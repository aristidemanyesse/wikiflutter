import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/basic.dart';
import 'package:get/get.dart';
import 'package:wikibet/controllers/CalendarController.dart';
import 'package:wikibet/modals/please_wait.dart';
import 'package:wikibet/models/competitionApp/competition.dart';
import "package:intl/intl.dart";
import 'package:wikibet/models/competitionApp/editionCompetition.dart';
import 'package:wikibet/models/competitionApp/ligneRanking.dart';
import 'package:wikibet/models/competitionApp/ranking.dart';

class LeagueController extends GetxController {
  Rx<List<Competition>> competitions = Rx<List<Competition>>([]);
  Rx<Competition> competitionSelected = const Competition().obs;
  Rx<EditionCompetition> editionSelected = const EditionCompetition().obs;
  Rx<List<EditionCompetition>> editions = Rx<List<EditionCompetition>>([]);
  Rx<List<Ranking>> rankings = Rx<List<Ranking>>([]);
  Rx<Ranking> rankingSelected = const Ranking().obs;
  Rx<List<LigneRanking>> lignerankings = Rx<List<LigneRanking>>([]);
  RxBool wait = false.obs;

  CalendarController calendar = Get.find();
  DateFormat dateFormat = DateFormat('y-MM-dd', 'fr');

  String conv_date(DateTime mdate) {
    return dateFormat.format(mdate);
  }

  void getCompetitions() async {
    competitions.value = await Competition.all({});
    wait.value = false;
  }

  @override
  void onInit() {
    super.onInit();

    getCompetitions();

    ever(wait, (value) {
      if (value) {
        Get.dialog(const Center(child: PleaseWait()),
            barrierDismissible: false);
      } else {
        Get.back();
      }
    });

    ever(competitionSelected, (value) async {
      if (value != const Competition()) {
        editions.value = await EditionCompetition.all(
            {"competition": competitionSelected.value.id});
        editionSelected.value = editions.value.first;
      }
    });

    ever(editionSelected, (value) async {
      if (value != const EditionCompetition()) {
        rankings.value =
            await Ranking.all({"edition": editionSelected.value.id});
        rankingSelected.value = rankings.value.first;
      }
    });
  }
}
