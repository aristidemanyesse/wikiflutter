import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:wikibet/components/ligne_match.dart';
import 'package:wikibet/components/logo_markers.dart';
import 'package:wikibet/controllers/MatchController.dart';
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
        Container(
          constraints: BoxConstraints(maxHeight: Get.size.height * 0.6),
          child: Column(
            children: [
              Container(
                child: Column(
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Tête à tête",
                            style: AppTextStyle.titleLarge
                                .copyWith(fontStyle: FontStyle.italic)),
                        SizedBox(height: AppConstante.PADDING / 2),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Expanded(
                                child: Divider(
                              height: 1,
                            )),
                            SizedBox(
                              width: AppConstante.PADDING * 2,
                            ),
                            Container(
                              child: Column(children: [
                                Text("3",
                                    style: AppTextStyle.titleLarge
                                        .copyWith(fontStyle: FontStyle.italic)),
                                Text("${home.team?.name}",
                                    style: AppTextStyle.bodysmallgras
                                        .copyWith(fontStyle: FontStyle.italic)),
                              ]),
                            ),
                            SizedBox(
                              width: AppConstante.PADDING * 2,
                            ),
                            Container(
                              child: Column(children: [
                                Text("3",
                                    style: AppTextStyle.titleLarge
                                        .copyWith(fontStyle: FontStyle.italic)),
                                Text("Nuls",
                                    style: AppTextStyle.bodysmallgras
                                        .copyWith(fontStyle: FontStyle.italic)),
                              ]),
                            ),
                            SizedBox(
                              width: AppConstante.PADDING * 2,
                            ),
                            Container(
                              child: Column(children: [
                                Text("3",
                                    style: AppTextStyle.titleLarge
                                        .copyWith(fontStyle: FontStyle.italic)),
                                Text("${away.team?.name}",
                                    style: AppTextStyle.bodysmallgras
                                        .copyWith(fontStyle: FontStyle.italic)),
                              ]),
                            ),
                            SizedBox(
                              width: AppConstante.PADDING * 2,
                            ),
                            const Expanded(
                                child: Divider(
                              height: 1,
                            )),
                          ],
                        )
                      ],
                    ),
                    SizedBox(height: AppConstante.PADDING / 2),
                    Container(
                      child: Column(
                          children: controller.B2BLastMatchs.value
                              .map((match) => LigneMatch(
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
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () => _onTabSelected(0),
              style: _selectedTabIndex == 0
                  ? ElevatedButton.styleFrom(
                      backgroundColor: AppConstante.primaryBlue)
                  : ElevatedButton.styleFrom(
                      backgroundColor:
                          Theme.of(context).scaffoldBackgroundColor),
              child: Container(
                padding: EdgeInsets.all(AppConstante.PADDING / 4),
                child: MyLogo(
                  path: home.team!.logo,
                  height: 30,
                  width: 30,
                ),
              ),
            ),
            SizedBox(width: AppConstante.PADDING * 2),
            ElevatedButton(
              onPressed: () => _onTabSelected(1),
              style: _selectedTabIndex == 1
                  ? ElevatedButton.styleFrom(
                      backgroundColor: AppConstante.grenn1)
                  : ElevatedButton.styleFrom(
                      backgroundColor:
                          Theme.of(context).scaffoldBackgroundColor),
              child: Container(
                padding: EdgeInsets.all(AppConstante.PADDING / 4),
                child: MyLogo(
                  path: away.team!.logo,
                  height: 30,
                  width: 30,
                ),
              ),
            ),
          ],
        ),
        SizedBox(height: AppConstante.PADDING),
        Container(
          constraints: BoxConstraints(maxHeight: Get.size.height * 0.6),
          child: PageView(
            physics: const NeverScrollableScrollPhysics(),
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
                            "${controller.homeLastMatchs.value.length} derniers matchs de ${home.team?.name}",
                            style: AppTextStyle.titleMedium
                                .copyWith(fontStyle: FontStyle.italic)),
                        SizedBox(height: AppConstante.PADDING / 2),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Expanded(
                                child: Divider(
                              height: 1,
                            )),
                            SizedBox(
                              width: AppConstante.PADDING * 2,
                            ),
                            Container(
                              child: Column(children: [
                                Text("3",
                                    style: AppTextStyle.titleLarge
                                        .copyWith(fontStyle: FontStyle.italic)),
                                Text("victoires",
                                    style: AppTextStyle.bodysmallgras
                                        .copyWith(fontStyle: FontStyle.italic)),
                              ]),
                            ),
                            SizedBox(
                              width: AppConstante.PADDING * 2,
                            ),
                            Container(
                              child: Column(children: [
                                Text("3",
                                    style: AppTextStyle.titleLarge
                                        .copyWith(fontStyle: FontStyle.italic)),
                                Text("Nuls",
                                    style: AppTextStyle.bodysmallgras
                                        .copyWith(fontStyle: FontStyle.italic)),
                              ]),
                            ),
                            SizedBox(
                              width: AppConstante.PADDING * 2,
                            ),
                            Container(
                              child: Column(children: [
                                Text("3",
                                    style: AppTextStyle.titleLarge
                                        .copyWith(fontStyle: FontStyle.italic)),
                                Text("Défaites",
                                    style: AppTextStyle.bodysmallgras
                                        .copyWith(fontStyle: FontStyle.italic)),
                              ]),
                            ),
                            SizedBox(
                              width: AppConstante.PADDING * 2,
                            ),
                            const Expanded(
                                child: Divider(
                              height: 1,
                            )),
                          ],
                        )
                      ],
                    ),
                    SizedBox(height: AppConstante.PADDING / 2),
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
                  ],
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
                            "${controller.awayLastMatchs.value.length} derniers matchs de ${away.team?.name}",
                            style: AppTextStyle.titleMedium
                                .copyWith(fontStyle: FontStyle.italic)),
                        SizedBox(height: AppConstante.PADDING / 2),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Expanded(
                                child: Divider(
                              height: 1,
                            )),
                            SizedBox(
                              width: AppConstante.PADDING * 2,
                            ),
                            Container(
                              child: Column(children: [
                                Text("3",
                                    style: AppTextStyle.titleLarge
                                        .copyWith(fontStyle: FontStyle.italic)),
                                Text("victoires",
                                    style: AppTextStyle.bodysmallgras
                                        .copyWith(fontStyle: FontStyle.italic)),
                              ]),
                            ),
                            SizedBox(
                              width: AppConstante.PADDING * 2,
                            ),
                            Container(
                              child: Column(children: [
                                Text("3",
                                    style: AppTextStyle.titleLarge
                                        .copyWith(fontStyle: FontStyle.italic)),
                                Text("Nuls",
                                    style: AppTextStyle.bodysmallgras
                                        .copyWith(fontStyle: FontStyle.italic)),
                              ]),
                            ),
                            SizedBox(
                              width: AppConstante.PADDING * 2,
                            ),
                            Container(
                              child: Column(children: [
                                Text("3",
                                    style: AppTextStyle.titleLarge
                                        .copyWith(fontStyle: FontStyle.italic)),
                                Text("Défaites",
                                    style: AppTextStyle.bodysmallgras
                                        .copyWith(fontStyle: FontStyle.italic)),
                              ]),
                            ),
                            SizedBox(
                              width: AppConstante.PADDING * 2,
                            ),
                            const Expanded(
                                child: Divider(
                              height: 1,
                            )),
                          ],
                        )
                      ],
                    ),
                    SizedBox(height: AppConstante.PADDING / 2),
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
