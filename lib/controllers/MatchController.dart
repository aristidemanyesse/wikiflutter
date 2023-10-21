import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/basic.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:get/get.dart';
import 'package:wikibet/controllers/CalendarController.dart';
import 'package:wikibet/modals/please_wait.dart';
import 'package:wikibet/models/competitionApp/ligneRanking.dart';
import 'package:wikibet/models/fixtureApp/match.dart';
import "package:intl/intl.dart";
import 'package:wikibet/models/statsApp/beforeMatchStat.dart';

class MatchController extends GetxController {
  Rx<List<Match>> matchs = Rx<List<Match>>([]);
  Rx<Match> matchSelected = Match().obs;
  Rx<LigneRanking> homeRanking = LigneRanking().obs;
  Rx<LigneRanking> awayRanking = LigneRanking().obs;
  Rx<List<BeforeMatchStat>> befores = Rx<List<BeforeMatchStat>>([]);
  Rx<List<Match>> homeLastMatchs = Rx<List<Match>>([]);
  Rx<List<Match>> awayLastMatchs = Rx<List<Match>>([]);
  RxBool wait = false.obs;

  CalendarController calendar = Get.find();

  String conv_date(DateTime mdate) {
    return "${mdate.year}-${mdate.month}-${mdate.day}";
  }

  void getMatchs(DateTime date) async {
    matchs.value = await Match.all({"date": conv_date(date)});
    wait.value = false;
  }

  void onInit() {
    getMatchs(calendar.today);
    super.onInit();

    ever(wait, (value) {
      if (value) {
        Get.dialog(Center(child: PleaseWait()), barrierDismissible: false);
      } else {
        Get.back();
      }
    });

    ever(calendar.selectedDate, (value) {
      wait.value = true;
      getMatchs(calendar.selectedDate.value!);
    });

    ever(matchSelected, (value) async {
      if (value != Match()) {
        // wait.value = true;
        var datas =
            await LigneRanking.all({"team": matchSelected.value.home!.id});
        homeRanking.value = datas.first;
        datas = await LigneRanking.all({"team": matchSelected.value.away!.id});
        awayRanking.value = datas.first;

        befores.value =
            await BeforeMatchStat.all({"match": matchSelected.value.id});

        homeLastMatchs.value = await Match.all({
              "dateLte": conv_date(DateTime.parse(matchSelected.value.date)),
              "finished": true,
              "edition": matchSelected.value.home!.edition!.id,
              "home": matchSelected.value.home!.id
            }) +
            await Match.all({
              "dateLte": conv_date(DateTime.parse(matchSelected.value.date)),
              "finished": true,
              "edition": matchSelected.value.home!.edition!.id,
              "away": matchSelected.value.home!.id
            });
        homeLastMatchs.value.sort((a, b) => b.date.compareTo(a.date));
        homeLastMatchs.value = homeLastMatchs.value.take(10).toList();
        // wait.value = false;

        awayLastMatchs.value = await Match.all({
              "dateLte": conv_date(DateTime.parse(matchSelected.value.date)),
              "finished": true,
              "edition": matchSelected.value.away!.edition!.id,
              "home": matchSelected.value.away!.id
            }) +
            await Match.all({
              "dateLte": conv_date(DateTime.parse(matchSelected.value.date)),
              "finished": true,
              "edition": matchSelected.value.away!.edition!.id,
              "away": matchSelected.value.away!.id
            });
        awayLastMatchs.value.sort((a, b) => b.date.compareTo(a.date));
        awayLastMatchs.value = awayLastMatchs.value.take(10).toList();
      }
    });
  }
}
