import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:wikibet/components/logo_markers.dart';
import 'package:wikibet/components/prediction_tip.dart';
import 'package:wikibet/pages/match_page.dart';
import 'package:wikibet/tools/tools.dart';

class MatchCard extends StatelessWidget {
  const MatchCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: AppConstante.DISTANCE / 5),
      child: InkWell(
        onTap: () {
          Get.to(MatchPage());
        },
        child: Card(
          elevation: 5,
          child: Container(
            width: double.infinity,
            padding: EdgeInsets.all(AppConstante.DISTANCE / 2),
            child: Column(
              children: [
                Row(
                  children: [
                    const MyLogo(
                      path: "assets/images/logo.png",
                      height: 30,
                      width: 30,
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    const Text(
                      "Championnat de colombie",
                      style: AppTextStyle.bodygras,
                    ),
                    const Spacer(),
                    Icon(
                      Icons.bar_chart,
                      size: AppConstante.DISTANCE,
                    )
                  ],
                ),
                SizedBox(
                  height: AppConstante.DISTANCE / 2,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Expanded(
                        child: Column(
                      children: [
                        MyLogo(
                          path: "assets/images/logo.png",
                          height: 40,
                          width: 40,
                        ),
                        Text(
                          "Manchester United de Los Angeles",
                          overflow: TextOverflow.ellipsis,
                          style: AppTextStyle.bodysmall,
                          textAlign: TextAlign.center,
                        ),
                      ],
                    )),
                    SizedBox(
                      width: AppConstante.DISTANCE / 4,
                    ),
                    Expanded(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text("0 : 0", style: AppTextStyle.titleMedium),
                          SizedBox(
                            height: AppConstante.DISTANCE / 4,
                          ),
                          const Text("12 Décembre 2023",
                              style: AppTextStyle.bodygras),
                          const Text(
                            "17:45",
                            style: TextStyle(
                                fontSize: 12, fontWeight: FontWeight.w500),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      width: AppConstante.DISTANCE / 4,
                    ),
                    const Expanded(
                        child: Column(
                      children: [
                        MyLogo(
                          path: "assets/images/logo.png",
                          height: 40,
                          width: 40,
                        ),
                        Text(
                          "Manchester United",
                          overflow: TextOverflow.ellipsis,
                          style: AppTextStyle.bodysmall,
                          textAlign: TextAlign.center,
                        ),
                      ],
                    )),
                  ],
                ),
                SizedBox(
                  height: AppConstante.DISTANCE / 2,
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
