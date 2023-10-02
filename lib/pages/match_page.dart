import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:wikibet/components/logo_markers.dart';
import 'package:wikibet/components/match_page_sections/facts_section.dart';
import 'package:wikibet/components/match_page_sections/general_section.dart';
import 'package:wikibet/components/match_page_sections/historiques_section.dart';
import 'package:wikibet/components/match_page_sections/other_stats_section.dart';
import 'package:wikibet/components/match_page_sections/prediction_section.dart';
import 'package:wikibet/tools/tools.dart';

class MatchPage extends StatefulWidget {
  const MatchPage({super.key});

  @override
  State<MatchPage> createState() => _MatchPageState();
}

class _MatchPageState extends State<MatchPage> {
  final ScrollController _scrollController = ScrollController();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        body: CustomScrollView(
          controller: _scrollController,
          slivers: <Widget>[
            SliverAppBar(
              pinned: true,
              expandedHeight: Get.size.height * 0.2,
              flexibleSpace: FlexibleSpaceBar(
                expandedTitleScale: 1.1,
                centerTitle: true,
                title: SafeArea(
                  child: Center(
                    child: Container(
                      width: double.infinity,
                      child: const Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Expanded(
                              child: Text(
                            "Manchester United",
                            style: AppTextStyle.body,
                            textAlign: TextAlign.center,
                          )),
                          MyLogo(
                            path: "assets/images/logo.png",
                            height: 40,
                            width: 40,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Row(
                            children: [
                              Text("0 : 0", style: AppTextStyle.titleMedium)
                            ],
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          MyLogo(
                            path: "assets/images/logo.png",
                            height: 40,
                            width: 40,
                          ),
                          Expanded(
                              child: Text(
                            "Union Sportive de Saint Galloise",
                            style: AppTextStyle.body,
                            textAlign: TextAlign.center,
                          )),
                        ],
                      ),
                    ),
                  ),
                ),
                background: Container(
                  decoration: BoxDecoration(
                      gradient: LinearGradient(colors: [
                    AppConstante.primaryBlue.withOpacity(0.4),
                    AppConstante.background2.withOpacity(0.4),
                    AppConstante.grenn2.withOpacity(0.4),
                    AppConstante.secondaryBlue.withOpacity(0.4)
                  ])),
                ),
                stretchModes: const [StretchMode.zoomBackground],
              ),
              bottom: const TabBar(
                isScrollable: true,
                tabs: [
                  Tab(text: 'GENERAL'),
                  Tab(text: 'HISTORIQUES'),
                  Tab(text: 'FACTS'),
                  Tab(text: 'AUTRES'),
                  Tab(text: 'PREDICTIONS'),
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
                  PredictionSection()
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
