import 'package:delayed_display/delayed_display.dart';
import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:sliding_switch/sliding_switch.dart';
import 'package:wikibet/components/logo_markers.dart';
import 'package:wikibet/components/main_button.dart';
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
            Container(
              width: double.infinity,
              padding: EdgeInsets.all(AppConstante.PADDING),
              decoration: BoxDecoration(
                  gradient: LinearGradient(colors: [
                AppConstante.primaryBlue.withOpacity(0.7),
                AppConstante.grenn1.withOpacity(0.7)
              ])),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(100),
                        child: Container(
                          height: AppConstante.PADDING * 4,
                          width: AppConstante.PADDING * 4,
                          color: AppConstante.background,
                        ),
                      ),
                      SizedBox(
                        width: AppConstante.PADDING,
                      ),
                      Expanded(
                        child: Text(
                          "Crée ton compte, connectes-toi et profite de toute la puissance de WIKIBET.\nRejoins la communauté !",
                          style: AppTextStyle.titleSmall.copyWith(height: 1.5),
                          textAlign: TextAlign.left,
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: AppConstante.PADDING,
                  ),
                  const MainButton(title: "Je me connectes maintenant !"),
                ],
              ),
            ),
            SizedBox(
              height: AppConstante.PADDING / 2,
            ),
            Row(
              children: [
                const Expanded(
                  child: Divider(
                    height: 1,
                  ),
                ),
                Container(
                  margin:
                      EdgeInsets.symmetric(horizontal: AppConstante.PADDING),
                  child: Text(
                    "ou  ",
                    style:
                        AppTextStyle.titleMedium.copyWith(color: Colors.grey),
                  ),
                ),
                const Expanded(
                  child: Divider(
                    height: 1,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: AppConstante.PADDING / 2,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                GestureDetector(
                    onTap: () {},
                    child: Center(
                        child: Icon(
                      Icons.facebook,
                      size: AppConstante.PADDING * 2.5,
                    ))),
                GestureDetector(
                    onTap: () {},
                    child: Center(
                        child: Icon(
                      Icons.facebook,
                      size: AppConstante.PADDING * 2.5,
                    ))),
                GestureDetector(
                    onTap: () {},
                    child: Center(
                        child: Icon(
                      Icons.facebook,
                      size: AppConstante.PADDING * 2.5,
                    ))),
                GestureDetector(
                  onTap: () {},
                  child: Center(
                      child: Icon(
                    Icons.facebook,
                    size: AppConstante.PADDING * 2.5,
                  )),
                ),
              ],
            ),
            const Spacer(
              flex: 2,
            ),
            const Center(
              child: DelayedDisplay(
                fadingDuration: Duration(seconds: 1),
                child: MyLogo(
                  path: "assets/images/logo.png",
                  height: 200,
                  width: 200,
                ),
              ),
            ),
            const Spacer(),
            Container(
              padding: EdgeInsets.all(AppConstante.PADDING / 2),
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
                      height: AppConstante.PADDING,
                    ),
                    GestureDetector(
                      child: const Text(
                        "Nous faire un don",
                        style: AppTextStyle.titleMedium,
                      ),
                    ),
                    SizedBox(
                      height: AppConstante.PADDING,
                    ),
                    GestureDetector(
                      child: const Text(
                        "A propos de WIKIBET",
                        style: AppTextStyle.titleMedium,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const Spacer(),
            const Spacer(),
            Center(
              child: SlidingSwitch(
                value: false,
                width: 250,
                onChanged: (bool value) {
                  Get.changeThemeMode(
                    !value ? ThemeMode.light : ThemeMode.dark,
                  );
                },
                height: 45,
                animationDuration: const Duration(milliseconds: 400),
                onTap: () {},
                onDoubleTap: () {},
                onSwipe: () {},
                textOff: "Clair",
                textOn: "Sombre",
                contentSize: 17,
                colorOn: AppConstante.grenn1,
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
                  "copyright © WIKIBET 2023",
                  style: AppTextStyle.body,
                )
              ],
            ),
            SizedBox(
              height: AppConstante.PADDING / 2,
            )
          ],
        ),
      ),
    );
  }
}
