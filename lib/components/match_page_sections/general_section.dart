import 'package:flutter/material.dart';
import 'package:wikibet/components/b2_b_match_stats_card.dart';
import 'package:wikibet/components/match_page_sections/facts_section.dart';
import 'package:wikibet/components/match_page_sections/other_stats_section.dart';
import 'package:wikibet/components/match_teamsranking_card.dart';
import 'package:wikibet/components/odds_recents_form.dart';
import 'package:wikibet/tools/tools.dart';
import 'package:wikibet/models/fixtureApp/match.dart';

class GeneralSection extends StatelessWidget {
  final Match match;

  const GeneralSection({
    super.key,
    required this.match,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: AppConstante.PADDING / 10),
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: AppConstante.PADDING / 2,
            ),
            OddsRecentsForm(
              match: match,
            ),
            SizedBox(
              height: AppConstante.PADDING / 2,
            ),
            B2BMatchStatsCard(
              match: match,
            ),
            SizedBox(
              height: AppConstante.PADDING / 2,
            ),
            FactsSection(
              match: match,
            ),
            SizedBox(
              height: AppConstante.PADDING / 2,
            ),
            OtherStatsSection(match: match)
          ],
        ),
      ),
    );
  }
}
