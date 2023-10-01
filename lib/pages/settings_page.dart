import 'package:delayed_display/delayed_display.dart';
import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:sliding_switch/sliding_switch.dart';
import 'package:wikibet/components/logo_markers.dart';
import 'package:wikibet/tools/tools.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Card(
              elevation: 1,
              child: Container(
                height: Get.size.height / 4,
                width: double.infinity,
                padding: EdgeInsets.all(AppConstante.DISTANCE / 2),
                decoration: BoxDecoration(color: AppConstante.background2),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Row(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(100),
                            child: Container(
                              height: AppConstante.DISTANCE * 3,
                              width: AppConstante.DISTANCE * 3,
                              color: AppConstante.background,
                            ),
                          ),
                          SizedBox(
                            width: AppConstante.DISTANCE / 2,
                          ),
                          const Expanded(
                            child: Text(
                              "Text(String data, {Key? key, TextStyle? TextAlign? textAlign, Terecool? softWrap, TextOverflow? )",
                              style: AppTextStyle.body,
                              textAlign: TextAlign.center,
                            ),
                          )
                        ],
                      ),
                      Container(
                        child: ElevatedButton(
                            onPressed: () {},
                            child: const Text("Se connecter par mail")),
                      ),
                      SizedBox(
                        height: AppConstante.DISTANCE / 2,
                      ),
                      const Text(
                        "ou ",
                        style: AppTextStyle.titleMedium,
                      ),
                      SizedBox(
                        height: AppConstante.DISTANCE / 2,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          GestureDetector(
                              onTap: () {},
                              child: Center(
                                  child: Icon(
                                Icons.facebook,
                                size: AppConstante.DISTANCE * 2,
                              ))),
                          GestureDetector(
                              onTap: () {},
                              child: Center(
                                  child: Icon(
                                Icons.facebook,
                                size: AppConstante.DISTANCE * 2,
                              ))),
                          GestureDetector(
                              onTap: () {},
                              child: Center(
                                  child: Icon(
                                Icons.facebook,
                                size: AppConstante.DISTANCE * 2,
                              ))),
                          GestureDetector(
                            onTap: () {},
                            child: Center(
                                child: Icon(
                              Icons.facebook,
                              size: AppConstante.DISTANCE * 2,
                            )),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: AppConstante.DISTANCE / 2,
                      ),
                    ]),
              ),
            ),
            const Spacer(),
            const Center(
              child: DelayedDisplay(
                fadingDuration: Duration(seconds: 1),
                child: MyLogo(
                  path: "assets/images/logo.png",
                  height: 250,
                  width: 250,
                ),
              ),
            ),
            const Spacer(),
            Container(
              padding: EdgeInsets.all(AppConstante.DISTANCE / 2),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    GestureDetector(
                      child: const Text(
                        "J'ai des suggestions",
                        style: AppTextStyle.titleMedium,
                      ),
                    ),
                    SizedBox(
                      height: AppConstante.DISTANCE,
                    ),
                    GestureDetector(
                      child: const Text(
                        "Nous faire un don",
                        style: AppTextStyle.titleMedium,
                      ),
                    ),
                    SizedBox(
                      height: AppConstante.DISTANCE,
                    ),
                    GestureDetector(
                      child: const Text(
                        "A propos de wikibet",
                        style: AppTextStyle.titleMedium,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const Spacer(),
            Center(
              child: SlidingSwitch(
                value: false,
                width: 250,
                onChanged: (bool value) {
                  print(value);
                },
                height: 45,
                animationDuration: const Duration(milliseconds: 400),
                onTap: () {},
                onDoubleTap: () {},
                onSwipe: () {},
                textOff: "Clair",
                textOn: "Sombre",
                contentSize: 17,
                colorOn: const Color(0xffdc6c73),
                colorOff: const Color(0xff6682c0),
                background: const Color(0xffe4e5eb),
                buttonColor: const Color(0xfff7f5f7),
                inactiveColor: const Color(0xff636f7b),
              ),
            ),
            const Spacer(),
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "copyright wikibet 2023",
                  style: AppTextStyle.body,
                )
              ],
            ),
            SizedBox(
              height: AppConstante.DISTANCE,
            )
          ],
        ),
      ),
    );
  }
}