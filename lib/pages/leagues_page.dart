import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:wikibet/components/league_ligne.dart';
import 'package:wikibet/controllers/LeagueController.dart';
import 'package:wikibet/tools/tools.dart';

class LeaguesPage extends StatelessWidget {
  LeaguesPage({
    super.key,
  });

  LeagueController controller = Get.find();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 2,
        flexibleSpace: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(colors: [
            AppConstante.grenn1.withOpacity(0.5),
            AppConstante.primaryBlue.withOpacity(0.5)
          ])),
        ),
        title: SizedBox(
          width: double.infinity,
          child: Column(
            children: [
              const Text(
                "Compétitions ",
                style: AppTextStyle.titleMedium,
              ),
              Text(
                "${controller.competitions.value.length} leagues",
                style: AppTextStyle.body,
              )
            ],
          ),
        ),
      ),
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.symmetric(
              horizontal: AppConstante.PADDING / 4,
              vertical: AppConstante.PADDING / 2),
          child: SingleChildScrollView(
            child: Column(
                children: controller.competitions.value
                    .map((league) => LeagueLigne(
                          league: league,
                        ))
                    .toList()),
          ),
        ),
      ),
    );
  }
}
