import 'package:flutter/material.dart';
import 'package:icons_plus/icons_plus.dart';
import 'package:wikibet/components/league_page_sections/facts_section.dart';
import 'package:wikibet/components/league_page_sections/general_section.dart';
import 'package:wikibet/components/league_page_sections/historiques_section.dart';
import 'package:wikibet/components/league_page_sections/other_stats_section.dart';
import 'package:wikibet/components/logo_markers.dart';
import 'package:wikibet/tools/tools.dart';

class LeaguePage extends StatefulWidget {
  const LeaguePage({super.key});

  @override
  State<LeaguePage> createState() => _LeaguePageState();
}

class _LeaguePageState extends State<LeaguePage> {
  final ScrollController _scrollController = ScrollController();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        body: CustomScrollView(
          controller: _scrollController,
          slivers: <Widget>[
            SliverAppBar(
              pinned: true,
              title: Container(
                child: Row(
                  children: [
                    MyLogo(
                      path: "assets/images/logo.png",
                      height: 40,
                      width: 40,
                    ),
                    SizedBox(
                      width: AppConstante.DISTANCE / 2,
                    ),
                    Container(
                        child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Union Sportive de Saint Galloise",
                          style: AppTextStyle.titleMedium,
                          textAlign: TextAlign.center,
                        ),
                        SizedBox(
                          height: AppConstante.DISTANCE / 4,
                        ),
                        Text(
                          "2020 - 2021",
                          style: AppTextStyle.body,
                          textAlign: TextAlign.center,
                        ),
                      ],
                    )),
                  ],
                ),
              ),
              bottom: const TabBar(
                isScrollable: true,
                tabs: [
                  Tab(text: 'CLASSEMENT'),
                  Tab(text: 'MATCHS'),
                  Tab(text: 'STATS'),
                  Tab(text: 'AUTRES'),
                ],
              ),
            ),
            SliverFillRemaining(
              child: TabBarView(
                children: [
                  const GeneralSection(),
                  const HistoriquesSection(),
                  const FactsSection(),
                  const OtherStatsSection(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
