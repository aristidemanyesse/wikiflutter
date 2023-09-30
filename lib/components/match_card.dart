import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:wikibet/components/logo_markers.dart';
import 'package:wikibet/pages/match_page.dart';
import 'package:wikibet/tools/tools.dart';

class MatchCard extends StatelessWidget {
  const MatchCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Get.to(const MatchPage());
      },
      child: Container(
        child: Card(
          child: Container(
            width: double.infinity,
            padding: EdgeInsets.all(AppConstante.DISTANCE / 2),
            child: Column(
              children: [
                const Row(
                  children: [
                    MyLogo(
                      path: "assets/images/logo.png",
                      height: 30,
                      width: 30,
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      "Championnat de colombie",
                      style: AppTextStyle.bodygras,
                    ),
                  ],
                ),
                const SizedBox(
                  height: 15,
                ),
                const Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Expanded(
                        child: Text(
                      "Manchester United",
                      style: AppTextStyle.body,
                      textAlign: TextAlign.center,
                    )),
                    MyLogo(
                      path: "assets/images/logo.png",
                      height: 40,
                      width: 40,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Row(
                      children: [
                        Text("0 : 0", style: AppTextStyle.titleMedium)
                      ],
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    MyLogo(
                      path: "assets/images/logo.png",
                      height: 40,
                      width: 40,
                    ),
                    Expanded(
                        child: Text(
                      "Union Sportive de Saint Galloise",
                      style: AppTextStyle.body,
                      textAlign: TextAlign.center,
                    )),
                  ],
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "12 Décembre 2023 17:45",
                      style:
                          TextStyle(fontSize: 12, fontWeight: FontWeight.w500),
                    )
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: List.generate(12, (index) {
                      return Container(
                        margin: const EdgeInsets.only(right: 10),
                        padding: const EdgeInsets.symmetric(
                            horizontal: 7, vertical: 5),
                        decoration: BoxDecoration(
                            color: Colors.grey[350],
                            borderRadius: BorderRadius.circular(5)),
                        child: const Text("+1,5 but",
                            style: TextStyle(
                                fontSize: 12, fontWeight: FontWeight.w500)),
                      );
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
