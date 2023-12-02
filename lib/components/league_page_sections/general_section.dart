import 'package:flutter/material.dart';
import 'package:wikibet/components/league_teamsranking_card.dart';
import 'package:wikibet/components/match_teamsranking_card.dart';
import 'package:wikibet/tools/tools.dart';

class GeneralSection extends StatelessWidget {
  const GeneralSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: AppConstante.PADDING / 2),
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: AppConstante.PADDING,
            ),
            LeagueTeamsrankingCard(),
            SizedBox(
              height: AppConstante.PADDING,
            ),
          ],
        ),
      ),
    );
  }
}
