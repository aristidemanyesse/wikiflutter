import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:wikibet/components/pronostic_ligne.dart';
import 'package:wikibet/tools/tools.dart';

class PronosticsDayPage extends StatelessWidget {
  const PronosticsDayPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Card(
              elevation: 2,
              child: Container(
                height: Get.size.height / 5,
                width: double.infinity,
                decoration: BoxDecoration(color: AppConstante.background2),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Pronostics du jour ",
                        style: AppTextStyle.titleLarge,
                      ),
                      SizedBox(
                        height: AppConstante.DISTANCE / 2,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.calendar_today,
                            size: AppConstante.DISTANCE * 2 / 3,
                          ),
                          SizedBox(
                            width: AppConstante.DISTANCE / 3,
                          ),
                          Text(
                            "22 décembre 2023",
                            style: AppTextStyle.body,
                          ),
                        ],
                      )
                    ]),
              ),
            ),
            Container(
              padding: EdgeInsets.all(AppConstante.DISTANCE / 2),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    PronosticLigne(),
                    PronosticLigne(),
                    PronosticLigne(),
                    PronosticLigne(),
                    PronosticLigne(),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
