import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:wikibet/components/logo_markers.dart';
import 'package:wikibet/tools/tools.dart';

class AlertConfirm extends StatelessWidget {
  const AlertConfirm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Center(
        child: Container(
          margin: EdgeInsets.all(AppConstante.DISTANCE * 2),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(AppConstante.DISTANCE),
            child: Container(
              color: Theme.of(context).scaffoldBackgroundColor,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Container(
                    height: 50,
                    width: double.infinity,
                    padding: EdgeInsets.symmetric(
                        horizontal: AppConstante.DISTANCE / 2),
                    decoration: BoxDecoration(
                        gradient: LinearGradient(colors: [
                      AppConstante.grenn1.withOpacity(0.5),
                      AppConstante.primaryBlue.withOpacity(0.5),
                    ])),
                    child: const Row(
                      children: [
                        MyLogo(
                          path: "assets/images/logo.png",
                          height: 35,
                          width: 35,
                        ),
                        Expanded(
                          child: Center(
                            child: Text(
                              "C'est le titre du dialog",
                              style: AppTextStyle.titleMedium,
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.white.withOpacity(0.15),
                    ),
                    width: Get.size.width,
                    child: Column(
                      children: [
                        Container(
                          padding: EdgeInsets.all(AppConstante.DISTANCE / 3),
                          child: Column(
                            children: [
                              Card(
                                child: Container(
                                  padding: EdgeInsets.symmetric(
                                      horizontal: AppConstante.DISTANCE / 4),
                                  child: Row(
                                    children: [
                                      Expanded(
                                        child: Column(
                                          children: [
                                            Row(
                                              children: [
                                                const MyLogo(
                                                  path:
                                                      "assets/images/logo.png",
                                                  height: 20,
                                                  width: 20,
                                                ),
                                                SizedBox(
                                                  width:
                                                      AppConstante.DISTANCE / 2,
                                                ),
                                                Expanded(
                                                  child: Text(
                                                    "Real de Madrid",
                                                    style: AppTextStyle
                                                        .titleSmall
                                                        .copyWith(
                                                            fontWeight:
                                                                FontWeight
                                                                    .normal),
                                                  ),
                                                ),
                                              ],
                                            ),
                                            Row(
                                              children: [
                                                const MyLogo(
                                                  path:
                                                      "assets/images/logo.png",
                                                  height: 20,
                                                  width: 20,
                                                ),
                                                SizedBox(
                                                  width:
                                                      AppConstante.DISTANCE / 2,
                                                ),
                                                Expanded(
                                                  child: Text(
                                                    "Real de Madrid",
                                                    style: AppTextStyle
                                                        .titleSmall
                                                        .copyWith(
                                                            fontWeight:
                                                                FontWeight
                                                                    .normal),
                                                  ),
                                                ),
                                              ],
                                            )
                                          ],
                                        ),
                                      ),
                                      Container(
                                        child: const Card(
                                            child: Column(
                                          children: [
                                            Text("V1",
                                                style: AppTextStyle.titleSmall),
                                            Divider(),
                                            Text("1,23",
                                                style: AppTextStyle.bodygras)
                                          ],
                                        )),
                                      )
                                    ],
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                        const Divider(),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            TextButton(
                                onPressed: () {},
                                child: const Text(
                                  "OUI",
                                  style: AppTextStyle.titleMedium,
                                )),
                            TextButton(
                                onPressed: () {},
                                child: const Text(
                                  "NON",
                                  style: AppTextStyle.titleMedium,
                                ))
                          ],
                        )
                      ],
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
