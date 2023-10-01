import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:wikibet/components/logo_markers.dart';
import 'package:wikibet/components/match_page_sections/facts_section.dart';
import 'package:wikibet/components/match_page_sections/general_section.dart';
import 'package:wikibet/components/match_page_sections/historiques_section.dart';
import 'package:wikibet/components/match_page_sections/other_stats_section.dart';
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
              stretch: true,
              expandedHeight: Get.size.height * 0.2,
              flexibleSpace: FlexibleSpaceBar(
                expandedTitleScale: 1.1,
                centerTitle: true,
                title: Container(
                  margin:
                      const EdgeInsets.only(left: 20, right: 10, bottom: 40),
                  width: double.infinity,
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.start,
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
                background: Container(
                  decoration: BoxDecoration(color: AppConstante.background),
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
                  Container(
                    padding: EdgeInsets.all(AppConstante.DISTANCE / 2),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Container(
                              child: const Column(children: [
                                MyLogo(
                                  path: "assets/images/logo.png",
                                  height: 40,
                                  width: 40,
                                ),
                                Text("nklk"),
                              ]),
                            ),
                            Expanded(
                              child: Container(
                                margin: EdgeInsets.symmetric(
                                    horizontal: AppConstante.DISTANCE / 2),
                                child: Column(
                                  children: [
                                    LinearProgressIndicator(
                                      borderRadius: BorderRadius.circular(40),
                                      minHeight: AppConstante.DISTANCE / 2,
                                      value: 0.7,
                                    ),
                                    const Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceAround,
                                      children: [
                                        Text(
                                          "70%",
                                          style: AppTextStyle.body,
                                        ),
                                        Text(
                                          "30%",
                                          style: AppTextStyle.body,
                                        ),
                                      ],
                                    )
                                  ],
                                ),
                              ),
                            ),
                            Container(
                              child: const Column(children: [
                                MyLogo(
                                  path: "assets/images/logo.png",
                                  height: 40,
                                  width: 40,
                                ),
                                Text("nklk"),
                              ]),
                            )
                          ],
                        ),
                        const Text("nklk"),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
