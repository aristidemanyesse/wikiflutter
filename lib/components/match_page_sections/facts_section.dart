import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:wikibet/components/logo_markers.dart';
import 'package:wikibet/components/others_goals_stats_table_card.dart';
import 'package:wikibet/components/team_facts_card.dart';
import 'package:wikibet/controllers/MatchController.dart';
import 'package:wikibet/tools/tools.dart';
import 'package:wikibet/models/fixtureApp/match.dart';
import 'package:wikibet/models/fixtureApp/match.dart';

class FactsSection extends StatefulWidget {
  final Match match;
  const FactsSection({super.key, required this.match});

  @override
  _FactsSectionState createState() => _FactsSectionState();
}

class _FactsSectionState extends State<FactsSection> {
  _FactsSectionState();

  MatchController controller = Get.find();

  int _selectedTabIndex = 0;
  final PageController _pageController = PageController(initialPage: 0);

  void _onTabSelected(int index) {
    setState(() {
      _selectedTabIndex = index;
      _pageController.animateToPage(
        index,
        duration: const Duration(milliseconds: 300),
        curve: Curves.ease,
      );
    });
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Row(
            children: [
              const Expanded(
                  child: Divider(
                height: 1,
              )),
              SizedBox(
                width: AppConstante.PADDING * 2,
              ),
              Container(
                margin:
                    EdgeInsets.symmetric(vertical: AppConstante.PADDING / 2),
                child: Text("Bon à savoir",
                    style: AppTextStyle.titleLarge
                        .copyWith(fontStyle: FontStyle.italic)),
              ),
              SizedBox(
                width: AppConstante.PADDING * 2,
              ),
              const Expanded(
                  child: Divider(
                height: 1,
              )),
            ],
          ),
          SizedBox(height: AppConstante.PADDING / 2),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(width: AppConstante.PADDING),
              Expanded(
                child: ElevatedButton(
                  onPressed: () => _onTabSelected(0),
                  style: _selectedTabIndex == 0
                      ? ElevatedButton.styleFrom(
                          backgroundColor: AppConstante.primaryBlue,
                          elevation: 0,
                        )
                      : ElevatedButton.styleFrom(
                          elevation: 0,
                          backgroundColor:
                              Theme.of(context).scaffoldBackgroundColor),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      MyLogo(
                        path: widget.match.home!.team!.logo,
                        height: 25,
                        width: 25,
                      ),
                      Text(
                        "${widget.match.home!.team!.name}",
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(width: AppConstante.PADDING * 2),
              Expanded(
                child: ElevatedButton(
                  onPressed: () => _onTabSelected(1),
                  style: _selectedTabIndex == 1
                      ? ElevatedButton.styleFrom(
                          elevation: 0, backgroundColor: AppConstante.grenn1)
                      : ElevatedButton.styleFrom(
                          elevation: 0,
                          backgroundColor:
                              Theme.of(context).scaffoldBackgroundColor),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        "${widget.match.away!.team!.name}",
                      ),
                      MyLogo(
                        path: widget.match.away!.team!.logo,
                        height: 25,
                        width: 25,
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(width: AppConstante.PADDING),
            ],
          ),
          Container(
            constraints: BoxConstraints(maxHeight: Get.size.height * 0.3),
            child: PageView(
              physics: const NeverScrollableScrollPhysics(),
              controller: _pageController,
              onPageChanged: (index) {
                setState(() {
                  _selectedTabIndex = index;
                });
              },
              children: [
                TeamFactsCard(
                  match: widget.match,
                  team: widget.match.home!,
                  facts: controller.homeFacts.value,
                ),
                TeamFactsCard(
                  match: widget.match,
                  team: widget.match.away!,
                  facts: controller.awayFacts.value,
                ),
              ],
            ),
          ),
          SizedBox(
            height: AppConstante.PADDING,
          ),
        ],
      ),
    );
  }
}
