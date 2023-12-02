import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:wikibet/components/logo_markers.dart';
import 'package:wikibet/components/match_card.dart';
import 'package:wikibet/controllers/MatchController.dart';
import 'package:wikibet/pages/calendar_button.dart';
import 'package:wikibet/tools/tools.dart';

class MatchsPage extends StatefulWidget {
  const MatchsPage({super.key});

  @override
  State<MatchsPage> createState() => _MatchsPageState();
}

class _MatchsPageState extends State<MatchsPage> {
  MatchController matchController = Get.find();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 2.0,
        flexibleSpace: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(colors: [
            AppConstante.grenn1.withOpacity(0.5),
            AppConstante.primaryBlue.withOpacity(0.5),
          ])),
        ),
        leading: Container(
          margin: EdgeInsets.only(left: AppConstante.PADDING / 2),
          child: const WikibetLogo(
            height: 10,
            width: 10,
          ),
        ),
        actions: [
          CalendarButton(),
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.search,
              )),
        ],
        title:
            const Row(crossAxisAlignment: CrossAxisAlignment.center, children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Bonjour",
                style: AppTextStyle.body,
              ),
              Text(
                "Fabien Oligard",
                style: AppTextStyle.titleMedium,
              )
            ],
          )
        ]),
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        padding: EdgeInsets.symmetric(
            horizontal: AppConstante.PADDING / 4,
            vertical: AppConstante.PADDING / 3),
        child: SingleChildScrollView(
          child: Obx(() {
            return matchController.matchs.value.isNotEmpty
                ? Column(
                    children: matchController.matchs.value
                        .map((match) => MatchCard(
                              match: match,
                            ))
                        .toList(),
                  )
                : Column(
                    children: [
                      const Center(
                        child: Text(
                          "Aucun match pour ce jour !",
                          style: AppTextStyle.titleMedium,
                        ),
                      ),
                    ],
                  );
          }),
        ),
      ),
    );
  }
}
