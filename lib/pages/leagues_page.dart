import 'package:flutter/material.dart';
import 'package:wikibet/components/background_blur.dart';
import 'package:wikibet/components/league_ligne.dart';
import 'package:wikibet/tools/tools.dart';

class LeaguesPage extends StatelessWidget {
  const LeaguesPage({
    super.key,
  });

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
        title: const SizedBox(
          width: double.infinity,
          child: Column(
            children: [
              Text(
                "Compétitions ",
                style: AppTextStyle.titleMedium,
              ),
              Text(
                "22 leagues",
                style: AppTextStyle.body,
              )
            ],
          ),
        ),
      ),
      body: Stack(
        children: [
          const BackgroundBlur(),
          SafeArea(
            child: Container(
              padding: EdgeInsets.all(AppConstante.DISTANCE / 4),
              child: const SingleChildScrollView(
                child: Column(
                  children: [
                    LeagueLigne(),
                    LeagueLigne(),
                    LeagueLigne(),
                    LeagueLigne(),
                    LeagueLigne(),
                    LeagueLigne(),
                    LeagueLigne(),
                    LeagueLigne(),
                    LeagueLigne(),
                    LeagueLigne(),
                    LeagueLigne(),
                    LeagueLigne(),
                    LeagueLigne(),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
