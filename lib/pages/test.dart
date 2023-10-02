import 'dart:ui';

import 'package:blur/blur.dart';
import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:icons_plus/icons_plus.dart';
import 'package:sliding_switch/sliding_switch.dart';
import 'package:wikibet/components/background_blur.dart';
import 'package:wikibet/components/logo_markers.dart';
import 'package:wikibet/pages/alert_confirm.dart';
import 'package:wikibet/pages/please_wait.dart';
import 'package:wikibet/tools/tools.dart';

class TextPage extends StatefulWidget {
  const TextPage({super.key});

  @override
  State<TextPage> createState() => _TextPageState();
}

class _TextPageState extends State<TextPage> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          BackgroundBlur(),
          Column(
            children: [
              Center(
                child: Container(
                  margin: EdgeInsets.all(AppConstante.DISTANCE * 2),
                  child: ClipRRect(
                    borderRadius:
                        BorderRadius.circular(AppConstante.DISTANCE * 2),
                    child: Container(
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Container(
                            height: Get.size.height / 4,
                            width: double.infinity,
                            padding: EdgeInsets.symmetric(
                                horizontal: AppConstante.DISTANCE / 2),
                            child: Stack(
                              alignment: AlignmentDirectional.center,
                              children: [
                                Container(
                                  decoration: BoxDecoration(
                                      gradient: LinearGradient(colors: [
                                    AppConstante.grenn1.withOpacity(0.5),
                                    AppConstante.primaryBlue.withOpacity(0.5),
                                  ])),
                                ),
                                MyLogo(
                                  path: "assets/images/logo.png",
                                  height: 200,
                                  width: 200,
                                ).frosted(),
                                Container(
                                  decoration: BoxDecoration(
                                    color: Colors.white.withOpacity(0.5),
                                  ),
                                  width: Get.size.width,
                                ),
                                Text(
                                  "Veuillez patienter...",
                                  style: AppTextStyle.titleMedium,
                                ),
                              ],
                            ),
                          ),
                          Container(
                            decoration: BoxDecoration(
                              color: Colors.white.withOpacity(0.15),
                            ),
                            width: Get.size.width,
                            child: Container(
                              padding: EdgeInsets.all(AppConstante.DISTANCE),
                              child: Center(
                                child: LinearProgressIndicator(),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
