import 'package:bordered_text/bordered_text.dart';
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
      appBar: AppBar(
        title: const SizedBox(
          width: double.infinity,
          child: Row(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Pronostics du jour",
                    style: AppTextStyle.titleMedium,
                  ),
                  Text(
                    "10 pronostics",
                    style: AppTextStyle.body,
                  )
                ],
              ),
            ],
          ),
        ),
        actions: [
          IconButton(
              onPressed: () {},
              icon: Stack(
                alignment: Alignment.center,
                children: [
                  Opacity(
                    opacity: 0.7,
                    child: Icon(
                      Icons.calendar_today_outlined,
                      size: AppConstante.PADDING * 1.7,
                    ),
                  ),
                  const Positioned(
                    top: 13,
                    left: 8.5,
                    child: Text(
                      "23",
                      style: AppTextStyle.titleSmall,
                    ),
                  )
                ],
              ))
        ],
        flexibleSpace: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(colors: [
            AppConstante.grenn1.withOpacity(0.5),
            AppConstante.primaryBlue.withOpacity(0.5)
          ])),
        ),
      ),
      body: SafeArea(
        child: Column(
          children: [
            Container(
              height: Get.size.height / 4,
              width: double.infinity,
              decoration: BoxDecoration(
                  gradient: LinearGradient(colors: [
                AppConstante.grenn1.withOpacity(0.5),
                AppConstante.primaryBlue.withOpacity(0.5)
              ])),
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Center(
                    child: BorderedText(
                      strokeWidth: 1.5,
                      strokeColor: Colors.white.withOpacity(0.2),
                      child: Text(
                        'WIN',
                        style: Theme.of(context)
                            .textTheme
                            .displayLarge
                            ?.copyWith(
                                decoration: TextDecoration.none,
                                decorationColor: Colors.transparent,
                                color: Colors.transparent,
                                fontSize: 200,
                                fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                  Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          "Pronostics du jour ",
                          style: AppTextStyle.titleLarge,
                        ),
                        SizedBox(
                          height: AppConstante.PADDING / 2,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.calendar_today,
                              size: AppConstante.PADDING * 2 / 3,
                            ),
                            SizedBox(
                              width: AppConstante.PADDING / 3,
                            ),
                            const Text(
                              "22 décembre 2023",
                              style: AppTextStyle.body,
                            ),
                          ],
                        )
                      ]),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.all(AppConstante.PADDING / 4),
              child: const SingleChildScrollView(
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
