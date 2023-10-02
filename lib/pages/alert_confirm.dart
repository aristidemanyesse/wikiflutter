import 'dart:ui';
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
    return Center(
      child: Container(
        margin: EdgeInsets.all(AppConstante.DISTANCE * 2),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(AppConstante.DISTANCE),
          child: Container(
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
                  child: Row(
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
                        padding: EdgeInsets.all(AppConstante.DISTANCE),
                        child: Center(
                          child: Text(
                            "Filter by distance e const' with the constructor to improve performance. Try adding the const' keyword to the constructor invoc ",
                            style:
                                AppTextStyle.titleMedium.copyWith(height: 1.5),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                      Divider(),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          TextButton(
                              onPressed: () {},
                              child: Text(
                                "OUI",
                                style: AppTextStyle.titleMedium,
                              )),
                          TextButton(
                              onPressed: () {},
                              child: Text(
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
    );
  }
}
