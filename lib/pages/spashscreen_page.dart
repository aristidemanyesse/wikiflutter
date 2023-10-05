import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:delayed_display/delayed_display.dart';
import 'package:drop_shadow_image/drop_shadow_image.dart';
import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:simple_shadow/simple_shadow.dart';
import 'package:wikibet/components/logo_markers.dart';
import 'package:wikibet/pages/leagues_page.dart';
import 'package:wikibet/pages/main_button.dart';
import 'package:wikibet/pages/matchs_page.dart';
import 'package:wikibet/pages/ossature_app.dart';
import 'package:wikibet/pages/pronostics_day_page.dart';
import 'package:wikibet/pages/settings_page.dart';
import 'package:wikibet/pages/test.dart';
import 'package:wikibet/tools/tools.dart';

class SplashScreenPage extends StatefulWidget {
  const SplashScreenPage({super.key});

  @override
  State<SplashScreenPage> createState() => _SplashScreenPageState();
}

class _SplashScreenPageState extends State<SplashScreenPage> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(
              colors: [AppConstante.primaryBlue, AppConstante.grenn1])),
      child: Column(
        children: [
          Spacer(),
          Center(
            child: DelayedDisplay(
              fadingDuration: Duration(seconds: 1),
              child: DropShadowImage(
                  image: Image.asset(
                "assets/images/logo.png",
                height: 200,
                width: 200,
              )),
            ),
          ),
          DelayedDisplay(
            fadingDuration: Duration(seconds: 5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Ne parie plus,',
                  style: AppTextStyle.titleMedium,
                ),
                Text(
                  ' Investie !',
                  style: AppTextStyle.titleMedium
                      .copyWith(color: AppConstante.secondaryBlue),
                ),
              ],
            ),
          ),
          Spacer(),
          Hero(
            tag: "home",
            child: MainButton(),
          ),
          const SizedBox(
            height: 50,
          ),
        ],
      ),
    ));
  }
}
