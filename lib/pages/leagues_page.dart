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
        title: Container(
            child: const Column(
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
        )),
      ),
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.all(AppConstante.DISTANCE / 2),
          child: const SingleChildScrollView(
            child: Column(
              children: [
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
