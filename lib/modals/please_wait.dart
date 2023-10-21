import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:wikibet/components/logo_markers.dart';
import 'package:wikibet/tools/tools.dart';

class PleaseWait extends StatelessWidget {
  const PleaseWait({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(AppConstante.PADDING * 2),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(AppConstante.PADDING),
        child: Container(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                height: 50,
                width: double.infinity,
                padding:
                    EdgeInsets.symmetric(horizontal: AppConstante.PADDING / 2),
                decoration: BoxDecoration(
                    gradient: LinearGradient(colors: [
                  AppConstante.grenn1.withOpacity(0.5),
                  AppConstante.primaryBlue.withOpacity(0.5),
                ])),
                child: const Row(
                  children: [
                    WikibetLogo(
                      height: 35,
                      width: 35,
                    ),
                    Expanded(
                      child: Center(
                        child: Text(
                          "Veuillez patienter...",
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
                child: Container(
                  padding: EdgeInsets.all(AppConstante.PADDING),
                  child: const Center(
                    child: LinearProgressIndicator(),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
