import 'package:delayed_display/delayed_display.dart';
import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:wikibet/pages/ossature_app.dart';

class SplashScreenPage extends StatefulWidget {
  const SplashScreenPage({super.key});

  @override
  State<SplashScreenPage> createState() => _SplashScreenPageState();
}

class _SplashScreenPageState extends State<SplashScreenPage> {
  @override
  void initState() {
    super.initState();
    _startAnimation();
  }

  void _startAnimation() {
    Future.delayed(const Duration(seconds: 4), () {
      Get.off(const OssatureApp());
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Card(
      margin: const EdgeInsets.all(0),
      child: Center(
        child: DelayedDisplay(
          fadingDuration: const Duration(seconds: 3),
          child: TweenAnimationBuilder(
              tween: Tween<double>(begin: 0.0, end: 100),
              duration: const Duration(seconds: 3),
              builder: (BuildContext context, double elevation, Widget? child) {
                return Card(
                  elevation: elevation,
                  child: ClipRRect(
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child: Image.asset(
                        "assets/images/logo.png",
                        height: 200,
                        width: 200,
                      ),
                    ),
                  ),
                );
              }),
        ),
      ),
    ));
  }
}
