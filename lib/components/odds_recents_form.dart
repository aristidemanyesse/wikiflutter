import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:wikibet/components/latest_team_form.dart';
import 'package:wikibet/components/logo_markers.dart';
import 'package:wikibet/components/odd_tip.dart';
import 'package:wikibet/components/p_p_g_label.dart';
import 'package:wikibet/components/prediction_tip.dart';
import 'package:wikibet/controllers/MatchController.dart';
import 'package:wikibet/models/fixtureApp/match.dart';
import 'package:wikibet/tools/tools.dart';

class OddsRecentsForm extends StatelessWidget {
  final Match match;
  OddsRecentsForm({
    super.key,
    required this.match,
  });

  MatchController controller = Get.find();

  @override
  Widget build(BuildContext context) {
    return Card(
        elevation: 0,
        color: Colors.white.withOpacity(0.5),
        child: Container(
          padding: EdgeInsets.symmetric(
              horizontal: AppConstante.PADDING / 2,
              vertical: AppConstante.PADDING),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [OddTip(odd: match.matchOdds!.first)],
              ),
              SizedBox(
                height: AppConstante.PADDING,
              ),
              Obx(() {
                List ranks = [
                  controller.homeRanking.value,
                  controller.awayRanking.value
                ];
                ranks.sort((a, b) => a.level.compareTo(b.level));
                return Column(
                  children: [
                    Row(
                      children: [
                        Spacer(
                          flex: 1,
                        ),
                        Expanded(
                            flex: 4,
                            child: Row(
                              children: [
                                Expanded(
                                  child: LatestTeamForm(
                                    forme: ranks.first.form,
                                    rounded: true,
                                  ),
                                ),
                                Icon(
                                  Icons.arrow_forward,
                                  size: 15,
                                  color: Colors.grey,
                                )
                              ],
                            )),
                        Spacer(
                          flex: 1,
                        ),
                        Expanded(
                            flex: 4,
                            child: Row(
                              children: [
                                Icon(
                                  Icons.arrow_back,
                                  size: 15,
                                  color: Colors.grey,
                                ),
                                Expanded(
                                  child: LatestTeamForm(
                                    forme: ranks.last.form,
                                    rounded: true,
                                    reverse: true,
                                  ),
                                ),
                              ],
                            )),
                        Spacer(
                          flex: 1,
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Spacer(
                          flex: 1,
                        ),
                        Expanded(
                            flex: 4,
                            child: Container(
                              alignment: Alignment.center,
                              margin: EdgeInsets.only(top: 8),
                              child: Text(
                                "${controller.homeRanking.value.level}e _ ${controller.homeRanking.value.pts}pts",
                                style: AppTextStyle.titleSmall.copyWith(
                                    fontStyle: FontStyle.italic,
                                    color: Colors.grey),
                              ),
                            )),
                        Spacer(
                          flex: 1,
                        ),
                        Expanded(
                            flex: 4,
                            child: Container(
                              alignment: Alignment.center,
                              margin: EdgeInsets.only(top: 8),
                              child: Text(
                                "${controller.awayRanking.value.level}e _ ${controller.awayRanking.value.pts}pts",
                                style: AppTextStyle.titleSmall.copyWith(
                                    fontStyle: FontStyle.italic,
                                    color: Colors.grey),
                              ),
                            )),
                        Spacer(
                          flex: 1,
                        ),
                      ],
                    ),
                  ],
                );
              }),
            ],
          ),
        ));
  }
}
