import 'package:flutter/material.dart';
import 'package:wikibet/components/match_teamsranking_card.dart';
import 'package:wikibet/tools/tools.dart';

class GeneralSection extends StatelessWidget {
  const GeneralSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: AppConstante.DISTANCE / 2),
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: AppConstante.DISTANCE,
            ),
            const MatchTeamsrankingCard(),
            SizedBox(
              height: AppConstante.DISTANCE,
            ),
          ],
        ),
      ),
    );
  }
}
