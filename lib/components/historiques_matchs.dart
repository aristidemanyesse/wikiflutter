import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:wikibet/components/ligne_match.dart';
import 'package:wikibet/components/logo_markers.dart';
import 'package:wikibet/controllers/MatchController.dart';
import 'package:wikibet/core/apiservice.dart';
import 'package:wikibet/models/teamApp/editionTeam.dart';
import 'package:wikibet/tools/tools.dart';

class HistoriquesMatchs extends StatefulWidget {
  const HistoriquesMatchs({super.key});

  @override
  _HistoriquesMatchsState createState() => _HistoriquesMatchsState();
}

class _HistoriquesMatchsState extends State<HistoriquesMatchs> {
  _HistoriquesMatchsState();

  int _selectedTabIndex = 0;
  final PageController _pageController = PageController(initialPage: 0);

  MatchController controller = Get.find();

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
    EditionTeam home = controller.matchSelected.value.home!;
    EditionTeam away = controller.matchSelected.value.away!;

    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            ElevatedButton(
              onPressed: () => _onTabSelected(0),
              style: _selectedTabIndex == 0
                  ? ElevatedButton.styleFrom(
                      backgroundColor: AppConstante.primaryBlue)
                  : ElevatedButton.styleFrom(
                      backgroundColor:
                          Theme.of(context).scaffoldBackgroundColor),
              child: MyLogo(
                path: home.team!.logo,
                height: 45,
                width: 45,
              ),
            ),
            const SizedBox(height: 10.0),
            ClipRRect(
              borderRadius: BorderRadius.circular(30),
              child: Container(
                height: AppConstante.PADDING * 2,
                decoration: BoxDecoration(
                    gradient: LinearGradient(colors: [
                  AppConstante.primaryBlue,
                  AppConstante.grenn1
                ])),
                child: ElevatedButton(
                  onPressed: () => _onTabSelected(1),
                  style: _selectedTabIndex == 1
                      ? ElevatedButton.styleFrom(
                          elevation: 5.0,
                          backgroundColor: Colors.transparent,
                          padding: EdgeInsets.symmetric(
                              horizontal: AppConstante.PADDING / 2,
                              vertical: AppConstante.PADDING / 2),
                        )
                      : ElevatedButton.styleFrom(
                          padding: EdgeInsets.symmetric(
                              horizontal: AppConstante.PADDING / 2,
                              vertical: AppConstante.PADDING / 2),
                          backgroundColor: Theme.of(context)
                              .scaffoldBackgroundColor
                              .withOpacity(0.9)),
                  child: const Row(
                    children: [
                      Text(
                        'H2H',
                        style: AppTextStyle.titleMedium,
                      ),
                    ],
                  ),
                ),
              ),
            ),
            const SizedBox(height: 10.0),
            ElevatedButton(
              onPressed: () => _onTabSelected(2),
              style: _selectedTabIndex == 2
                  ? ElevatedButton.styleFrom(
                      backgroundColor: AppConstante.grenn1)
                  : ElevatedButton.styleFrom(
                      backgroundColor:
                          Theme.of(context).scaffoldBackgroundColor),
              child: MyLogo(
                path: away.team!.logo,
                height: 45,
                width: 45,
              ),
            ),
          ],
        ),
        SizedBox(height: AppConstante.PADDING / 2),
        Container(
          constraints: BoxConstraints(maxHeight: Get.size.height * 0.7),
          child: PageView(
            controller: _pageController,
            onPageChanged: (index) {
              setState(() {
                _selectedTabIndex = index;
              });
            },
            children: [
              // Content for Tab 1
              Container(
                child: Column(
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                            "${controller.homeLastMatchs.value.length} derniers matchs de ",
                            style: AppTextStyle.titleSmall),
                        Text("${home.team?.name}",
                            style: AppTextStyle.bodygras),
                      ],
                    ),
                    const Divider(
                      height: 1,
                    ),
                    SizedBox(height: AppConstante.PADDING / 2),
                    Container(
                      child: Column(
                          children: controller.homeLastMatchs.value
                              .map((match) => LigneMatch(
                                    team: controller.matchSelected.value.home!,
                                    match: match,
                                  ))
                              .toList()),
                    ),
                    GridView(
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 3,
                        mainAxisSpacing: 2,
                      ),
                      scrollDirection: Axis.vertical,
                      children: [
                        Container(height: 10, width: 10, color: Colors.red), //1
                        Container(
                            height: 10, width: 10, color: Colors.blue), //2
                        Container(height: 10, width: 10, color: Colors.red), //3
                        Container(
                            height: 10, width: 10, color: Colors.blue), //4
                        Container(height: 10, width: 10, color: Colors.red), //5
                        Container(
                            height: 10, width: 10, color: Colors.blue), //6
                        Container(height: 10, width: 10, color: Colors.red), //7
                        Container(
                            height: 10, width: 10, color: Colors.blue), //8
                        Container(height: 10, width: 10, color: Colors.red), //9
                      ],
                    )
                  ],
                ),
              ),
              // Content for Tab 2
              Container(
                child: MyLogo(
                  path: home.team!.logo,
                  height: 40,
                  width: 40,
                ),
              ),
              // Content for Tab 3
              Container(
                child: Column(
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                            "${controller.awayLastMatchs.value.length} derniers matchs de ",
                            style: AppTextStyle.titleSmall),
                        Text("${away.team?.name}",
                            style: AppTextStyle.bodygras),
                      ],
                    ),
                    const Divider(
                      height: 1,
                    ),
                    SizedBox(height: AppConstante.PADDING / 2),
                    Container(
                      child: Column(
                          children: controller.awayLastMatchs.value
                              .map((match) => LigneMatch(
                                    team: controller.matchSelected.value.away!,
                                    match: match,
                                  ))
                              .toList()),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
