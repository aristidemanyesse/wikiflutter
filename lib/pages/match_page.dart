import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:line_icons/line_icons.dart';
import 'package:wikibet/components/logo_markers.dart';
import 'package:wikibet/components/match_page_sections/facts_section.dart';
import 'package:wikibet/components/match_page_sections/general_section.dart';
import 'package:wikibet/components/match_page_sections/historiques_section.dart';
import 'package:wikibet/components/match_page_sections/other_stats_section.dart';
import 'package:wikibet/components/match_page_sections/prediction_section.dart';
import 'package:wikibet/components/match_page_sections/resume_section.dart';
import 'package:wikibet/models/competitionApp/typeCompetition.dart';
import 'package:wikibet/models/statsApp/resultMatch.dart';
import 'package:wikibet/tools/tools.dart';
import 'dart:math';
import 'package:wikibet/models/fixtureApp/match.dart';
import "package:intl/intl.dart";
import 'package:intl/date_symbol_data_local.dart';

/// Flutter code sample for [NestedScrollView].

class MatchPage extends StatelessWidget {
  final Match match;

  const MatchPage({super.key, required this.match});

  @override
  Widget build(BuildContext context) {
    return PageView(
      scrollDirection: Axis.horizontal,
      children: [
        DefaultTabController(
          length: match.isFinished ? 5 : 4, // This is the number of tabs.
          child: Scaffold(
            body: NestedScrollView(
              headerSliverBuilder:
                  (BuildContext context, bool innerBoxIsScrolled) {
                // These are the slivers that show up in the "outer" scroll view.
                return <Widget>[
                  SliverPersistentHeader(
                    pinned: true,
                    delegate: _SliverAppBarDelegate(match),
                  ),
                  SliverOverlapAbsorber(
                    handle: NestedScrollView.sliverOverlapAbsorberHandleFor(
                        context),
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
                        child: TabBar(
                          indicatorWeight: 4,
                          isScrollable: true,
                          tabs: [
                            if (match.isFinished) const Tab(text: 'RESUME'),
                            const Tab(text: 'GENERAL'),
                            const Tab(text: 'HISTORIQUES'),
                            const Tab(text: 'AUTRES'),
                            const Tab(text: 'PREDICTIONS'),
                          ],
                        ),
                      ),
                    ),
                  ),
                ];
              },
              body: TabBarView(
                physics: const NeverScrollableScrollPhysics(),
                children: [
                  if (match.isFinished)
                    ResumeSection(
                      match: match,
                    ),
                  GeneralSection(match: match),
                  const HistoriquesSection(),
                  OtherStatsSection(
                    match: match,
                  ),
                  const PredictionSection()
                ].map((Widget widget) {
                  return SafeArea(
                    top: false,
                    bottom: false,
                    child: Builder(
                      builder: (BuildContext context) {
                        return CustomScrollView(
                          key: PageStorageKey<String>(widget.toString()),
                          slivers: <Widget>[
                            SliverOverlapInjector(
                              handle: NestedScrollView
                                  .sliverOverlapAbsorberHandleFor(context),
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
        ),
      ],
    );
  }
}

class _SliverAppBarDelegate extends SliverPersistentHeaderDelegate {
  final Match match;
  _SliverAppBarDelegate(this.match);

  ResultMatch result = const ResultMatch();

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

    if (match.resultMatch!.isNotEmpty) {
      result = match.resultMatch!.first;
    }

    return SizedBox(
      height: visibleMainHeight,
      width: MediaQuery.of(context).size.width,
      child: Stack(
        children: <Widget>[
          Container(
            child: SizedBox(
              height: 200,
              child: Stack(
                fit: StackFit.expand,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      MyLogo(
                        path: match.home!.team!.logo,
                        height: 150,
                        width: 200,
                      ),
                      MyLogo(
                        path: match.away!.team!.logo,
                        height: 150,
                        width: 200,
                      ),
                    ],
                  ),
                  ClipRRect(
                    // Clip it cleanly.
                    child: BackdropFilter(
                      filter: ImageFilter.blur(sigmaX: 50, sigmaY: 50),
                      child: Container(
                        color: Colors.grey.withOpacity(0.1),
                        alignment: Alignment.center,
                      ),
                    ),
                  ),
                ],
              ),
            ),
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
                                  path: match.home!.team!.logo,
                                  height: 45 + 5 * animationVal,
                                  width: 45 + 5 * animationVal,
                                ),
                                animationVal > 0.55
                                    ? Column(
                                        children: [
                                          SizedBox(
                                            height: AppConstante.PADDING / 2,
                                          ),
                                          Opacity(
                                            opacity: animationVal,
                                            child: Text(
                                              "${match.home?.team?.name}",
                                              style: AppTextStyle.bodygras,
                                              textAlign: TextAlign.center,
                                            ),
                                          ),
                                        ],
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
                                  ? Column(
                                      children: [
                                        Text(
                                          "${result.homeScore} : ${result.awayScore}",
                                          style: AppTextStyle.titleLarge,
                                        ),
                                        match.edition?.competition?.type
                                                    ?.etiquette ==
                                                TypeCompetition.FULL
                                            ? Text(
                                                "${result.homeHalfScore} : ${result.awayHalfScore}",
                                                style: AppTextStyle.bodysmall,
                                              )
                                            : Container(),
                                      ],
                                    )
                                  : Text("Vs",
                                      style: AppTextStyle.titleLarge
                                          .copyWith(color: Colors.white)),
                              animationVal > 0.55
                                  ? Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        SizedBox(
                                          height: AppConstante.PADDING / 2,
                                        ),
                                        Text(
                                            dateFormat.format(DateTime.parse(
                                                match.date ?? "")),
                                            style: AppTextStyle.bodysmall),
                                        SizedBox(
                                          width: AppConstante.PADDING,
                                        ),
                                        Text(
                                          timeFormat.format(DateTime.parse(
                                              match.date + " " + match.hour ??
                                                  "")),
                                          style: AppTextStyle.bodysmall,
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
                                  path: match.away!.team!.logo,
                                  height: 45 + 5 * animationVal,
                                  width: 45 + 5 * animationVal,
                                ),
                                animationVal > 0.55
                                    ? Column(
                                        children: [
                                          SizedBox(
                                            height: AppConstante.PADDING / 2,
                                          ),
                                          Opacity(
                                            opacity: animationVal,
                                            child: Text(
                                              "${match.away?.team?.name}",
                                              style: AppTextStyle.bodygras,
                                              textAlign: TextAlign.center,
                                            ),
                                          ),
                                        ],
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
