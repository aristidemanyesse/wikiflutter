import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:line_icons/line_icons.dart';
import 'package:wikibet/components/logo_markers.dart';
import 'package:wikibet/components/match_page_sections/facts_section.dart';
import 'package:wikibet/components/match_page_sections/general_section.dart';
import 'package:wikibet/components/match_page_sections/historiques_section.dart';
import 'package:wikibet/components/match_page_sections/other_stats_section.dart';
import 'package:wikibet/components/match_page_sections/prediction_section.dart';
import 'package:wikibet/core/apiservice.dart';
import 'package:wikibet/tools/tools.dart';
import 'dart:math';
import 'package:wikibet/models/fixtureApp/match.dart';
import "package:intl/intl.dart";
import 'package:intl/date_symbol_data_local.dart';

/// Flutter code sample for [NestedScrollView].

class MatchPage extends StatelessWidget {
  final Match match;

  MatchPage({super.key, required this.match});

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
                delegate: _SliverAppBarDelegate(match),
              ),
              SliverOverlapAbsorber(
                handle:
                    NestedScrollView.sliverOverlapAbsorberHandleFor(context),
                sliver: SliverAppBar(
                  elevation: 3.0,
                  pinned: true,
                  automaticallyImplyLeading: false,
                  primary: false,
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
  final Match match;
  const _SliverAppBarDelegate(this.match);

  @override
  double get maxExtent => Get.size.height * 0.2;

  @override
  double get minExtent => 95.0;

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

    initializeDateFormatting();
    DateFormat dateFormat = DateFormat.yMMMMd('fr');
    DateFormat timeFormat = DateFormat.Hm('fr');

    return SizedBox(
      height: visibleMainHeight,
      width: MediaQuery.of(context).size.width,
      child: Stack(
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
                      children: [
                        Expanded(
                          flex: ((1 - animationVal) * 700).toInt(),
                          child: Container(),
                        ),
                        Expanded(
                            flex: 300,
                            child: Column(
                              children: [
                                MyLogo(
                                  path:
                                      "${ApiService.BASE_URL + match.home!.team!.logo}",
                                  height: 50 + 5 * animationVal,
                                  width: 50 + 5 * animationVal,
                                ),
                                animationVal > 0.55
                                    ? Opacity(
                                        opacity: animationVal / 2,
                                        child: Text(
                                          "${match.home?.team?.name}",
                                          style: AppTextStyle.bodygras
                                              .copyWith(color: Colors.white),
                                          textAlign: TextAlign.center,
                                        ),
                                      )
                                    : Container(),
                              ],
                            )),
                        Expanded(
                          flex: 400,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              match.isFinished
                                  ? Text("0 : 0",
                                      style: AppTextStyle.titleMedium
                                          .copyWith(color: Colors.white))
                                  : Text("Vs",
                                      style: AppTextStyle.titleLarge
                                          .copyWith(color: Colors.white)),
                              animationVal > 0.55
                                  ? Column(
                                      children: [
                                        SizedBox(
                                          height: AppConstante.PADDING / 3,
                                        ),
                                        Text(
                                            "${dateFormat.format(DateTime.parse(match.date ?? ""))}",
                                            style: AppTextStyle.body),
                                        Text(
                                          "${timeFormat.format(DateTime.parse(match.date + " " + match.hour ?? ""))}",
                                          style: AppTextStyle.body,
                                        )
                                      ],
                                    )
                                  : Container(),
                            ],
                          ),
                        ),
                        Expanded(
                            flex: 300,
                            child: Column(
                              children: [
                                MyLogo(
                                  path:
                                      "${ApiService.BASE_URL + match.away!.team!.logo}",
                                  height: 50 + 5 * animationVal,
                                  width: 50 + 5 * animationVal,
                                ),
                                animationVal > 0.55
                                    ? Opacity(
                                        opacity: animationVal / 2,
                                        child: Text(
                                          "${match.away?.team?.name}",
                                          style: AppTextStyle.bodygras
                                              .copyWith(color: Colors.white),
                                          textAlign: TextAlign.center,
                                        ),
                                      )
                                    : Container(),
                              ],
                            )),
                        Expanded(
                          flex: ((1 - animationVal) * 700).toInt(),
                          child: Container(),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
          Positioned(
            top: AppConstante.PADDING * 2 / 3,
            left: AppConstante.PADDING / 2,
            child: SafeArea(
              child: Row(
                children: [
                  InkWell(
                      onTap: () {
                        Get.back();
                      },
                      child: Container(child: const Icon(LineIcons.arrowLeft))),
                ],
              ),
            ),
          )
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
