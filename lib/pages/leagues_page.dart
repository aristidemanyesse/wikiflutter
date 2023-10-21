import 'package:flutter/material.dart';
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
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.symmetric(
              horizontal: AppConstante.PADDING / 4,
              vertical: AppConstante.PADDING / 2),
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
    );
  }
}
