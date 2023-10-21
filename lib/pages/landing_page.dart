import 'package:delayed_display/delayed_display.dart';
import 'package:drop_shadow_image/drop_shadow_image.dart';
import 'package:flutter/material.dart';
import 'package:wikibet/components/main_button.dart';
import 'package:wikibet/tools/tools.dart';
import 'package:shimmer_animation/shimmer_animation.dart';

class LandingPage extends StatefulWidget {
  const LandingPage({super.key});

  @override
  State<LandingPage> createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
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
          const Spacer(
            flex: 5,
          ),
          Center(
            child: DelayedDisplay(
              fadingDuration: const Duration(seconds: 1),
              child: DropShadowImage(
                  image: Image.asset(
                "assets/images/logo.png",
                height: 200,
                width: 200,
              )),
            ),
          ),
          const Spacer(
            flex: 5,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Ne parie plus'.toUpperCase(),
                style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                    fontWeight: FontWeight.bold,
                    color: Colors.white38,
                    letterSpacing: 2),
              ),
              DelayedDisplay(
                fadingDuration: const Duration(seconds: 2),
                child: Text(
                  'Investie'.toUpperCase(),
                  style: Theme.of(context).textTheme.displayMedium?.copyWith(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      letterSpacing: 1),
                ),
              ),
            ],
          ),
          const Spacer(),
          Container(
            padding: EdgeInsets.symmetric(horizontal: AppConstante.PADDING * 3),
            child: Text(
              "Si tu veux gagner, oublies les paris,\nvois ça comme des investissements! ",
              style: AppTextStyle.titleSmall.copyWith(
                  fontWeight: FontWeight.w600,
                  color: Colors.white60,
                  height: 1.5),
              textAlign: TextAlign.center,
            ),
          ),
          const Spacer(
            flex: 2,
          ),
          Hero(
            tag: "home",
            child: ClipRRect(
                borderRadius: BorderRadius.circular(30),
                child: Shimmer(
                    child: const MainButton(
                  title: "Nouveau départ",
                ))),
          ),
          SizedBox(
            height: AppConstante.PADDING,
          ),
          const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "copyright © wikibet 2023",
                style: AppTextStyle.body,
              )
            ],
          ),
          const SizedBox(
            height: 20,
          )
        ],
      ),
    ));
  }
}
