import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:wikibet/components/league_page_sections/facts_section.dart';
import 'package:wikibet/components/league_page_sections/general_section.dart';
import 'package:wikibet/components/league_page_sections/historiques_section.dart';
import 'package:wikibet/components/league_page_sections/other_stats_section.dart';
import 'package:wikibet/components/logo_markers.dart';
import 'package:wikibet/controllers/LeagueController.dart';
import 'package:wikibet/tools/tools.dart';

class LeaguePage extends StatefulWidget {
  const LeaguePage({super.key});

  @override
  State<LeaguePage> createState() => _LeaguePageState();
}

class _LeaguePageState extends State<LeaguePage> {
  final ScrollController _scrollController = ScrollController();

  LeagueController controller = Get.find();

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
                      path: controller.competitionSelected.value.logo,
                      height: 40,
                      width: 40,
                    ),
                    SizedBox(
                      width: AppConstante.PADDING / 2,
                    ),
                    Container(
                        child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          controller.competitionSelected.value.name,
                          style: AppTextStyle.titleMedium,
                          textAlign: TextAlign.center,
                        ),
                        SizedBox(
                          height: AppConstante.PADDING / 4,
                        ),
                        Text(
                          "${controller.editionSelected.value.edition?.name}",
                          style: AppTextStyle.body,
                          textAlign: TextAlign.center,
                        ),
                        DropdownButton<String>(
                          items:
                              <String>['A', 'B', 'C', 'D'].map((String value) {
                            return DropdownMenuItem<String>(
                              value: value,
                              child: Text(value),
                            );
                          }).toList(),
                          onChanged: (_) {},
                        )
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
            const SliverFillRemaining(
              child: TabBarView(
                children: [
                  GeneralSection(),
                  HistoriquesSection(),
                  FactsSection(),
                  OtherStatsSection(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
