import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:wikibet/components/ligne_match.dart';
import 'package:wikibet/components/logo_markers.dart';
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
              child: const MyLogo(
                path: "assets/images/logo.png",
                height: 45,
                width: 45,
              ),
            ),
            const SizedBox(height: 10.0),
            ClipRRect(
              borderRadius: BorderRadius.circular(30),
              child: Container(
                height: AppConstante.DISTANCE * 2,
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
                              horizontal: AppConstante.DISTANCE / 2,
                              vertical: AppConstante.DISTANCE / 2),
                        )
                      : ElevatedButton.styleFrom(
                          padding: EdgeInsets.symmetric(
                              horizontal: AppConstante.DISTANCE / 2,
                              vertical: AppConstante.DISTANCE / 2),
                          backgroundColor: Theme.of(context)
                              .scaffoldBackgroundColor
                              .withOpacity(0.9)),
                  child: const Row(
                    children: [
                      MyLogo(
                        path: "assets/images/logo.png",
                        height: 40,
                        width: 40,
                      ),
                      Text(
                        'Vs',
                        style: AppTextStyle.titleMedium,
                      ),
                      MyLogo(
                        path: "assets/images/logo.png",
                        height: 40,
                        width: 40,
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
              child: const MyLogo(
                path: "assets/images/logo.png",
                height: 45,
                width: 45,
              ),
            ),
          ],
        ),
        SizedBox(height: AppConstante.DISTANCE / 2),
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
                    const Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("10 derniers matchs de ",
                            style: AppTextStyle.titleSmall),
                        Text("Union Sportive de Saint Galloise",
                            style: AppTextStyle.bodygras),
                      ],
                    ),
                    const Divider(
                      height: 1,
                    ),
                    SizedBox(height: AppConstante.DISTANCE / 2),
                    Container(
                      child: const Column(
                        children: [
                          LigneMatch(),
                          LigneMatch(),
                          LigneMatch(),
                          LigneMatch(),
                          LigneMatch(),
                          LigneMatch(),
                          LigneMatch(),
                          LigneMatch(),
                          LigneMatch(),
                          LigneMatch(),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              // Content for Tab 2
              Container(
                child: const MyLogo(
                  path: "assets/images/logo.png",
                  height: 40,
                  width: 40,
                ),
              ),
              // Content for Tab 3
              Container(
                child: const MyLogo(
                  path: "assets/images/logo.png",
                  height: 40,
                  width: 40,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
