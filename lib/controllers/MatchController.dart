import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/basic.dart';
import 'package:get/get.dart';
import 'package:wikibet/controllers/CalendarController.dart';
import 'package:wikibet/modals/please_wait.dart';
import 'package:wikibet/models/competitionApp/ligneRanking.dart';
import 'package:wikibet/models/fixtureApp/match.dart';
import "package:intl/intl.dart";
import 'package:wikibet/models/statsApp/beforeMatchStat.dart';
import 'package:wikibet/models/statsApp/fact.dart';

class MatchController extends GetxController {
  Rx<List<Match>> matchs = Rx<List<Match>>([]);
  Rx<Match> matchSelected = const Match().obs;
  Rx<LigneRanking> homeRanking = const LigneRanking().obs;
  Rx<LigneRanking> awayRanking = const LigneRanking().obs;
  Rx<List<BeforeMatchStat>> befores = Rx<List<BeforeMatchStat>>([]);
  Rx<List<Match>> homeLastMatchs = Rx<List<Match>>([]);
  Rx<List<Match>> awayLastMatchs = Rx<List<Match>>([]);
  Rx<List<Fact>> homeFacts = Rx<List<Fact>>([]);
  Rx<List<Fact>> awayFacts = Rx<List<Fact>>([]);
  RxBool wait = false.obs;

  CalendarController calendar = Get.find();
  DateFormat dateFormat = DateFormat('y-MM-dd', 'fr');

  String conv_date(DateTime mdate) {
    return dateFormat.format(mdate);
  }

  void getMatchs(DateTime date) async {
    matchs.value = await Match.all({"date": conv_date(date)});
    wait.value = false;
  }

  @override
  void onInit() {
    getMatchs(calendar.today);
    super.onInit();

    ever(wait, (value) {
      if (value) {
        Get.dialog(const Center(child: PleaseWait()), barrierDismissible: false);
      } else {
        Get.back();
      }
    });

    ever(calendar.selectedDate, (value) {
      wait.value = true;
      getMatchs(calendar.selectedDate.value!);
    });

    ever(matchSelected, (value) async {
      if (value != const Match()) {
        // wait.value = true;

        var datas = await LigneRanking.all({
          "team": matchSelected.value.home!.id,
          "date": matchSelected.value.date
        });
        homeRanking.value = datas.first;
        datas = await LigneRanking.all({
          "team": matchSelected.value.away!.id,
          "date": matchSelected.value.date
        });
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

        homeFacts.value = await Fact.all({
          "match": matchSelected.value.id,
          "team": matchSelected.value.home!.id
        });
        awayFacts.value = await Fact.all({
          "match": matchSelected.value.id,
          "team": matchSelected.value.away!.id
        });
      }
    });
  }
}
