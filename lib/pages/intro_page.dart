import 'package:delayed_display/delayed_display.dart';
import 'package:drop_shadow_image/drop_shadow_image.dart';
import 'package:flutter/material.dart';
import 'package:wikibet/components/main_button.dart';
import 'package:wikibet/tools/tools.dart';

class IntroPage extends StatefulWidget {
  const IntroPage({super.key});

  @override
  State<IntroPage> createState() => _IntroPageState();
}

class _IntroPageState extends State<IntroPage> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: PageView(
      children: const [Intro1()],
    ));
  }
}

class Intro1 extends StatelessWidget {
  const Intro1({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(
              colors: [AppConstante.primaryBlue, AppConstante.grenn1])),
      child: Column(
        children: [
          const Spacer(),
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
          DelayedDisplay(
            fadingDuration: const Duration(seconds: 5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
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
          const Spacer(),
          const Hero(
            tag: "home",
            child: MainButton(
              title: "Nouveau départ",
            ),
          ),
          SizedBox(
            height: AppConstante.DISTANCE,
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
            height: 50,
          )
        ],
      ),
    );
  }
}
