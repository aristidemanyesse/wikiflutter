import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:wikibet/components/logo_markers.dart';
import 'package:wikibet/components/match_page_sections/facts_section.dart';
import 'package:wikibet/components/match_page_sections/general_section.dart';
import 'package:wikibet/components/match_page_sections/historiques_section.dart';
import 'package:wikibet/components/match_page_sections/other_stats_section.dart';
import 'package:wikibet/components/match_page_sections/prediction_section.dart';
import 'package:wikibet/tools/tools.dart';
import 'dart:math';

/// Flutter code sample for [NestedScrollView].

class MatchPage extends StatelessWidget {
  MatchPage({super.key});

  List<Widget> tabs = [
    const GeneralSection(),
    const HistoriquesSection(),
    const FactsSection(),
    const OtherStatsSection(),
    const PredictionSection()
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: tabs.length, // This is the number of tabs.
      child: Scaffold(
        body: NestedScrollView(
          headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
            // These are the slivers that show up in the "outer" scroll view.
            return <Widget>[
              SliverPersistentHeader(
                pinned: true,
                delegate: _SliverAppBarDelegate(),
              ),
              SliverOverlapAbsorber(
                handle:
                    NestedScrollView.sliverOverlapAbsorberHandleFor(context),
                sliver: SliverAppBar(
                  elevation: 3.0,
                  pinned: true,
                  automaticallyImplyLeading: false,
                  primary: false,
                  excludeHeaderSemantics: true,
                  scrolledUnderElevation: 3.0,
                  toolbarHeight: 50,
                  titleSpacing: 0,
                  title: Container(
                    decoration: BoxDecoration(
                        gradient: LinearGradient(colors: [
                      AppConstante.secondaryBlue.withOpacity(0.9),
                      AppConstante.primaryBlue.withOpacity(0.9),
                    ])),
                    child: const TabBar(
                      indicatorWeight: 4,
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
                ),
              ),
            ];
          },
          body: TabBarView(
            children: tabs.map((Widget widget) {
              return SafeArea(
                top: false,
                bottom: false,
                child: Builder(
                  builder: (BuildContext context) {
                    return CustomScrollView(
                      key: PageStorageKey<String>(widget.toString()),
                      slivers: <Widget>[
                        SliverOverlapInjector(
                          handle:
                              NestedScrollView.sliverOverlapAbsorberHandleFor(
                                  context),
                        ),
                        SliverPadding(
                          padding: const EdgeInsets.all(1.0),
                          sliver: SliverList(
                            delegate: SliverChildListDelegate(
                              [widget],
                            ),
                          ),
                        ),
                      ],
                    );
                  },
                ),
              );
            }).toList(),
          ),
        ),
      ),
    );
  }
}

class _SliverAppBarDelegate extends SliverPersistentHeaderDelegate {
  @override
  double get maxExtent => Get.size.height * 0.2;

  @override
  double get minExtent => 90.0;

  @override
  bool shouldRebuild(SliverPersistentHeaderDelegate oldDelegate) {
    return true;
  }

  double scrollAnimationValue(double shrinkOffset) {
    double maxScrollAllowed = maxExtent - minExtent;
    return ((maxScrollAllowed - shrinkOffset) / maxScrollAllowed)
        .clamp(0, 1)
        .toDouble();
  }

  @override
  Widget build(
    BuildContext context,
    double shrinkOffset,
    bool overlapsContent,
  ) {
    final double visibleMainHeight = max(maxExtent - shrinkOffset, minExtent);
    final double animationVal = scrollAnimationValue(shrinkOffset);
    return SizedBox(
      height: visibleMainHeight,
      width: MediaQuery.of(context).size.width,
      child: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          Container(
            color: Theme.of(context).primaryColor,
          ),
          Container(
            decoration: BoxDecoration(
                gradient: LinearGradient(colors: [
              AppConstante.secondaryBlue.withOpacity(0.9),
              AppConstante.primaryBlue.withOpacity(0.9),
            ])),
          ),
          SafeArea(
            child: Center(
              child: SizedBox(
                width: double.infinity,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Expanded(
                            child: Opacity(
                          opacity: animationVal,
                          child: const Text(
                            "Manchester United",
                            style: AppTextStyle.body,
                            textAlign: TextAlign.center,
                          ),
                        )),
                        MyLogo(
                          path: "assets/images/logo.png",
                          height: 35 + 5 * animationVal,
                          width: 35 + 5 * animationVal,
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        const Row(
                          children: [
                            Text("0 : 0", style: AppTextStyle.titleMedium)
                          ],
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        MyLogo(
                          path: "assets/images/logo.png",
                          height: 35 + 5 * animationVal,
                          width: 35 + 5 * animationVal,
                        ),
                        Expanded(
                            child: Opacity(
                          opacity: animationVal,
                          child: const Text(
                            "Union Sportive de Saint Galloise",
                            style: AppTextStyle.body,
                            textAlign: TextAlign.center,
                          ),
                        )),
                      ],
                    ),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "12 Decembre 2023 13:45",
                          style: AppTextStyle.bodysmall,
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
          // Positioned(
          //   bottom: 0.0,
          //   child: SizedBox(
          //     width: MediaQuery.of(context).size.width,
          //     child: Row(
          //       mainAxisSize: MainAxisSize.max,
          //       children: <Widget>[
          //         Expanded(
          //           flex: (animationVal * 100).toInt(),
          //           child: Container(),
          //         ),
          //         Text("Lorem Ipsum Dolar Sit"),
          //         Expanded(
          //           flex: 100,
          //           child: Container(),
          //         )
          //       ],
          //     ),
          //   ),
          // )
        ],
      ),
    );
  }
}
